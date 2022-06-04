<?php
    //connection to Database
  $con = mysqli_connect("localhost", "root", "", "junior");

    //find out the number of results
  $sql = 'SELECT * FROM `github`';
  $result = mysqli_query($con, $sql);
  $number_of_results = mysqli_num_rows($result);

    // define how many results you want per page
  $result_per_page = 35;

    //define total number of pages available
  $number_of_pages = ceil($number_of_results / $result_per_page );
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
    <title>Example1</title>
  </head>
  <body>

    <div id="pagination">
      <ul class="pagination">

          <?php
          for ($page = 1; $page <= $number_of_pages; $page++ ) {
          ?>

            <li class="page-item"><a class="page-link" href="example1.php?Page=<?=$page?>"><?=$page?></a></li>
      

          <?php } ?>
      </ul>
    </div>
        <?php
          if (!isset($_GET['Page'])) {
            $page = 1;
          } else {
            $page = $_GET['Page'];
          }
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
