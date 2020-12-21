<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body style="background: lightblue;">
<h1>Exam Completed</h1>
<%
String qa1=request.getParameter("q1");
String qa2=request.getParameter("q2");
String qa3=request.getParameter("q3");
int count=0;

Connection con=null;
Statement st=null;
ResultSet rs=null;
try{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/sai","root","Dasarisai@9963");
st=con.createStatement();
rs=st.executeQuery("select*from answer1");
while(rs.next()){
	if(qa1.equals(rs.getString("qa1"))){
		count=count+1;
	}
	if(qa2.equals(rs.getString("qa2"))){
		count=count+1;
	}
	if(qa3.equals(rs.getString("qa3"))){
		count=count+1;
	}
}
out.println(" Your Score is : "  +count);
if(count<=2){
	out.println("Fail....Better luck in next attempt...!");
}
else{
	out.println("Pass....! Congratulations.....!");
}
}catch(Exception e)
{
	out.println(e);
	}



%>



</body>
</html>