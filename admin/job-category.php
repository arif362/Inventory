<?php
ob_start();
session_start();
if($_SESSION['name']!='admin')
{
	header('location: ../index.php');
}
include("../config.php");
?>

<?php

if(isset($_POST['form1']))
{
	try {
		
		if(empty($_POST['job_cat'])) {
			throw new Exception("Category Name can not be empty.");
		}
		
		$statement = $db->prepare("SELECT * FROM job_post WHERE job_cat=?");
		$statement->execute(array($_POST['job_cat']));
		$total = $statement->rowCount();
		
		if($total>0) {
			throw new Exception("Category Name already exists.");
		}
		
		$statement = $db->prepare("INSERT INTO job_post (job_cat) VALUES (?)");
		$statement->execute(array($_POST['job_cat']));
		
		$success_message = "Category name has been inserted successfully.";
		
	
	}
	
	catch(Exception $e) {
		$error_message = $e->getMessage();
	}
} 



if(isset($_POST['form2']))
{
	try {
		
		if(empty($_POST['job_cat'])) {
			throw new Exception("Post Name can not be empty.");
		}
		
		$statement = $db->prepare("UPDATE job_post SET job_cat=? WHERE p_id=?");
		$statement->execute(array($_POST['job_cat'],$_POST['hdn']));
		
		$success_message1 = "Post Name has been updated successfully.";
		
	}
	catch(Exception $e) {
		$error_message1 = $e->getMessage();
	}
		
}

if(isset($_REQUEST['id'])) 
{
	$id = $_REQUEST['id'];
	
	$statement = $db->prepare("DELETE FROM job_post WHERE p_id=?");
	$statement->execute(array($id));
	
	$success_message2 = "Post Name has been deleted successfully.";
	
}

?>
<?php include("header.php"); ?>
<h2>Add New Job Post Category</h2>
<p>&nbsp;</p>
<?php
if(isset($error_message)) {echo "<div class='error'>".$error_message."</div>";}
if(isset($success_message)) {echo "<div class='success'>".$success_message."</div>";}
?>
<form action="" method="post">
<table class="tbl1">
<tr>
	<td>Post Name</td>
</tr>
<tr>
	<td><input class="short" type="text" name="job_cat"></td>
</tr>
<tr>
	<td><input type="submit" value="SAVE" name="form1"></td>
</tr>
</table>	
</form>


<h2>View  All Post Categories</h2>
<?php
if(isset($error_message1)) {echo "<div class='error'>".$error_message1."</div>";}
if(isset($success_message1)) {echo "<div class='success'>".$success_message1."</div>";}
if(isset($success_message2)) {echo "<div class='success'>".$success_message2."</div>";}
?>
<table class="tbl2" width="100%">
	<tr>
		<th width="10%">Post ID</th>
		<th width="50%">Job Post Name</th>
		<th width="15%">Action</th>
	</tr>
	
	<?php
	$i=0;
	$statement = $db->prepare("SELECT * FROM job_post ORDER BY p_id ASC");
	$statement->execute();
	$result = $statement->fetchAll(PDO::FETCH_ASSOC);
	foreach($result as $row)
	{
		$i++;
		?>
			
		<tr>
		
		<td><?php echo $row['p_id']; ?></td>
		<td><?php echo $row['job_cat']; ?></td>
		<td>
			<a class="fancybox" href="#inline<?php echo $i; ?>">Edit</a>
			<div id="inline<?php echo $i; ?>" style="width:400px;display: none;">
				<h3>Edit Data</h3>
				<p>
					<form action="" method="post">
					<input type="hidden" name="hdn" value="<?php echo $row['p_id']; ?>">
					<table>
						<tr>
							<td>Post Name</td>
						</tr>
						<tr>
							<td><input type="text" name="job_cat" value="<?php echo $row['job_cat']; ?>"></td>
						</tr>
						<tr>
							<td><input type="submit" value="UPDATE" name="form2"></td>
						</tr>
					</table>
					</form>
				</p>
			</div>
			</td>
		</tr>
		
		<?php
	}
	?>
	
	
	
	
</table>


<?php include("footer.php"); ?>			