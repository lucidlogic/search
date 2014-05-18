<?php

/**
 * Class Report
 */
final class Report
{
    private $_db;

    public $statement;

    /**
     * Constructor Method
     */
    public function __construct()
    {
        $this->_db = new Database();
    }

    /**
     *
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
        $dateSql = '';
        if($reportDate ){
            $dateSql = " WHERE date_added = '". $reportDate."'";
        }
        $sql = "SELECT
                    phrase,
                    num_clicks as total_clicks,
                    date_added
                FROM search_flat
                $dateSql
                GROUP BY phrase HAVING total_clicks = 0 ";
        return $this->fetchResults($sql);
    }

    /**
     * search phrases with high clicks and low revenue per search
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
        echo $sql;
        return $this->fetchResults($sql);
    }

    /**
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
}
