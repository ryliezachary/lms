
<pre>

    <?php
      print_r($_POST);
    ?>

</pre>
 <?php include 'session.php';
  include 'sql_statements.php';

  $pretest=select_info_multiple_key("select * from pretest_question where
  teacher_class_id='".$_GET['id']."' and qtype='posttest'");
  $ctr=0;
  if($pretest)
  {
      foreach($pretest as $p)
      {
        if($_POST[$p['quiz_question_id']]==$p['answer'])
        {
            $ctr++;
        }

      }
  }
  insert_update_delete("insert into score_posttest values('".$_GET['id']."','$session_id','$ctr')");
 header("Location:postest.php?id=".$_GET['id']);
 // echo "<br>Score ". $ctr;


?>