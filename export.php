<?php
/**
 * Export Reports to CSV
 */
require 'autoload.php';
$Report = new Report();
@header("Content-type: text/x-csv");

if (!isset($_SERVER['HTTP_X_REQUESTED_WITH']) || strtolower($_SERVER['HTTP_X_REQUESTED_WITH']) != 'xmlhttprequest') {
    header("Content-Disposition: attachment; filename=search_report.csv");
}

echo $Report->exportCsv();