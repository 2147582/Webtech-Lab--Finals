<?php
include 'add-equipment-action.php'; 
?>



<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags-->
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="au theme template">
  <meta name="author" content="Hau Nguyen">
  <meta name="keywords" content="au theme template">

  <!-- Title Page-->
  <title>Dashboard</title>

  <!-- Fontfaces CSS-->
  <link href="css/font-face.css" rel="stylesheet" media="all">
  <link href="vendor/font-awesome-4.7/css/font-awesome.min.css" rel="stylesheet" media="all">
  <link href="vendor/font-awesome-5/css/fontawesome-all.min.css" rel="stylesheet" media="all">
  <link href="vendor/mdi-font/css/material-design-iconic-font.min.css" rel="stylesheet" media="all">

  <!-- Bootstrap CSS-->
  <link href="vendor/bootstrap-4.1/bootstrap.min.css" rel="stylesheet" media="all">

  <!-- Vendor CSS-->
  <link href="vendor/animsition/animsition.min.css" rel="stylesheet" media="all">
  <link href="vendor/bootstrap-progressbar/bootstrap-progressbar-3.3.4.min.css" rel="stylesheet" media="all">
  <link href="vendor/wow/animate.css" rel="stylesheet" media="all">
  <link href="vendor/css-hamburgers/hamburgers.min.css" rel="stylesheet" media="all">
  <link href="vendor/slick/slick.css" rel="stylesheet" media="all">
  <link href="vendor/select2/select2.min.css" rel="stylesheet" media="all">
  <link href="vendor/perfect-scrollbar/perfect-scrollbar.css" rel="stylesheet" media="all">

  <!-- Main CSS-->
  <link href="css/theme.css" rel="stylesheet" media="all">

</head>


<body class="animsition">
  <div class="page-wrapper">
   <!-- MENU SIDEBAR-->
   <aside class="menu-sidebar d-none d-lg-block">

<!-- WEBLAB LOGO -->
    <div class="logo">
        <a href="index.php">
            <!-- <img src="images/icon/logo.png" alt="Cool Admin" /> -->
        </a>
    </div>
    <div class="menu-sidebar__content js-scrollbar1">
        <nav class="navbar-sidebar">
            <ul class="list-unstyled navbar__list">
                <li>
                    <a class="js-arrow" href="#">
                        <i class="fas fa-chart-bar"></i>Services</a>
                        <ul class="list-unstyled navbar__sub-list js-sub-list">
                         <li>
                            <a href="View.php">View Equipments</a>
                        </li>
                        <li>
                            <a href="Add.php">Post Equipments</a>
                        </li>
                    </ul>
                </li>               
                <li>
                <a class="js-arrow" href="#">                         
                        <i class="fas fa-table"></i>Transactions</a>
                                <ul class="list-unstyled navbar__sub-list js-sub-list">
                                 <li>
                                    <a href="ctransaction.php">Completed Transactions</a>
                                </li>
                                <li>
                                    <a href="otransaction.php">Ongoing Transactions</a>
                                </li>
                                <li>
                                    <a href="ptransaction.php">Pending Transactions</a>
                                </li>
                                <li>
                                    <a href="dtransaction.php">Denied Transactions</a>
                                </li>
                    </ul>
                    </li>   
                        </ul>
                    </nav>
                </div>
            </aside>
          <!-- END MENU SIDEBAR-->

          <!-- PAGE CONTAINER-->
          <div class="page-container">
            <!-- HEADER DESKTOP-->
            <header class="header-desktop">
              <div class="section__content section__content--p30">

              </div>
            </header>
            <!-- HEADER DESKTOP-->

            <!-- MAIN CONTENT-->
            <div class="main-content">
              <div class="section__content section__content--p30">
                <div class="container-fluid">
                <div class="col-md-12">
                                <!-- DATA TABLE -->
                                <h3 class="title-5 m-b-35">data table</h3>
                                <div class="table-responsive table-responsive-data2">
                                    <table class="table table-data2">
                                        <thead>
                                            <tr>
                                                <th>Code</th>
                                                <th>Name</th>
                                                <th>Description</th>
                                                <th>Category</th>
                                                <th>Equipment Quantity</th>
                                                <th>Available Quantity</th>
                                                <th>Price</th>
                                                <th>Added Date</th>
                                                <th>Modify</th>
                                                <th>Image</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                                                <?php
                                                                $perpage = 10;
                                                                if(isset($_GET["page"])){
                                                                    $page = intval($_GET["page"]);
                                                                }else {
                                                                    $page = 1;
                                                                }
                                                                $calc = $perpage * $page;
                                                                $start = $calc - $perpage;
                                                                $sql = "SELECT * FROM equipment LIMIT $start, $perpage";
                                                                $result = mysqli_query($con,$sql);
                                                                $rows = mysqli_num_rows($result);
                                                                if($rows){
                                                                    $i = 0;
                                                                    while($row = mysqli_fetch_array($result)){
                                                                        echo '
                                                                        <tr>
                                                                        <td>'.$row["equipment_code"].'</td>
                                                                        <td>'.$row["equipment_name"].'</td>
                                                                        <td>'.$row["equipment_desc"].'</td>
                                                                        <td>'.$row["category"].'</td>
                                                                        <td>'.$row["equipment_quantity"].'</td>
                                                                        <td>'.$row["0"].'</td>
                                                                        <td>'.$row["equipment_price"].'</td>
                                                                        <td>'.$row["added_date"].'</td>
                                                                        <td>'.'<a href=\'edit-equipment.php?edit_id=' .$row['equipment_id'].'\'>View and Edit</a>'.'</td>
                                                                        <td>'.'<img src=\'stored/' .$row['equipment_pic'].'\'>'.'</td>

                                                                        </tr>
                                                                        ';
                                                                    }
                                                                }
                                                                ?>
                                                            </tbody>
                                                        </table>
                                        

                                    </table>

                                    
                                </div>
                                
                                <!-- END DATA TABLE -->
                            </div>
                </div>
              </div>
            </div>
          </div>  
        </div>
      </div>
    </div>
  </div>
</div>
</div>


	<!-- modal small -->
<!--   
                        <?php
                        $con=mysqli_connect ("localhost", "root", "","weblab");
                        mysqli_select_db($con,"weblab");
                        ?>
                        <?php 
                        $res=mysqli_query($con,"select * from equipment");
                        while($row=mysqli_fetch_array($res))
                        {
                            ?>
                              <div class="modal fade" id="smallmodal" tabindex="-1" role="dialog" aria-labelledby="smallmodalLabel" aria-hidden="true">
				<div class="modal-dialog modal-sm" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="smallmodalLabel"></h5>
							<button type="button" class="close" data-dismiss="modal" aria-label="Close">
								<span aria-hidden="true">&times;</span>
							</button>
						</div>
                        <div class="modal-body">
							<p>
                            <h2><?php echo $row["equipment_name"]; ?></h2>

                            <img src="stored/<?php echo $row["equipment_pic"]; ?>" alt="">

							
							</p>
						</div>
						<div class="modal-footer">
							<button type="button" class="btn btn-secondary" data-dismiss="modal">Cancel</button>
							<button type="button" class="btn btn-primary">Confirm</button>
						</div>
					</div>
				</div>
			</div>

                            <?php 
                               }


                            ?>
                     
                       
					 -->
			<!-- end modal small -->





<div class="row">
  <div class="col-md-12">
    <div class="copyright">
      <p>Copyright © 2018 Colorlib. All rights reserved. Template by <a href="https://colorlib.com">Colorlib</a>.</p>
    </div>
  </div>
</div>
</div>
</div>
</div>




<!-- END MAIN CONTENT-->
<!-- END PAGE CONTAINER-->

<!-- Jquery JS-->
<script src="vendor/jquery-3.2.1.min.js"></script>
<!-- Bootstrap JS-->
<script src="vendor/bootstrap-4.1/popper.min.js"></script>
<script src="vendor/bootstrap-4.1/bootstrap.min.js"></script>
<!-- Vendor JS       -->
<script src="vendor/slick/slick.min.js">
</script>
<script src="vendor/wow/wow.min.js"></script>
<script src="vendor/animsition/animsition.min.js"></script>
<script src="vendor/bootstrap-progressbar/bootstrap-progressbar.min.js">
</script>
<script src="vendor/counter-up/jquery.waypoints.min.js"></script>
<script src="vendor/counter-up/jquery.counterup.min.js">
</script>
<script src="vendor/circle-progress/circle-progress.min.js"></script>
<script src="vendor/perfect-scrollbar/perfect-scrollbar.js"></script>
<script src="vendor/chartjs/Chart.bundle.min.js"></script>
<script src="vendor/select2/select2.min.js">
</script>

<!-- Main JS-->
<script src="js/main.js"></script>

</body>

</html>
<!-- end document-->
