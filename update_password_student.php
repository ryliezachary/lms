 <?php include('session.php');   
 include('dbcon.php');

 $new_password  = $_POST['new_password'];
 mysql_query("update student set password = '$new_password' where student_id = '$session_id'")or die(mysql_error());
 ?>