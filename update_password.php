 <?php include('session.php');
 include('dbcon.php');

 $new_password  = $_POST['new_password'];
 mysql_query("update teacher set password = '$new_password' where teacher_id = '$session_id'")or die(mysql_error());
 ?>