<?php 
	include 'headers/connect_to_mysql.php';
	include 'headers/_user-details.php';

	$name = "";
	$link = "";
	$id="";
	$formAction = "";
	
	if(isset($_GET['id']))
	{
		$id = $_GET['id'];
		$formAction = "?id={$id}";
		$select_stayconected = "SELECT * FROM stayconected where id = '$id'";
		$fetch_result = mysqli_query($con,$select_stayconected);
		$row = mysqli_fetch_array($fetch_result);
		$name = $row['name'];
		$link = $row['link'];
	}
	
if($_POST)
{
	$name = $_POST['name'];
	$link = $_POST['link'];
	
	if(isset($_GET['id']))
	  {
		$update_stayconected = "UPDATE `stayconected` SET `name` = '{$name}', `link` = '{$link}' where id = '{$id}' "
		or die ('error while Updating stayconected');
		$stayconected_update = mysqli_query($con,$update_stayconected);
		header ('Location: stay_connected.php?update=true'); 
		}
	else
	  {
		$insert_contact = "INSERT INTO `stayconected` (name,link,app_id)
		VALUES ('$name','$link','$appID')"
		or die('error while inserting Stay Connected');
		$result = mysqli_query($con,$insert_contact);
		header ('Location: stay_connected.php?insert=true');
	 }
	
}
	?>

<!DOCTYPE html>
<!--[if IE 8]> <html lang="en" class="ie8"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9"> <![endif]-->
<!--[if !IE]><!--> <html lang="en"> <!--<![endif]-->
<!-- BEGIN HEAD -->

<!-- Mirrored from thevectorlab.net/adminlab/form_component.html by HTTrack Website Copier/3.x [XR&CO'2013], Tue, 04 Nov 2014 07:57:43 GMT -->
<head>   <meta charset="utf-8" />
   <title>Stay Conected</title>
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   <link href="assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-responsive.min.css" rel="stylesheet" />
   <link href="assets/bootstrap/css/bootstrap-fileupload.css" rel="stylesheet" />
   <link href="assets/font-awesome/css/font-awesome.css" rel="stylesheet" />
   <link href="css/style.css" rel="stylesheet" />
   <link href="css/style_responsive.css" rel="stylesheet" />
   <link href="css/style_default.css" rel="stylesheet" id="style_color" />
   <link href="assets/fancybox/source/jquery.fancybox.css" rel="stylesheet" />
   <link rel="stylesheet" type="text/css" href="assets/gritter/css/jquery.gritter.css" />
   <link rel="stylesheet" type="text/css" href="assets/chosen-bootstrap/chosen/chosen.css" />
   <link rel="stylesheet" type="text/css" href="assets/jquery-tags-input/jquery.tagsinput.css" />    
   <link rel="stylesheet" type="text/css" href="assets/clockface/css/clockface.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-datepicker/css/datepicker.css" />   
   <link rel="stylesheet" type="text/css" href="css/custom.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-timepicker/compiled/timepicker.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-colorpicker/css/colorpicker.css" />
   <link rel="stylesheet" href="assets/bootstrap-toggle-buttons/static/stylesheets/bootstrap-toggle-buttons.css" />
   <link rel="stylesheet" href="assets/data-tables/DT_bootstrap.css" />
   <link rel="stylesheet" type="text/css" href="assets/bootstrap-daterangepicker/daterangepicker.css" />
   <link rel="stylesheet" type="text/css" href="css/highlight.css" />
   <link rel="stylesheet" type="text/css" href="css/main.css" />
</head>
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
                     Stay Conected
                     <small>Stay Conected page</small>
                  </h3>
                   <ul class="breadcrumb">
                           <li>
                           <a href="index.php"><i class="icon-home"></i></a> <span class="divider">&nbsp;</span>
                       </li>
                       <li><a href="#">insert Stay Conected</a><span class="divider-last">&nbsp;</span>
                       </li>
                       
               </div>
            </div>
            <!-- END PAGE HEADER-->
            <!-- BEGIN PAGE CONTENT-->
            <div class="row-fluid">
               <div class="span12">
                  <!-- BEGIN SAMPLE FORM widget-->   
                  <div class="widget">
                     <div class="widget-title">
                        <h4><i class="icon-reorder"></i>Insert Stay Conected</h4>
                        <span class="tools">
                           <a href="javascript:;" class="icon-chevron-down"></a>
                         </span>
                     </div>
                     <div class="widget-body form">
                        <!-- BEGIN FORM-->
                        <form action="insert_stayconnected.php<?php echo $formAction; ?>" method="post" class="form-horizontal">
                           <div class="control-group">
                              <label class="control-label">Custom Dropdown</label>
                              <div class="controls">
                                 <select name="name"  class="span6 chosen" data-placeholder="Choose a Category" tabindex="1">
                                    <option value="<?php echo $name; ?>"><?php echo $name; ?></option>
                                  <option value="twitter">Twitter</option>
                                  <option value="youtube">Youtube</option>
                                  <option value="linkedIn">LinkedIn</option>
                                  <option value="behance">Behance</option>
                                  <option value="blogger">Blogger</option>
                                  <option value="deviantArt">DeviantArt</option>
                                  <option value="digg">Digg</option>
                                  <option value="dribbble">Dribbble</option>
                                  <option value="feed">Feed</option>
                                  <option value="flicker">Flickr</option>
                                  <option value="forrst">Forrst</option>
                                  <option value="google++">Google+</option>
                                  <option value="gowalla">Gowalla</option>
                                  <option value="lastfm">Lastfm</option>
                                  <option value="mtspace">Myspace</option>
                                  <option value="paypal">PayPal</option>
                                  <option value="picasa">Picasa</option>
                                  <option value="pinterest">Pinterest</option>
                                  <option value="sharethis">Share-This</option>
                                  <option value="skype">Skype</option>
                                  <option value="stumbleupon">Stumbleupon</option>
                                  <option value="tumblr">Tumblr</option>
                                  <option value="viddlr">Viddlr</option>
                                  <option value="vimeo">Vimeo</option>
                                  <option value="wordpress">Wordpress</option>
                                 </select>
                              </div>
                           </div>                         
                             <div class="control-group">
                              <label class="control-label">Link</label>
                              <div class="controls">
                                 <input name="link" value="<?php echo $link; ?>" placeholder="Enter Your Link" type="text" class="span6 " />
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

   </script>
   <script src="js/jquery-1.8.2.min.js"></script>    
   <script type="text/javascript" src="assets/ckeditor/ckeditor.js"></script>
   <script src="assets/bootstrap/js/bootstrap.min.js"></script>
   <script type="text/javascript" src="assets/bootstrap/js/bootstrap-fileupload.js"></script>
   <script src="js/jquery.blockui.js"></script>
   <!-- ie8 fixes -->
   <!--[if lt IE 9]>
   <script src="js/excanvas.js"></script>
   <script src="js/respond.js"></script>
   <![endif]-->
   <script type="text/javascript" src="assets/chosen-bootstrap/chosen/chosen.jquery.min.js"></script>
   <script type="text/javascript" src="assets/bootstrap-wysihtml5/wysihtml5-0.3.0.js"></script> 
   <script type="text/javascript" src="assets/bootstrap-wysihtml5/bootstrap-wysihtml5.js"></script>
   <script type="text/javascript" src="assets/clockface/js/clockface.js"></script>
   <script type="text/javascript" src="assets/jquery-tags-input/jquery.tagsinput.min.js"></script>
   <script type="text/javascript" src="assets/bootstrap-toggle-buttons/static/js/jquery.toggle.buttons.js"></script>
   <script type="text/javascript" src="assets/bootstrap-datepicker/js/bootstrap-datepicker.js"></script>   
   <script type="text/javascript" src="assets/bootstrap-daterangepicker/date.js"></script>
   <script type="text/javascript" src="assets/bootstrap-daterangepicker/daterangepicker.js"></script> 
   <script type="text/javascript" src="assets/bootstrap-colorpicker/js/bootstrap-colorpicker.js"></script>  
   <script type="text/javascript" src="assets/bootstrap-timepicker/js/bootstrap-timepicker.js"></script>
   <script type="text/javascript" src="assets/bootstrap-inputmask/bootstrap-inputmask.min.js"></script>
   <script src="assets/fancybox/source/jquery.fancybox.pack.js"></script>
   <script src="js/scripts.js"></script>
   <script>
      jQuery(document).ready(function() {       
         // initiate layout and plugins
         App.init();
      });
   </script>
   <script>
function toggle() {
	var ele = document.getElementById("ToggleText");
	var text = document.getElementById("DisplayText");
	if(ele.style.display == "block") {
 		ele.style.display = "none";
  	}
	else {
		ele.style.display = "block";
	}
} 
</script>
<script>
function Toggle() {
	var ele = document.getElementById("toggletext");
	var text = document.getElementById("displaytext");
 	if(ele.style.display == "block") {
 		ele.style.display = "none";
 
  	}
	else {
		ele.style.display = "block";
	}
} 
</script>


   <!-- END JAVASCRIPTS -->   
</body>
<!-- END BODY -->

<!-- Mirrored from thevectorlab.net/adminlab/form_component.html by HTTrack Website Copier/3.x [XR&CO'2013], Tue, 04 Nov 2014 07:58:52 GMT -->
</html>
