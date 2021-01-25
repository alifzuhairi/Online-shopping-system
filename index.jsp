<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.io.*,java.util.*,java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>LAAS Shop</title>
 <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <link rel="stylesheet" href="css/all.min.css">
    <link rel="stylesheet" href="css/style.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" 
integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" 
integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" 
integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous">

<script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.5.4/dist/umd/popper.min.js" 
integrity="sha384-q2kxQ16AaE6UbzuKqyBE9/u/KzioAlnx2maXQHiDX9d4/zp8Ok3f+M7DPm+Ib6IU" crossorigin="anonymous"></script>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.min.js" 
integrity="sha384-pQQkAEnwaBkjpqZ8RU1fF1AKtTcHJwFl3pblpTlHXybJjHpMYo79HY3hIi4NKxyj" crossorigin="anonymous"></script>
<script src="https://kit.fontawesome.com/5866728add.js" crossorigin="anonymous"></script>

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
                    <li><a href="createAccount.html">Sign Up</a></li>
                    <li><a href="login_use.html">Login</a></li>
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

            <div class="search">
            <i class="fas fa-search"></i>
            <input type="text" placeholder="search">
			&nbsp;
            <button><i class="fas fa-search"></i></button>
            </div>

            <div class="cart">
				<a href="CartItem.html" style="color:black;">
                 <i class="fas fa-shopping-cart"></i></a>
            </div>

        </div>
        <!--end of bottom-header-->

    </header>
    </header>
	
    <main style="background-color:white">
        <div class="side-bar">
            <div class="category">
                <h4>Category</h4>
                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category A</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category B</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category C</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category D</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category E</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category E</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category E</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category E</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category E</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category A</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category A</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category A</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category A</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Category A</span>
                </div>
                <!--end of filter-->

            </div>
            <div class="price">
                <h4>Price</h4>
                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range1</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range2</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range3</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range4</span>
                </div>
                <!--end of filter-->

                <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range5</span>
                </div>
                <!--end of filter-->

                 <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range5</span>
                </div>
                <!--end of filter-->

                 <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range5</span>
                </div>
                <!--end of filter-->

                 <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range5</span>
                </div>
                <!--end of filter-->

                 <!--start of filter-->
                <div class="filter">
                    <input type="checkbox">
                    &nbsp;
                    <span>Range5</span>
                </div>
                <!--end of filter-->
            </div>
            <!--end of price-->


            </div>
            <!--end of side-bar-->

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
      <div class="row" style="overflow-y: scroll; height:400px;">
      <%
      while(rs.next()) {
      %>
       <div class="col-sm-4" style="padding-top: 10px;">
          <div class="card" style="width: 18rem;">
              <img class="img-responsive"
              src="<%=rs.getString("productImg")%>" alt="Card image cap" height="250" />
          
                <hr>
              <div class="card-body">
            <a href='singleProduct.jsp?proid=<%=rs.getString("productid")%>' type="hidden"> <h5 class="card-title"> <%=rs.getString("productName")%> </h5> </a>
              <h6 class="card-title"><%=rs.getString("productPrice")%></h6>

             </div>
             </div>
             <br>

      </div>
 <%
 /* 
 
 
 
 */
	    	}
	%>
    </div>

</body>
</html>

	<%
	    } catch(Exception e) {
	    	out.println(e.getMessage());
	    }
    %>