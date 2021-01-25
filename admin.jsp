<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
    
<%

		String driverName = "com.mysql.jdbc.Driver";
		String connectionUrl = "jdbc:mysql://localhost:3306/";
		String dbName = "online_shopping?useTimezone=true&serverTimezone=UTC";
		String userId = "root";
		String password = "Ayman1@1";

		
		try{
			Class.forName(driverName);
			//connect to the database server	   
		   Connection connection = DriverManager.getConnection(
		    connectionUrl + dbName, userId, password);
		    Statement statement = connection.createStatement();
		    ResultSet rs = statement.executeQuery("select * from product");
		
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin</title>
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Sofia">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" 
integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" 
integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

<style type="text/css">
table{
	
	border-width: 2px;
	border-color: #ffffff;
	border-collapse: collapse;
	margin-top: 80px;
	margin-right: 20px;
	margin-left: 20px;
	margin-bottom: 20px;
	
}
table th {
	border-width: 2px;
	padding: 8px;
	border-style: solid;
	border-color: #ffffff;
	font: normal 36px 'Cookie', cursive;
	color:  #e0ac1c;
}
table tr {
	background-color:#333;
}
table td {
	border-width: 2px;
	padding: 8px;
	border-style: solid;
	border-color: #ffffff;
	font-family: "Lucida Console", Courier, monospace;
	font-size: 14px;
	font-weight: bold;
	color: #ffffff;
}
</style>

</head>
<body>

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
					<a href="mainGuest.jsp" style="text-decoration: none;">
                     <i class="fas fa-shopping-cart" style="color:black;"></i>
                </div>
                <div class="title">
                    <h1 style="color:black;" >LASS Shop</h1></a>
                </div>
            </div>
            <!--end of site-ifo-->

            <div class="cart">
				<a href="CartItem.html" style="color:black;">
                 <i class="fas fa-shopping-cart"></i></a>
            </div>

        </div>
        <!--end of bottom-header-->

    </header>
    
    
  
    <table border='1' style=" width: 80%; margin: 0 auto; text-align: center;">

<tr>


<th>Image</th>

<th>name</th>

<th>Description</th>
<th>Process</th>


</tr>
<% while(rs.next()){  %>
   <tr onmouseover="this.style.backgroundColor='#e0ac1c';" onmouseout="this.style.backgroundColor='#333';">
	<td width="250px"><img height="200px" width="250px" class="img" alt="Card image cap" src="<%=rs.getString("productImg")%>"></td>
	 <td width="150px">  <%=rs.getString("productName")%> </td>
	 <td> <div class="desc"><p>  <%=rs.getString("productDesc")%> </p></div></td>
	
     <td>
     	<form  action="logout.jsp"  method="GET">
   			<button class="btn btn-danger" type="submit" name="id">Delete Item</button>
		</form>
	</td>
 </tr>
		<% } %>
</table>
    
    

</body>
</html>
 <%
   
}catch (SQLException ex) {		
   out.println("<p><b> There is a problem  </b></p><p>" + ex.getMessage()+ "</p>");
 } 
  %> 