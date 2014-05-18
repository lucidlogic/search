<?php
require 'autoload.php';

$Report = new Report();

//Report 1
$reportDate = '2014-05-18';
echo "<p>popular search phrases with no clicks (all data until  $reportDate)</p> ";

$Report->popNoClicks($reportDate);
while($row = $Report->statement->fetch()) {
    echo $row['phrase']." - ".$row['total_clicks']."<br>";
}


//Report 2
echo "<p>search phrases with high clicks and low revenue per search (all data until  $reportDate)</p>";
$Report->highClicksLowRev($reportDate);
while($row = $Report->statement->fetch()) {
    echo $row['phrase']."- Revenue Per Search: ".$row['revenue_per_search']." - Clicks: ".$row['num_clicks']." - ".$row['clicks_per_search_revenue']."<br>";
}