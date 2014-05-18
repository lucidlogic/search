<?php

/**
 * Class Report handles storage and display of reports data from a flat table
 *
 */
final class Report
{
    private $_db;
    public  $statement;

    /**
     * Constructor Method
     */
    public function __construct()
    {
        $this->_db = new Database();
    }

    /**
     * Index into flat table
     */
    public function runCron()
    {
        $sql  = "INSERT INTO search_flat (phrase, num_searches, num_clicks, revenue, num_orders, date_added)
			        SELECT
                        LOWER(search.phrase),
                        count(distinct search.id) as num_searches,
                        count(distinct search_click.id) as num_clicks,
                        sum(order_items.price * order_items.qty) as revenue,
                        count(distinct order_items.id) as num_orders,
                        '".date('Y-m-d')."'
                    FROM search
                    LEFT JOIN search_click on (search.id = search_click.search_id)
                    LEFT JOIN order_items on (search.`php_session_id` = order_items.php_session_id)
                    GROUP BY search.phrase";
        $this->statement = $this->_db->prepare($sql);
        $this->statement->execute();
    }

    /**
     * Popular search phrases with no clicks
     *
     * @param bool $dateRange
     *
     * @return array
     */
    public function popNoClicks($reportDate = false)
    {
        $dateSql = " WHERE date_added =  ";
        if($reportDate ){
            $dateSql .= " '". $reportDate."'";
        } else {
            $dateSql .= " '". date('Y-m-d')."'";
        }
        $sql = "SELECT
                    phrase,
                    num_clicks as total_clicks,
                    num_searches,
                    date_added
                FROM search_flat
                $dateSql
                GROUP BY phrase HAVING total_clicks = 0
                ORDER BY num_searches DESC";
        return $this->fetchResults($sql);
    }

    /**
     * Search phrases with high clicks and low revenue per search
     *
     * @param bool $reportDate
     *
     * @return array
     */
    public function highClicksLowRev($reportDate = false)
    {
        $dateSql = " WHERE date_added =  ";
        if($reportDate ){
            $dateSql .= " '". $reportDate."'";
        } else {
            $dateSql .= " '". date('Y-m-d')."'";
        }
        $sql = "SELECT
                    phrase,
                    ROUND(revenue/num_searches)  as revenue_per_search,
                    num_clicks,
                    (num_clicks*num_searches)/revenue as clicks_per_search_revenue,
                    date_added
                FROM search_flat
                $dateSql
                GROUP BY phrase  ORDER BY clicks_per_search_revenue DESC";
        return $this->fetchResults($sql);
    }

    /**
     * Fetch data using PDO object
     * @param $sql
     *
     * @return array
     */
    private function fetchResults($sql)
    {
        $this->statement = $this->_db->prepare($sql);
        $this->statement->execute();

        return $this->statement;
    }

    /**
     * Build csv export for both reports
     * @return string
     */
    public function exportCsv()
    {
        $csv = 'Phrase,Number of Searches,Clicks,Date' . PHP_EOL;
        $this->popNoClicks();
        while($row = $this->statement->fetch()){
            $csv .= $row['phrase'].',';
            $csv .= $row['num_searches'].',';
            $csv .= $row['total_clicks'].',';
            $csv .= $row['date_added'];
            $csv .= PHP_EOL;
        }
        $csv .= 'Phrase,Revenue per Search,Clicks,Date' . PHP_EOL;
        $this->highClicksLowRev();
        while($row = $this->statement->fetch()){
            $csv .= $row['phrase'].',';
            $csv .= $row['revenue_per_search'].',';
            $csv .= $row['num_clicks'].',';
            $csv .= $row['date_added'];
            $csv .= PHP_EOL;
        }
        return $csv;
    }
}
