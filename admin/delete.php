<?php
	include '../headers/connect_to_mysql.php';
	
	if(isset($_GET['app_id']))
	{
	$app_id = $_GET['app_id'];
	$query_delete = "DELETE FROM app WHERE app_id = $app_id"
	or die('error while deleting app');
	$result = mysqli_query($con,$query_delete);
	header ('Location: app.php?delete=true');		
	}
	
	if(isset($_GET['id'])){
	$id = $_GET['id'];
	$query_delete = "DELETE from webservices where id = '$id'"
	or die ('error while Webservices Id');
	$result = mysqli_query($con,$query_delete);
	header ("Location: webservices.php?delete=true");
	}

?>