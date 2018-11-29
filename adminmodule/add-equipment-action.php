<center>
<?php
include 'config.php';
  session_start();

  if(isset($_POST['equip']))
  {
   
    $icode = $_POST['icode'];
    $ename = $_POST['ename'];
    $desc = $_POST['desc'];
    $category = $_POST['category'];
    $price = $_POST['price'];


    $query = "INSERT INTO `equipment`(`item_code`, `equipment_name`,`equipment_desc`,`category`,`equipment_price`) VALUES ('$icode','$ename','$desc','$category','$price')";
    $result = mysqli_query($con,$query);

    if($result) {
echo 'Equipment Added';
    }else{
      echo 'Equioment, Not Added ';
    }


    header("refresh:1;url=add.php");

    }
?>
</center>