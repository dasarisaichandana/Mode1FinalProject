<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Instructions</title>
<head>
<link type="text/css" href="<%=request.getContextPath() %>/resources/external.css" rel="stylesheet"/>
</head>
<body style="background: lightblue;">
<div class="instruct">
 <h1>INSTRUCTIONS </h1>
 <ul>
 	<li><p>Students should check questions and answers properly</p></li>
	<li><p>Students should not do any mal practices</p></li>
	<li><p>Students should check results at the end of exam</p></li>
	<li><p>Students should click final submit after completion of exam</p></li>
 </ul>
  </div>
  
	    <form action="/SpringMVCHibernateCRUD/question">
		<table width="20%" bgcolor="0099CC" align="center">

        <tr>
        <td><input type="submit" value="next" style="font-family: Roboto, sans-serif; text-transform: uppercase; outline: 0; background: #4CAF50; width: 100%; border: 0; padding: 15px; color: #ffffff; font-size: 14px; cursor: pointer;"></td>
        </tr>
</table>
</form>

  

</body>
</html>