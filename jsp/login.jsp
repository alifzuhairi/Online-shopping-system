
  <%@page contentType="text/html" pageEncoding="UTF-8"%>
 <html>
 <head>
 <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> <title>JSP Page</title>
<p>

[<style>

   body{
     background-color: lightblue;
   }
  
   p {
  border: 2px solid black;
  border-radius: 2px;
}

   
</style>   
 </head>
 <body>
 <center>

 <table> 
<h1>Login</h1>
<h2><b>Welcome to LAAS Shop</h2></b>
 

 <form action="/suhana/archi/logincheck.jsp" method="post">
 

 <br><td><tr>Username:<input type="text" name="username"></br></td></tr>
 <br>Password:<input type="password" name="password"></br>


<td><td><tr><br><input type="submit" value="Login"></td></td></tr></br>


 </form> 
<br><a href="index.html" >Forgot Password</a></br>
</p>
</table>
</center>
</body>
 </html>

