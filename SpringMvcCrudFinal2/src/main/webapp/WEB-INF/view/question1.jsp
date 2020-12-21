<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<sql:setDataSource
        var="myDS"
        driver="com.mysql.cj.jdbc.Driver"
        url="jdbc:mysql://localhost:3306/sai"
        user="root" password="Dasarisai@9963"
    />
    <sql:query var="questions"   dataSource="${myDS}">
        SELECT * FROM question1;
    </sql:query>
    <form action="/SpringMVCHibernateCRUDFinal/result" method="get">
    
 <c:forEach var="user" items="${questions.rows}">
                
                    <tr>
                     
                    <td><c:out value="${user.id}" /></td>
                    
                    
                    
                    
                 	<td><c:out value="${user.content}" /></td>
                    </br>
                    
                    
                    <td> <input type="radio" name=myradio1 value="${user.opt1}">
                    <c:out value="${user.opt1}" /></td>
                    </br>
                    
                    <td> <input type="radio" name=myradio1 value="${user.opt2}">
                    <c:out value="${user.opt2}" /></td>
                    </br>
                    
                    <td> <input type="radio" name=myradio1 value="${user.opt3}">
                    <c:out value="${user.opt3}" /></td>
                    </br>
                    
                    <td> <input type="radio" name=myradio1 value="${user.opt4}">
                    <c:out value="${user.opt4}" /></td>
                    </tr></br>
                    
</c:forEach></br>
<%
String option=request.getParameter("myradio1");
out.println(option);

%>
<input type="submit" value="submit"/>

</form>>
</body>
</html>

   


    
     
    
     
   