<?php 
include_once("db_connect.php");
include('header.php');
?>
<title>Deom Drag and Drop Reorder with jQuery, PHP & MySQL</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.4/jquery.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jqueryui/1.12.1/jquery-ui.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.5/css/bootstrap.min.css">
<script type="text/javascript" src="reorder.js"></script>
<link rel="stylesheet" href="style.css">
<?php include('container.php');?>
<div class="container">
	<h2>Example: Drag and Drop Reorder Images in Gallery</h2>
	
	<div>		
		<div class="gallery">
			<ul class="reorder-gallery">
			<?php 			
			$sql_query = "SELECT id, image_name FROM reorder ORDER BY display_order";
			$resultset = mysqli_query($conn, $sql_query) or die("database error:". mysqli_error($conn));
			$data_records = array();
			while( $row = mysqli_fetch_assoc($resultset)) {				
			?>
				<li id="<?php echo $row['id']; ?>" class="ui-sortable-handle"><a href="javascript:void(0);"><img src="images/<?php echo $row['image_name']; ?>" alt=""></a></li>
			<?php } ?>
			</ul>
		</div>
	</div>
		
</div>
<?php include('footer.php');?>


