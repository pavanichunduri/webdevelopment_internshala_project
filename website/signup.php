<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" >
        <!--jQuery library--> 
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!--Latest compiled and minified JavaScript--> 
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Forms in Bootstrap</title>
    </head>
    <body>
        <?php 
require 'headbeforelogin.php';
if(!isset($SESSION['id'])){ ?>
        <h2><center><?php echo "Hello Guest";?></center></h2>
        <?php
	require 'headbeforelogin.php';
 ?>
        <div class="container-fluid">
            <div class="row">
                    <!--Enter your code here-->
                    <div class="col-xs-6">
                        <img src="images/mobile.jpg" width="100%">
                    </div>      
              <div class="col-xs-4">
                <form method="POST" action="signup_script.php">
                    <div class="form-group">
                        <label for="first_name">First name</label>
                        <input type="text" class="form-control" id="first_name" name="first_name"  required="true" pattern=".{1,}">
                    </div>
                    <div class="form-group">
                        <label for="last_name">Last name</label>
                        <input type="text" class="form-control" id="last_name" name="last_name"  required="true" pattern=".{1,}">
                    </div>
                    
                    <div class="form-group">
                        <label for="email">Email</label>
                        <input type="text" class="form-control" id="email" name="email">
                    </div>
                    <div class="form-group">
                        <label for="password">Password</label>
                        <input type="text" class="form-control" id="password" name="password"  required="true" pattern=".{8}">
                    </div>
                    <div class="form-group">
                        <label for="contact">Contact</label>
                        <input type="text" class="form-control" id="contact" name="contact"  required="true" pattern=".{10}" >
                    </div> 
                    <div class="form-group">
                        <label for="address">Address</label>
                        <input type="text" class="form-control" id="address" name="address" required="true" pattern=".{1,}">
                    </div> 
                    <div class="form-group">
                        <label for="city">City</label>
                        <input type="text" class="form-control" id="city" name="city" required="true" pattern=".{1,}">
                    </div> 
                        <button class="btn btn-primary" type="submit" value="Submit"  name="button">Submit</button>	
                    
                </form>
                  <br><p>Aleady Registered? <a data-toggle="modal" data-target="#mymodal">Login</a> </p>

</div>
            </div>
        </div>
        <?php require 'loginmodal.php'; ?>

<?php } ?>
        <div style="background-color: #333; color:white ;">
<?php require 'foot.php' ?>
</div>

    </body>
</html>