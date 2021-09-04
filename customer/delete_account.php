<?php
session_start();
include ("includes/db.php");
?>

<h2 style="text-align: center;">Do you really want to DELETE your account?</h2>
<form action="" method="post">

    <input type="submit" name="yes" value="Yes I want">
    <input type="submit" name="no" value="No I was Joking">




</form>
<?php
$user = $_SESSION['customer_email'];

if(isset($_POST['yes'])){

    $delete_customer ="delete from customers where customer_email='$user'";

    $run_customer = mysqli_query($con,$delete_customer);

    echo "<script>alert('We are really sorry,your account has been deleted;')</script>";
    echo "<script>window.open('../index.php','self')</script>";
}
if (isset($_POST['no'])){
    echo "<script>alert('We are really sorry,your account has been deleted;')</script>";
    echo "<script>window.open('my_account.php','self')</script>";
}




?>
