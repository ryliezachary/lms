<?php include('session.php'); ?>
<?php include('header_dashboard.php'); ?>

<?php include('sql_statements.php'); ?>
<?php $get_id = $_GET['id']; ?>
    <body>
		<?php include('navbar_teacher.php'); ?>
        <div class="container-fluid">
            <div class="row-fluid">
				<?php include('assignment_link.php'); ?>
                <div class="span6" id="content">
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
							<li><a href="#">School Year: <?php echo $class_row['school_year']; ?></a> <span class="divider">/</span></li>
							<li><a href="#"><b>Uploaded Assignments</b></a></li>
						</ul>
						 <!-- end breadcrumb -->
                        <!-- block -->
                        <div id="block_bg" class="block">
                            <div class="navbar navbar-inner block-header">
                                <div id="" class="muted pull-left"></div>
                            </div>
                            <div class="block-content collapse in">
                                <div class="span12">

  									<table cellpadding="0" cellspacing="0" border="0" class="table" id="">
										<thead>
										        <tr>


												<th>Description</th>
                                                 <th>Assign to Learning Materials</th>
												<th></th>
												<th></th>

												</tr>
										</thead>
										<tbody>

                              		<?php
										$query = mysql_query("select * FROM assignment where class_id = '$get_id' and teacher_id = '$session_id' order by fdatein DESC ")or die(mysql_error());
										while($row = mysql_fetch_array($query)){
										$id  = $row['assignment_id'];
										$floc  = $row['floc'];
									?>
								<tr>

                                         <td><?php  echo $row['fdesc']; ?></td>
                                         <td><?php
                                         $files=select_info_multiple_key("select * from files
                                              where class_id=$get_id");
                                            echo "<form  method=post> <select name=a".$row['assignment_id']." onchange=validate(this.value,".$row['assignment_id'].",$get_id);   class=input required>
                                        <option></option> ";
                                               if($files)
                                    {
                                        foreach($files as $f)
                                        {
                                            $selected="";
                                            if($row['file_id']==$f['file_id'])$selected="selected=selected";
                                          echo "<option $selected value=".$f['file_id'].">".$f['fname']." </option>";
                                        }
                                     echo "<input id=q".$row['assignment_id']." type=hidden value='".$row['assignment_id']."' />";
                                    }
                                        echo "</select>    </form>"  ?></td>

                                         <td >
										  <form method="post" action="view_submit_assignment.php<?php echo '?id='.$get_id ?>&<?php echo 'post_id='.$id ?>">

										 <button data-placement="bottom" title="View Student who submit Assignment" id="<?php echo $id; ?>view" class="btn btn-success"><i class="icon-folder-open-alt icon-large"></i></button>

										</form>
                                        </td><td>
										<?php
										if ($floc == ""){
										}else{
										?>
										 <a data-placement="bottom" title="Download" id="<?php echo $id; ?>download"  class="btn btn-info" href="<?php echo $row['floc']; ?>"><i class="icon-download icon-large"></i></a>
										<?php } ?>
										 <a data-placement="bottom" title="Remove" id="<?php echo $id; ?>remove"  class="btn btn-danger"  href="#<?php echo $id; ?>" data-toggle="modal"><i class="icon-remove icon-large"></i></a>
										 <?php include('delete_assigment_modal.php'); ?>
									</td>
                                    <td>&nbsp;</td>
														<script type="text/javascript">
														$(document).ready(function(){
															$('#<?php echo $id; ?>download').tooltip('show');
															$('#<?php echo $id; ?>download').tooltip('hide');
														});
														</script>
														<script type="text/javascript">
														$(document).ready(function(){
															$('#<?php echo $id; ?>remove').tooltip('show');
															$('#<?php echo $id; ?>remove').tooltip('hide');
														});
														</script>
														<script type="text/javascript">
														$(document).ready(function(){
															$('#<?php echo $id; ?>view').tooltip('show');
															$('#<?php echo $id; ?>view').tooltip('hide');
														});
														</script>
                                </tr>
						 <?php } ?>
										</tbody>
									</table>

                                </div>
                            </div>
                        </div>
                        <!-- /block -->
                    </div>
                </div>
				<?php //include('assignment_sidebar.php') ?>
            </div>
		<?php include('footer.php'); ?>
        </div>
		<?php include('script.php'); ?>
    </body>
</html>


<script>
         function validate(a,q,get_id)
         {

            x="q"+q;
            id=document.getElementById(x).value;
           url='update_assignment.php?file_id='+a+'&assignment_id='+id+'&get_id='+get_id;
          // alert(id);
         window.location=url;
         }
</script>
