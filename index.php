<?php
require 'autoload.php';
$Report = new Report();
?>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Yuppie Chef Technical Assessment">
    <meta name="author" content="Gareth Edwards">
    <title>Yuppie Chef Technical Assessment</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/reports.min.css" rel="stylesheet">
</head>
<body>
<div class="navbar navbar-inverse navbar-fixed-top" role="navigation">
    <div class="container">
        <div class="navbar-header">
            <a class="navbar-brand" href="#">Search Reports</a>
        </div>
        <div class="collapse navbar-collapse">
            <ul class="nav navbar-nav">
                <li class="active"><a href="#">All</a></li>
                <li><a href="export.php">Export</a></li>
            </ul>
        </div>
    </div>
</div>
<div class="container">
    <div class='clear'/>
  <?php
  //Report 1
  $reportDate = '2014-05-18';
  $Report->popNoClicks($reportDate);
  ?>
  <h2 class="sub-header">Popular search phrases with no clicks (all data until  <?php echo $reportDate?>)</h2>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Phrase</th>
                <th>Number of Searches</th>
                <th>Clicks</th>
                <th>Date</th>
            </tr>
            </thead>
            <tbody>
            <?php while($row = $Report->statement->fetch()) :?>
            <tr>
                <td><?php echo $row['phrase']?></td>
                <td><?php echo $row['num_searches']?></td>
                <td><?php echo $row['total_clicks']?></td>
                <td><?php echo $row['date_added']?></td>
            </tr>
            <?php endwhile;?>
            </tbody>
        </table>
    </div>
    <h2 class="sub-header">Phrases with high clicks and low revenue per search (all data until <?php echo $reportDate?>)</h2>
    <?php $Report->highClicksLowRev($reportDate);?>
    <div class="table-responsive">
        <table class="table table-striped">
            <thead>
            <tr>
                <th>Phrase</th>
                <th>Revenue Per Search</th>
                <th>Clicks</th>
                <th>Date</th>
            </tr>
            </thead>
            <tbody>
            <?php while($row = $Report->statement->fetch()) :?>
                <tr>
                    <td><?php echo $row['phrase']?></td>
                    <td><?php echo $row['revenue_per_search']?></td>
                    <td><?php echo $row['num_clicks']?></td>
                    <td><?php echo $row['date_added']?></td>
                </tr>
            <?php endwhile;?>
            </tbody>
        </table>
    </div>
    </div><!-- /.container -->
  </body>
</html>
