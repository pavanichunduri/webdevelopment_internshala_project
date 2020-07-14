<?php
session_start();
?>
<DOCTTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!--jQuery library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!--Latest compiled and minified JavaScript--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Navbar in Bootstrap</title>
    </head>
    <body>
        <?php
         if(!isset($_SESSION['id'])){ 
	require 'headbeforelogin.php';
         
	?>
         
        <div class="container">
            <div class="row">
                <?php
                $con = mysqli_connect("localhost:3308", "root", "", "ecommerce") or die(mysqli_error($con));
                $query="select id,name,specifications,cost from products";
                $queryresult=mysqli_query($con,$query) or die(mysqli_error($con));
                $n=mysqli_num_rows($queryresult);
                for($i=0;$i<$n;$i=$i+1)
                
                {
                    $r=mysqli_fetch_array($queryresult);
                ?>
                <div class="col-lg-4 bg-light text-dark" style=width:"100%">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <?php echo $r[1];?>
                        </div>
                        <div class="panel-body">
             
                            <img src="images/<?php echo $r[0];?>.jpg" width="100%">
                         <?php echo $r[2]."<br>";
                         echo "Cost  ".$r[3];?>
                        </div>
                        <div class="panel-footer">
                        <button class="btn btn-primary form-control" type="button" value="Submit"data-toggle="modal" data-target="#mymodal">Order Now!</button>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
        
         <?php } else{
            require 'headafterlogin.php';
        ?>
        <div  class="container" style="margin-top: 60px;">
<b>
<?php
echo "Hi ".$_SESSION['first_name'];
 ?>
   <div class="container-fluid">
            <div class="row">
                <?php
                $con = mysqli_connect("localhost:3308", "root", "", "ecommerce") or die(mysqli_error($con));
                $query="select id,name,specifications,cost from products";
                $queryresult=mysqli_query($con,$query) or die(mysqli_error($con));
                $n=mysqli_num_rows($queryresult);
                for($i=0;$i<$n;$i=$i+1)
                
                {
                    $r=mysqli_fetch_array($queryresult);
                ?>
                <div class="col-lg-4 bg-light text-dark">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <?php  echo "PID:",$r[0],"<br>",$r[1];?>
                        </div>
                        <div class="panel-body">
             
                            <img src="images/<?php echo $r[0];?>.jpg" width="100%">
                         <?php echo $r[2]."<br>";
                         echo "Cost  ".$r[3];?>
                        </div>
                        <div class="panel-footer">
                            <button class="btn btn-primary form-control" type="button" value="Submit"data-toggle="modal" data-target="#all">Add to cart</button>
                        </div>
                    </div>
                </div>
                <?php } ?>
            </div>
        </div>
         <?php } ?>
</b>
</div>
   <?php
	require 'loginmodal.php';
        require 'addtocart.php';
        require 'foot.php';
	?>     
</body>
</html>

