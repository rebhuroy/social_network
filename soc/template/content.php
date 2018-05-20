
            <div id="content">
                <div>
                    <img src="images/profile.jpg" alt="" style="
                    float:left;margin-left:-20px">
                    
                </div>
                <!--content Ends-->
                <div>
                 
                   <form action="" method="post" id="form2">
                    <h2><strong>Sign Up Here</strong></h2>
                   <table>
                       <tr>
                           <td align="right">Name:</td>
                           <td><input type="text" name="u_name" placeholder="Enter your name" required="reqired"></td>
                       </tr>
                       
                         <tr>
                           <td align="right">Password:</td>
                           <td><input type="password" name="u_pass" placeholder="Enter your Password" required="reqired"></td>
                       </tr>
                       
                         <tr>
                           <td align="right">Email:</td>
                           <td><input type="email" name="u_email" placeholder="Enter your Email" required="reqired"></td>
                       </tr>
                         <tr>
                           <td align="right">Country:</td>
                           <td>
                            <select name="u_country" required="reqired">
                                
                                <option>Select A Country</option>
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
                           <select name="u_gender" id="" required="reqired">
                                <option>Select A Gender</option>
                               <option value="">Male</option>
                               <option value="">Female</option>
                           </select>
                           </td>
                       </tr>    
                           
                           
                           
                       
                       
                       
                       <tr>
                           <td align="right">DOB</td>
                           <td><input type="date" name="u_birthday" ></td>
                       </tr>
                       
                       
                       <tr>
                           <td colspan="5">
                          <button name="sign_up">Sign Up</button>
                           </td>
                         </tr>  
                           
                       
                       
                   </table> 
              
              
              
</form>
<?php
                  include("user_insert.php");
                    ?>
                
                
                </div>
            </div>
            <!--Content area ends-->
            
        </div> 