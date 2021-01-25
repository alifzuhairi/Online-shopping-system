<%@ page contentType="text/html; charset=iso-8859-1" language="java" import="java.sql.*" errorPage="" %>
<%
//Create an empty new variable 
  String message = null;
  String Username = request.getParameter("Username");
  String Password = request.getParameter("Password");
  //String email = request.getParameter("email");
  //String userName = request.getParameter("userName");
  //String password1 = request.getParameter("password1");
  //String password2 = request.getParameter("password2");

out.print(Username);
out.print(Password);
  PreparedStatement stmt = null;
  Connection conn = null;   
  try {
              //Connect to the database
              Class.forName("oracle.jdbc.driver.OracleDriver");
              //String hostname = "172.16.60.13";
	      String hostname = "localhost";
              int port = 1521;
              String sid = "xe";
              String oracleURL = "jdbc:oracle:thin:@"+hostname+":"+port+":"+sid;
              String user = "system";
              String pass = "system";
              conn = DriverManager.getConnection(oracleURL, user, pass);
	      conn.setAutoCommit(false);
              // Make the query
              stmt=conn.prepareStatement("insert into LOGIN values(?,?)");
              stmt.clearParameters();
              stmt.setString(1,Username);
              stmt.setString(2,Password);
              //stmt.setString(3,email);
              //stmt.setString(4,userName);
              //stmt.setString(5,password2);

             // Run the query
              stmt.executeUpdate();
              conn.commit();
              out.println("<p> <b> You have been registered !</b></p>");
   
              //Close the database connection
              stmt.close();
              conn.close();
    } catch (SQLException ex) {		
   out.println("<p><b> Could not be registered due to a system error. </b></p><p>" + ex.getMessage()+ "</p>");


   stmt.close();
   conn.close();
 } 
 
%> 





