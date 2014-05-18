<?php
require 'autoload.php';

$Report = new Report();

//populate search flat table
$Report->runCron();

