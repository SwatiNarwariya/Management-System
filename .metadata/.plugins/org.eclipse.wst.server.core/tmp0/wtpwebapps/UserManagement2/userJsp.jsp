<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
    
     
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<header > <div>
<h1 class="headerDiv">User Management System </h1>
<h2> <a href=   "<%= request.getContextPath()%>/list">User List </a></h2>
<h2> <a href=   "user-list.jsp">User List 2 </a></h2>

</div></header>
<div class="container">
  <form action="insert" method="POST"  >
  <div class="row">
    <div class="col-25">
      <label for="fname"> Name</label>
    </div>
    <div class="col-75">
      <input type="text" id="fname" name="name" placeholder="Your name..">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="Email">Email</label>
    </div>
      <div class="col-75">
      <input type="text" id="Email" name="email" placeholder="Enter Email">
    </div>
  </div>
  <div class="row">
    <div class="col-25">
      <label for="lname">Country</label>
    </div>
    <div class="col-75">
      <input type="text" id="lname" name="country" placeholder="Enter Country">
    </div>
  </div>
 
  <br>
  <div class="row">
    <input type="submit" >
  </div>
  </form>
</div>

</body>
</html>