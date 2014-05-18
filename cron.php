<?php
/**
 * A Daily cron to index data from normalised tables into flat denormalised table
 */
require 'autoload.php';
$Report = new Report();
//populate search flat table
$Report->runCron();