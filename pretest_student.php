<?php include('session.php'); ?>
<?php include('header_dashboard.php');
  include 'sql_statements.php';  ?>


<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_student.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('pretest_link_student.php'); ?>
                <div class="span9" id="content">
                     <div class="row-fluid">
					  <!-- breadcrumb -->

										<?php $class_query = mysql_query("select * from teacher_class
										LEFT JOIN class ON class.class_id = teacher_class.class_id
										LEFT JOIN subject ON subject.subject_id = teacher_class.subject_id
										where teacher_class_id = '$get_id'")or die(mysql_error());
										$class_row = mysql_fetch_array($class_query);
										?>

					     <ul class="breadcrumb">
							<li><a href="#"><?php echo $class_row['class_name']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><?php echo $class_row['subject_code']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><b>Subject Overview</b></a></li>
						</ul>
						 <!-- end breadcrumb -->

                       
                        <!-- /block -->

         <div id="block_bg" class="block">
                  <div class="navbar navbar-inner block-header">
                         <div id="" class="muted pull-left">Pre Test</div>
                         </div>
                              <div class="block-content collapse in">
                              <div class="span12">
        <?php
          $pretest=select_info_multiple_key("select * from pretest_question where
          teacher_class_id='".$_GET['id']."'  and qtype='pretest'");
?>
<?php $quiz_id=$_GET['id'];
 echo"<form  method=post action=save_answer_pretest.php?id=".$_GET['id'].">";
$score=select_info_multiple_key("select * from score_pretest
where student_id=$session_id and teacher_class_id=$get_id");
	$sqlw = mysql_query("SELECT * FROM pretest_question where quiz_id = '$quiz_id'
    and qtype='pretest' ORDER BY RAND()");
    $qt = mysql_num_rows($sqlw);
?>
<?php
    if($score)echo "<h2>Score : ".$score[0]['score']." / ".$qt." = ".round((($score[0]['score']/$qt)*100))."%</h2>";
 ?>
          <table class="questions-table table">
<tr>
<th>#</th>
<th>Question</th>
</tr>
<?php



	while($roww = mysql_fetch_array($sqlw)){
?>
<tr id="q_<?php echo $x=$x+1;?>" class="questions">
<td width="30" id="qa"><?php echo $x;?></td>
<td id="qa">
<?php echo $roww['question_text'];?>
<br>
<hr>
<?php
if($roww['question_type_id']=='2'){
?>
	<input name="<?php echo $roww['quiz_question_id'];?>" value="True" type="radio"> True&nbsp;|&nbsp;<input name="<?php echo $roww['quiz_question_id'];?>" value="False" type="radio"> False
<?php
} else if($roww['question_type_id']=='1') {
	$sqly = mysql_query("SELECT * FROM answer_pretest WHERE quiz_question_id = '".$roww['quiz_question_id']."'");
	while($rowy = mysql_fetch_array($sqly)){
	if($rowy['choices'] == 'A') {
	?>
	A.)<input name="<?php echo $roww['quiz_question_id'];?>" value="A" type="radio"> <?php echo $rowy['answer_text'];?><br /><br />
	<?php } else if ($rowy['choices'] == 'B') {?>
	B.) <input name="<?php echo $roww['quiz_question_id'];?>" value="B" type="radio"> <?php echo $rowy['answer_text'];?><br /><br />
	<?php } else if ($rowy['choices'] == 'C') {?>
	C.) <input name="<?php echo $roww['quiz_question_id'];?>" value="C" type="radio"> <?php echo $rowy['answer_text'];?><br /><br />
	<?php } else if ($rowy['choices'] == 'D') {?>
	D.) <input name="<?php echo $roww['quiz_question_id'];?>" value="D" type="radio"> <?php echo $rowy['answer_text'];?><br /><br />
	<?php
		}
	}
}
?>
<br/>


</td>
</tr>
<?php
	}
?>
<tr>
<td></td>
<td>
<?php
if($score)
{

}
else
{
    echo "<input type=submit value='Submit My Answers'  class='btn btn-info' id='submit-test' name='submit_answer'><br />";
}
?>
</td>
</tr>
</table>
 </form>



                               </div>
                              </div>
         </div>
                    </div>
                </div>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>