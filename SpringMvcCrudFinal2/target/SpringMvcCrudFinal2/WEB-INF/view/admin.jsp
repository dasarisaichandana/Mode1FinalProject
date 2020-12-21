<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
.error{
color:red;
}
.styling1
{
font-family: Roboto, sans-serif;
 outline: 1; 
 background: "#FFEBCD";
  width: 100%; 
  border: 0;
  margin: 0 0 15px;
  padding: 15px;
  box-sizing: border-box; 
  font-size: 14px;
}
</style>

</head>
<body style="background: lightblue;">
<h3 align="center">${headerMessage}</h3>
	<form:form action="/SpringMvcCrudFinal2/loginSuccess1" method="post" modelAttribute="adminCredential">

		<table width="50%" bgcolor="#8A2BE2" align="center">
			<tr>
				
				<td><form:input path="email" placeholder="Username" cssClass="styling1"/></td>
				<td><form:errors path="email" cssClass="error" placeholder="UserName"/></td>
			</tr>
			<tr>
	
				<td><form:password path="password" placeholder="password" cssClass="styling1"/></td>
				<td><form:errors path="password" cssClass="error" /></td>
			</tr>

			<tr>
				<td><input type="submit" value="Login" style="font-family: Roboto, sans-serif; text-transform: uppercase; 
				outline: 0; background: #8A2BE2; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; 
				cursor: pointer;"></td>
			</tr>
			<tr>
        <td><input type="reset" value="Reset" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #8A2BE2; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
        
        </tr>
        
		</table>
	</form:form>
	        <form action="/SpringMVCHibernateCRUDFinal/register1">
		<table width="50%" bgcolor="0099CC" align="center">

        <tr>
        <td><input type="submit" value="signup" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #8A2BE2; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
        </tr>
</table>
</form>
	
</body>
</html>