<?php
	include '../headers/connect_to_mysql.php';
	$user_img = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";

if(isset($_GET['user_id']))
{
		$user_id = $_GET['user_id'];
		$formAction = "ANDuser_id=$user_id";
		$query = "SELECT * FROM user where user_id = $user_id ";
		$result = mysqli_query($con,$query);	
		$row = mysqli_fetch_array($result)
		or die ('error3');
		$user_name = $row['user_name'];
		$app_id = $row['app_id'];
		$password = $row['password'];
		$image = $row['image'];
		if ($image != null)
		{
		$user_img = "../img/image/{$image}";
		}
		else
		{
		$user_img = "http://www.placehold.it/200x150/EFEFEF/AAAAAA&amp;text=no+image";
		}
		
	if($_POST)
	{
		$user_id = $_GET['user_id'];
		$user_name = $_POST['user_name'];
		$app_id = $_POST['app_id'];
		$password = $_POST['password'];
		$query = "UPDATE user SET  user_name = '$user_name',app_id = '$app_is',password = '$password', image = '$image'  WHERE user_id = '$user_id'";
		$result = mysqli_query($con,$query);
		header("Location: user.php?update=true");
	}
}	
else 
{
	if($_POST)
	{
		$user_name = $_POST['user_name'];
		$app_id = $_POST['app_id'];
		$password = $_POST['password'];
		$query_inserting = "INSERT INTO user(user_name,password,image,app_id)
		VALUES ('$user_name','$password','$app_id','$image')";
		mysqli_query($con,$query_inserting)
		or die('error while inserting Webservices');
		header("Location: user.php?insert=true");	
	}	
}

?>

<!doctype html>
<html>
<head>
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   	<link href="../assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   	<link href="../assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   	<link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   	<link href="../css/style.css" rel="assets" />
   	<link href="../css/style_responsive.css" rel="stylesheet" />
   	<link href="../css/style_default.css" rel="stylesheet" id="style_color" />
   	<link href="../assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
   	<link rel="stylesheet" type="text/css" href="../assets/uniform/css/uniform.default.css" />
   	<link rel="stylesheet" type="text/css" href="../assets/jquery-ui/jquery-ui-1.10.1.custom.min.css"/>
   	<link rel="stylesheet" type="text/css" href="../assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
   	<link rel="stylesheet" type="text/css" href="../assets/jquery-tags-input/jquery.tagsinput.css" />    
   	<link rel="stylesheet" href="../assets/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
   	<link rel="stylesheet" type="text/css" href="../assets/gritter/css/jquery.gritter.css" />
	<link rel="stylesheet" type="text/css" href="../assets/bootstrap-daterangepicker/daterangepicker.css" />
	<link rel="stylesheet" type="text/css" href="../assets/bootstrap-datepicker/css/datepicker.css" />
	<link rel="stylesheet" type="text/css" href="../assets/bootstrap-timepicker/compiled/timepicker.css" />
	<link rel="stylesheet" type="text/css" href="../assets/bootstrap-colorpicker/css/colorpicker.css" />
    <link href="../assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
	<link href="../assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
	<link href="../assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
	<link href="../assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
	<link href="../css/style.css" rel="stylesheet" />
	<link href="../css/style_responsive.css" rel="stylesheet" />
	<link href="../css/style_default.css" rel="stylesheet" id="style_color" />
	<link rel="stylesheet" href="../assets/data-tables/DT_bootstrap.css" />
   <link rel="stylesheet" type="text/css" href="../assets/chosen-bootstrap/chosen/chosen.css" />

<title>Avialdo -Dashboard </title>

</head>

<body>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="fixed-top">
<?php
include 'headers/menu-top-navigation.php'; 
?>
      <!-- END SIDEBAR -->
      <!-- BEGIN PAGE -->  
      <div id="main-content">
         <!-- BEGIN PAGE CONTAINER-->
         <div class="container-fluid">
            <!-- BEGIN PAGE HEADER-->   
            <div class="row-fluid">
               <div class="span12">
                   <!-- BEGIN THEME CUSTOMIZER-->

                   <!-- END THEME CUSTOMIZER-->
                  <h3 class="page-title">
                     User
                     <small>Add User name</small>
                  </h3>
                  <ul class="breadcrumb">
                       <li>
                           <a href="app.php"><i class="icon-home"></i></a><span class="divider">&nbsp;</span>
                       </li>
                       <li>
                           <a href="user.php">user</a> <span class="divider">&nbsp;</span>
                       </li>
                       <li><a href="#">Insert User</a><span class="divider-last">&nbsp;</span></li>
                   </ul>

               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
               <div class="span12">
                  <!-- BEGIN SAMPLE FORM widget-->   
                  <div class="widget">
                     <div class="widget-title">
                        <h4><i class="icon-reorder"></i>Insert User</h4>
                        <span class="tools">
                           <a href="javascript:;" class="icon-chevron-down"></a>
                         </span>
                     </div>
                     <div class="widget-body form">
                        <!-- BEGIN FORM-->
                        <form action="insert_webservice.php<?php echo $formAction; ?>" method="post" class="form-horizontal">
                             <div class="control-group">
                              <label class="control-label">User Name</label>
                              <div class="controls">
                                 <input required name="user_name" value="<?php echo $user_name; ?>" 
                                 placeholder="Enter Your Name" type="text" class="span6 " />
                              </div>
                           </div>
                         <div class="control-group">
                              <label class="control-label">Password</label>
                              <div class="controls">
                                 <input required name="password" value="<?php echo $password; ?>" 
                                 placeholder="Enter Your Password" type="text" class="span6 " />
                              </div>
                          </div>
                             <div class="control-group">
                              <label class="control-label">App Id</label>
                              <div class="controls">
                                 <select class="span6" name="app_id" data-placeholder="Choose a Category" tabindex="1">
                                    <?php $query_select = "SELECT * FROM app";
									$result_select = mysqli_query($con,$query_select)
									or die ('error'); 
									while($row = mysqli_fetch_array($result_select)){
										$app_id = $row['app_id'];
                                    echo"
                                    <option value=''>{$app_id}</option>
 										";                                
									}?>
                                 </select>
                              </div>
                           </div>
                                                           <div class="control-group">
                                    <label class="control-label">User Image</label>
                                    <div class="controls">
                                        <div class="fileupload fileupload-new" data-provides="fileupload">
                                            <div class="fileupload-new thumbnail" style="width: 200px; height: 150px;">
                                                <img src="<?php echo $user_img; ?>" alt="" />
                                            </div>
                                            <div class="fileupload-preview fileupload-exists thumbnail" style="max-width: 200px; max-height: 150px; line-height: 20px;"></div>
                                            <div>
                                       <span class="btn btn-file"><span class="fileupload-new">Select image</span>
                                       <span class="fileupload-exists">Change</span>
                                       <input type="file" name="img" class="default" /></span>
                                                <a href="#" class="btn fileupload-exists" data-dismiss="fileupload">Remove</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
    			<div class="form-actions clearfix">
				<input type="submit"  class="btn btn-success " />
                   </div>
                              </form>
                            <!-- END FORM-->
                        </div>
                    </div>
                    <!-- END EXTRAS widget-->
                </div>
            </div>
            <!-- END PAGE CONTENT-->         
         </div>
         <!-- END PAGE CONTAINER-->
      </div>
      <!-- END PAGE -->  
   </div>
   <!-- END CONTAINER -->
   <!-- BEGIN FOOTER -->
  <?php  
	include 'headers/footer.php';
	?>
   <!-- END FOOTER -->
   <!-- BEGIN JAVASCRIPTS -->    
   <!-- Load javascripts at bottom, this will reduce page load time -->

 
   <!-- BEGIN JAVASCRIPTS -->
   <!-- Load javascripts at bottom, this will reduce page load time -->
   <script src="../js/jquery-1.8.3.min.js"></script>
   <script src="../assets/jquery-ui/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>
<script src="../assets/bootstrap/js/bootstrap.min.js"></script>   
   <script src="../js/jquery.blockui.js"></script>
   <!-- ie8 fixes -->
   <!--[if lt IE 9]>
   <script src="js/excanvas.js"></script>
   <script src="js/respond.js"></script>
   <![endif]-->   
   <script type="text/javascript" src="../assets/uniform/jquery.uniform.min.js"></script>
   <script type="text/javascript" src="../assets/data-tables/jquery.dataTables.js"></script>
   <script type="text/javascript" src="../assets/data-tables/DT_bootstrap.js"></script>
   <script type="text/javascript" src="../assets/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
   <script type="text/javascript" src="../assets/jquery-tags-input/jquery.tagsinput.min.js"></script>
   <script type="text/javascript" src="../assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script> 
   <script type="text/javascript" src="../assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
   <script type="text/javascript" src="../assets/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
   <script type="text/javascript" src="../assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script> 
	<script type="text/javascript" src="../assets/bootstrap-daterangepicker/date.js"></script> 
    <script type="text/javascript" src="../assets/bootstrap-daterangepicker/daterangepicker.js"></script> 
    <script type="text/javascript" src="../assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script> 
    <script type="text/javascript" src="../assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script> 
   <script src="../js/scripts.js"></script>
      <script src="../js/table-editable.js"></script>
         <script>
      jQuery(document).ready(function() {       
         // initiate layout and plugins
         App.init();
		 UIJQueryUI.init();
      });
   </script>

</body>
</html>
