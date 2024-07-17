<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <%@ page import="com.admin.user.management.user.User" %>
     <%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/style2.css" rel="stylesheet" type="text/css">
</head>
<body>

<div>
<header > <div>
<h1 class="headerDiv">User Management System </h1>


</div></header>




<table>
<tr>

    <th>Id</th>
    <th>Name</th>
    <th>Email</th>
    <th>Country</th>
     <th>Delete</th>
     <th>Edit</th>
    
  </tr>
  <tr>

  
  <c:forEach var="user" items="${listUser}">

						<tr>
							<td><c:out value="${user.id}" /></td>
							<td><c:out value="${user.name}" /></td>
							<td><c:out value="${user.email}" /></td>
							<td><c:out value="${user.country}" /></td>
							
						</tr>
					</c:forEach>
  
  
  
</tr>
   
      
        <tr>
     
  </tr>
</table>

<a href="<%=request.getContextPath()%>/new" >Add
					New User</a>


</div>

</header>
</body>
</html>