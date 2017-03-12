<?php
ob_start();
if($_SESSION['name']!='admin')
{
	header('location: login.php');
}
?>

<!doctype html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<title>Inventory Management</title>
	<link rel="stylesheet" href="style-admin.css">
	<script type='text/javascript'>
	function confirmDelete()
	{
		return confirm("Do you sure want to delete this data?");
	}
	</script>
		<!--Deliver Permission Code by Java Script-->
	<script>
		function confirm_deliver() {
			return confirm('are you sure! you want to Approver This Order?') ;}
	</script>
	<!-- Fancybox jQuery -->
	<script type="text/javascript" src="../fancybox/jquery-1.9.0.min.js"></script>
	<script type="text/javascript" src="../fancybox/jquery.fancybox.js"></script>
	<script type="text/javascript" src="../fancybox/main.js"></script>
	<link rel="stylesheet" type="text/css" href="../fancybox/jquery.fancybox.css" />
	<!-- //Fancybox jQuery -->
	
	<!-- CKEditor Start -->
	<script type="text/javascript" src="../ckeditor/ckeditor.js"></script>
	<!-- // CKEditor End -->
</head>
<body>


	<div id="wrapper">
		<div id="header">
			<h1>Admin Panel Dashboard</h1>
		</div>
		<div id="container">
			<div id="sidebar">
				<h2>User Options</h2>
				<ul>
					<li><a href="index.php">Home</a></li>
					<li><a href="change-your-profile.php">Change Your Profile</a></li>
					<li><a href="logout.php">Logout</a></li>
				</ul>
				<h2>Page Options</h2>
				<ul>
					<li><a href="post-add.php">Add Post</a></li>
					<li><a href="post-view.php">View Post</a></li>
					<li><a href="manage-category.php">Manage Category</a></li>
					<li><a href="job-category.php">Add Job Post</a></li>

				</ul>
				<h2>Employee List</h2>
				<ul>
					<li><a href="add-employee.php">Add Employee</a></li>
					<li><a href="view-employee.php">Show All Employee</a></li>
				</ul>
				<h2>User List</h2>
				<ul>
					<li><a href="view-user.php">Show All User</a></li>
				</ul>
				<h2>Contact Us</h2>
				<ul>
					<li><a href="user-send-message.php">View Message</a></li>
				</ul>
				<p>&nbsp;</p>
			</div>
			<div id="content">