<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home Page</title>

<style>
body{
    background-image:url('https://tse3.mm.bing.net/th?id=OIP.NyT91RhFKcZnzzMaHVaImAHaEK&pid=Api&P=0&w=300&h=170');
    background-size: cover;
    height: 100vh;
    padding:0;
    margin:0;
}
body{
 
 background-size:cover;
 color:#ffff;
 }
tr{
 list-stle-type:none;
 margin:0;
 padding:0;
 overflow:hidden;
 background-color:#333;
}
td{
float:left;
}
td a{
display:inline-block;
color:white;
text-align:center;
padding:14px 16px;
text-decoration:none;
}
td a:hover{
background-color:#111;
}

</style>
</head>
<body >
<h3 align="center">${headerMessage}</h3>
        <form action="/SpringMVCHibernateCRUD/login">
        <table align="center">
        
				<tr>
                <td><a href="/SpringMVCHibernateCRUD/login">Login</a>
                </td>
                <td><a href="/SpringMVCHibernateCRUD/register">Student Register</a>
                </td>
                <td><a href="/SpringMVCHibernateCRUD/login1">Admin</a>
                </td>
                <td><a href="/SpringMVCHibernateCRUD/register1">AdminRegister</a>
                </td>
                <td><a href="/SpringMVCHibernateCRUD/login">LogOut</a>
                </td>
            </tr>
            
            </table>
        
</form>

</body>
</html>