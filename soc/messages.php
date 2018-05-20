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
               $user_country=$row['user_country'];
               $register_date=$row['register_date'];
               $last_login=$row['last_login'];
               $user_image=$row['user_image'];
       
       $user_posts = "select *from posts where user_id = '$user_id'";
       $run_posts = mysqli_query($con,$user_posts);
       $posts = mysqli_num_rows($run_posts);
       
       
               echo "<center>
               <img src='user/user_images/$user_image' width='200px' height='200px' /></center>
               <div id='user_men tion'>
               <p><strong>Name:</strong>$user_name</p>
               <p><strong>Country</strong>$user_country</p>
               <p><strong>Last Login:</strong>$last_login</p>
               <p><strong>Members Since:</strong>$register_date</p>
               
               
               <p><a href='my_messages.php?u_id=$user_id'>Messages</a></p>
               <p><a href='my_posts.php?u_id=$user_id'>My Posts($posts)</a></p>
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
             <?php
       
              if(isset($_GET['u_id'])){
          
          //global $con;
          $user_id = $_GET['u_id'];
          $sel = "select * from users where user_id='$user_id' ";
          
           $run = mysqli_query($con,$sel);
          $row = mysqli_fetch_array($run);
          
        
          $image = $row['user_image'];
          $name = $row['user_name'];
           $reg_date = $row['register_date'];
                 
                 
              }
               
               
               ?>
                
                <h2>Send a message to <span style="color:red;"><?php
                    echo $user_name;?></span></h2>
                    
                    
                 <form action="messages.php?u_id=<?php
                    echo $user_id;?>" method="post" id="f">
                        <input type="text" name="msg_title" placeholder="message subject" size="49"/>
                        <textarea name="msg" id="" cols="50" rows="5" placeholder="message topic"></textarea><br/>
                        <input type="submit" name="message" value="Send message">
                    </form><br/>
                    <img style="border:2px solid blue; border-radius:5px;" src="user/user_images/<?php echo $user_image;?>"  width="100" height="100"alt=""/>
<p><strong><?php echo $user_name;?></strong>is member of theis site since:
            <?php echo $reg_date;?>
            </p>                 
             
               
           </div>
           
            <!--content timelien starts -->
       </div>
       
       
   </div>
    <!--container ends-->
    
        
</body>
</html>
<?php } ?>