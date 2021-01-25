<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Count Rows JSP</title>
</head>
<body>

<%try
{
//Connect to the database
              Class.forName("oracle.jdbc.driver.OracleDriver");
              //String hostname = "172.16.60.13";
	      String hostname = "localhost";
              int port = 1521;
              String sid = "xe";
              String oracleURL = "jdbc:oracle:thin:@"+hostname+":"+port+":"+sid;
              String user = "system";
              String pass = "system";
              Connection conn = DriverManager.getConnection(oracleURL, user, pass);
	      conn.setAutoCommit(false);
/*mail code
paste your mail code here
------------------
Mail code*/
if(1==1){
out.println("Password send to your email id successfully !");}
else{
out.println("Invalid Email Id !");
}
}
catch (Exception e){
e.printStackTrace();
}
%>
</body>
</html>