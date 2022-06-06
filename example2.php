<?php
    //connection to Database
  $db_name = ""; //enter your database name
  $con = mysqli_connect("localhost", "root", "", $db_name);

    //find out the number of results
  $sql = 'SELECT * FROM `github`';
  $result = mysqli_query($con, $sql);
  $number_of_results = mysqli_num_rows($result);

    // define how many results you want per page
  $result_per_page = 20;

    //define total number of pages available
  $number_of_pages = ceil($number_of_results / $result_per_page);
?> 


<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
    <link rel="stylesheet" href="css/style.css" />
    <title>Example</title>
  </head>
  <body>

    <div id="pagination">
      <ul class="pagination">

          <?php
            if (!isset($_GET['Page'])) {
              $page = 1;
            } else {
              $page = $_GET['Page'];
            }
          
            if ($page <= 3) {
          
          ?>
        <li class="page-item"><a class="page-link" href='example2.php?Page=1'>1</a></li>
        <li class="page-item"><a class="page-link" href='example2.php?Page=2'>2</a></li>
        <li class="page-item"><a class="page-link" href='example2.php?Page=3'>3</a></li>
        <li class="page-item"><a class="page-link" href='example2.php?Page=4'>4</a></li>
        <li class="page-item"><a class="page-link" href=''>...</a></li>


          <?php }  elseif ($page >= ($number_of_pages-2)) {?>

        <li class="page-item"><a class="page-link" href='example2.php?Page=1'>1</a></li>
        <li class="page-item"><a class="page-link" href=''>...</a></li>
        <li class="page-item"><a class="page-link" href='example2.php?Page=<?=($number_of_pages-3) ?>'><?=($number_of_pages-3) ?></a></li>
        <li class="page-item"><a class="page-link" href='example2.php?Page=<?=($number_of_pages-2) ?>'><?=($number_of_pages-2) ?></a></li>
          <li class="page-item"><a class="page-link" href='example2.php?Page=<?=($number_of_pages-1) ?>'><?=($number_of_pages-1) ?></a></li>


          <?php } else { ?>

        <li class="page-item"><a class="page-link" href='example2.php?Page=1'>1</a></li>
        <li class="page-item"><a class="page-link" href=''>...</a></li>
        <li class="page-item"><a class="page-link" href='example2.php?Page=<?=($page-1) ?>'><?=($page-1) ?></a></li>
        <li class="page-item"><a class="page-link" href='example2.php?Page=<?=($page) ?>'><?=($page) ?></a></li>
        <li class="page-item"><a class="page-link" href='example2.php?Page=<?=($page+1) ?>'><?=($page+1) ?></a></li>
        <li class="page-item"><a class="page-link" href=''>...</a></li>



        <?php } ?>


        <li class="page-item"><a class="page-link" href='example2.php?Page=<?=$number_of_pages?>'><?=$number_of_pages?></a></li>

      </ul>
    </div>
        <?php

          //SELECT * FROM `github` LIMIT 30, 10

          $this_page_result = ($page - 1 ) * $result_per_page;
          $sql = 'SELECT * FROM `github` LIMIT ' . $this_page_result . ', ' . $result_per_page;
          $result = mysqli_query($con, $sql);
        ?>
    <div class="box">
      <?php

        //retrieve selected results from database
        while ($row = mysqli_fetch_array($result)) {
      ?>

      <?=$row['id']?> - <?=$row['repo']?> <br>
      <?php } ?>

    
    </div>
    
  </body>
</html>
