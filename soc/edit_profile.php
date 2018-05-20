<?php
session_start();
include("includes/connection.php");
include("functions/functions.php");
   
    if(!isset($_SESSION['user_email'])) {
         header("location:index.php");
    }
   else{
?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Document</title>
    <link rel="stylesheet" href="styles/home_style.css" media="all"/>
</head>
<body>
   <!--container starts-->
   <div class="container">
       
       <div id="head_wrap">
          <!--header starts -->
          
          
           <div id="header">
               <ul id="menu">
                   <li><a href="home.php">Home</a></li>
                   <li><a href="members.php">Members</a></li>
                   <strong class='strng'>Topics:</strong>
             <?php
                     $get_topics= "select *from topics";
                   $run_topics=mysqli_query($con,$get_topics);
                   while($row=mysqli_fetch_array($run_topics)){
                       
                       $topic_id=$row['topic_id'];
                        $topic_title=$row['topic_title'];
                       echo"<li><a href='topic.php?topic=$topic_id'>$topic_title</a></li>";
                   }
                   ?>
                   
               </ul>
               <form method="get" action="results.php" id="form1">
                   
                   <input type="text" name="user_query" placeholder="Search Something">
                   <input type="submit" name="search" value="Search">
                   
               </form>
               
               
           </div>
           <!--header ends-->
           
       </div>
       <div class="content">
          <!--user time line starts-->
           <div id="user_timeline">
           <div id="user_details">
           <?php
               
               $user = $_SESSION['user_email'];
               $get_user ="select *from users where user_email='$user'";
               $run_user=mysqli_query($con,$get_user);
               $row=mysqli_fetch_array($run_user);
               $user_id=$row['user_id'];
               $user_name=$row['user_name'];
               $user_pass=$row['user_pass'];
               $user_email=$row['user_email'];
               $user_gender=$row['user_gender'];
       
               $user_country=$row['user_country'];
               $register_date=$row['register_date'];
               $last_login=$row['last_login'];
               $user_image=$row['user_image'];
               echo "<center>
               <img src='user/user_images/$user_image' width='200px' height='200px' /></center>
               <div id='user_mention'>
               <p><strong>Name:</strong>$user_name</p>
               <p><strong>Country</strong>$user_country</p>
               <p><strong>Last Login:</strong>$last_login</p>
               <p><strong>Members Since:</strong>$register_date</p>
               
               
               <p><a href='my_messages.php?u_id=$user_id'>Messages</a></p>
               <p><a href='my_posts.php?u_id=$user_id'>My Posts</a></p>
               <p><a href='edit_profile.php?u_id=$user_id'>Edit My Account</a></p>
               
               
               <p><a href='logout.php'>Logout</a></p>
               </div>
               ";
               ?>
           
           
           </div>
            </div>
             <!--user time line ends -->
              <!--content timelien starts -->
           <div id="content_timeline">
             
              
                   
               
               
                 <form action="" method="post" id="f" enctype="multipart/form-data">
                    <h2><strong><h3>Edit Your Profile</h3></strong></h2>
                   <table align="center">
                       <tr>
                           <td align="right">Name:</td>
                           <td><input type="text" name="u_name" value="<?php echo"$user_name"; ?>"
                               
                                required="reqired"></td>
                       </tr>
                       
                         <tr>
                           <td align="right">Password:</td>
                           <td><input type="password" name="u_pass" value="<?php echo"$user_pass"; ?>" required="reqired"></td>
                       </tr>
                       
                         <tr>
                           <td align="right">Email:</td>
                           <td><input type="email" name="u_email" value="<?php echo"$user_email"; ?>" required="reqired"></td>
                       </tr>
                         <tr>
                           <td align="right">Country:</td>
                           <td>
                            <select name="u_country" disabled>
                                
                                <option><?php echo"$user_country"; ?></option>
                                <option>India</option>
                                <option>Pakistan</option>
                                <option>US</option>
                                <option>UK</option>
                                <option>Germeny</option>
                                <option>France</option>
                                
                                
                            </select>
                            
                             </td>
                       </tr>
                       
                       
                       <tr>
                           <td align="right" >Gender:</td>
                           <td>
                           <select name="u_gender" id="" disabled >
                                <option><?php echo"$user_gender"; ?></option>
                               <option value="">Male</option>
                               <option value="">Female</option>
                           </select>
                           </td>
                       </tr>    
                           
                           
                           
                         <tr>
                           <td align="right">photo</td>
                           <td><input type="file" name="u_image" required ></td>
                       </tr>
                       
                       
                      
                       
                     
                       
                       
                       <tr>
                           <td colspan="5">
                               <input type=submit name="update" value="update">
                           </td>
                         </tr>  
                           
                       
                       
                   </table> 
              
              
              
</form>
               
               
                  
             <?php
               if(isset($_POST['update'])){
                   
                    $u_name=$_POST['u_name'];
                    $u_pass=$_POST['u_pass'];
                    $u_email=$_POST['u_email'];
                    $u_image=$_FILES['u_image']['name'];
                   $image_tmp=$_FILES['u_image']['tmp_name'];
                   move_uploaded_file($image_tmp,"user/user_images/$u_image");
       $update="UPDATE users SET user_name = '$u_name',user_pass = '$u_pass',user_email = '$u_email',user_image = '$u_image' where user_id = $user_id ";
       $run=mysqli_query($con,$update);
                   
                   if($run){
                    
                    echo"<script>alert('updated succesfully')</script>";
                    echo"<script>window.open('home.php','_self')</script>";
                }
       
               }
               
       
               
               
              
               
               
               ?>
               
               
           </div>
           
            <!--content timelien starts -->
       </div>
       
       
   </div>
    <!--container ends-->
    
        
</body>
</html>
<?php } ?>