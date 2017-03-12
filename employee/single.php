<?php
session_start();

if(isset($_SESSION['username']))
{
	$username=$_SESSION['username'];
	
}
include("../config.php");
?>
<?php
	if(isset($_REQUEST['employee_id'])) {

		$employee_id = $_REQUEST['employee_id'];
	}
	
	include('config.php');
?>


<!--Header Call-->
<?php include('header.php');?>

<div id="site_content">	
	<div class="main2">
		<div class="main_registraion">
				<div class="registration_box fix">
				<form action="" method="post">
					<?php
						$statement = $db->prepare("SELECT * FROM employee_list WHERE employee_id =? ORDER BY employee_id ");
						$statement->execute(array($employee_id));
						$result = $statement->fetchAll(PDO::FETCH_ASSOC);
					foreach($result as $row)
					{
						$employee_pic = $row['employee_pic'];
						$firstname = $row['firstname'];
						$lastname = $row['lastname'];
						$contact_num = $row['contact_number'];
						$address = $row['address'];
						$email = $row['email'];
						
						?>
					<table>
		
					<tr>
						<td class="profile_image2"><a href="../uploads/<?php echo $row['employee_pic']; ?>"><img class="Pimg" src="../uploads/<?php echo $row['employee_pic']; ?>" alt="" width="230" height="280"/></a></td>
					</tr>					
					<tr class="f_name">
						<td><b>First Name :  <?php echo $firstname;?></b></td>
					</tr>
					<tr class="l_name">
						<td><b>Last Name :  <?php echo $lastname;?></b></td>
					</tr>
		
				
					<tr class="address">
						<td><b>Address : <?php echo $address;?></b></td>
					</tr>
					<tr class="email">
						<td><b>E-mail : <?php echo $email;?></b></td>
					</tr>
					</table>
					<?php
					}
					?>
				</form>
				</div>
		</div>
	</div>	
</div>
<!--Footer Text Part-->		
<?php include('footer.php');?>	