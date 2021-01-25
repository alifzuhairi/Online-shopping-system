<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" language="java" import="java.sql.*" errorPage=""%>
<%

  String proid = request.getParameter("proid");

  PreparedStatement stmt = null;
  Connection conn = null;   
  try {
              //Connect to the database
             Class.forName("com.mysql.jdbc.Driver");
	   		 String connectionUrl = "jdbc:mysql://localhost:3306/online_shopping";
	   		 String userId = "root";
	    	 String pass = "Ayman1@1";
             conn = DriverManager.getConnection(connectionUrl , userId, pass);
	     
              // Make the query
              stmt=conn.prepareStatement("select * from product where productid = (?)");
              stmt.setString(1 , proid);
              ResultSet rs = stmt.executeQuery();
			  
              %>    


<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title> product</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style.css">

<script src="https://kit.fontawesome.com/5866728add.js" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" 
integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" 
integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

	<style>
		table, th, td {
		  border: 1px solid black;
		  border-collapse: collapse;
		}
		table.center {
		  margin-left:auto; 
		  margin-right:auto;
		}
	</style>
</head>

<body style="background-image:url('bg.png')">

   <header style="padding-top:20px">
        <!--start of top-header-->
        <div class="top-header" style="background-color:white;">
            <div class="left">
               <span>Follow use on: <i class="fab fa-facebook-square"></i> <i class="fab fa-instagram"></i></span>
            </div>
            <div class="right ml-auto">
                <ul>
                    <li><a href=""><i class="fas fa-bell"></i>&nbsp;Notification</a></li>	
                    <li><a href="logout.jsp">Logout</a></li>
                </ul>
            </div>
        </div>
        <!--end of top-header-->

        <!--start of bottom-header-->
        <div class="bottom-header">

            <!--start of site-ifo-->
            <div class="site-info">
                <div class="logo" style="font-size: 50px;">
					<a href="mainGuest.html" style="text-decoration: none;">
                     <i class="fas fa-shopping-cart" style="color:black;"></i>
                </div>
                <div class="title">
                    <h1 style="color:black;" >LASS Shop</h1></a>
                </div>
            </div>
            <!--end of site-ifo-->

        </div>
        </header>
        <!--end of bottom-header-->

   



<% while(rs.next()){  %>
<div class="row align-items-center"  style="overflow-y: scroll; height:500px;">
  <div class="col-sm-4">
    <div class="col-xs-6">
      <img class="img-thumbnai" src='<%=rs.getString("productImg")%>' alt="Card image cap" height="150px"/>
    </div>
      </div>


         <div class="col-sm-4 pull-left">
           <h1> <%=rs.getString("productName")%> </h1>
         </div>
         <div class="col-sm-4 pull-right">

         </div>
         <div class="col-sm-4">

         </div>

        <div class="col-sm-8 pull-left">
        
          <hr>
         <h6>Price : <%=rs.getString("productPrice")%> </h6>
         <br>

         <hr>
         <p>Description : <%=rs.getString("productDesc")%></p>
         <br>

         <hr>
         <div class="qty">
              Quantity: <input type="number" value="1">
        </div>

         <div class="options">
			 <a href="CartItem.html">
               <button class="btn btn-primary">Buy Now</button></a>
			    <a href="CartItem.html">
                <button class="btn btn-primary">Add to Cart</button></a>
                    </div>
         
         </div>
         
      </div>

</body>
</html>


 <%}
}catch (SQLException ex) {		
   out.println("<p><b> There is a problem  </b></p><p>" + ex.getMessage()+ "</p>");


   stmt.close();
   conn.close();
 } 
  %> 
