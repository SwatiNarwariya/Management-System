<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@600&family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@900&display=swap" rel="stylesheet">
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Poppins:ital,wght@1,500&display=swap" rel="stylesheet">


<title>User Management Application</title>

<style>
*{

font-family: 'Poppins', sans-serif;
font-family: 'Roboto', sans-serif;

}


.noU{
text-decoration:none;
}

.border{
border:2px solid black;
}

.heading{
    width: 100%;
    margin:50px 30px 30px 500px;
   
    font-family: 'Poppins', sans-serif;
}
.margin{
margin-left:25%;
margin-right:30%;
}

.p{

padding-left:60px;
}

.tableEle{
padding-left:60px;
padding-right:20px;
padding-top:20px;
padding-bottom:20px
}

.bold{
font-family: 'Poppins', sans-serif;
}

.italic{
font-family: 'Poppins', sans-serif;
}


</style>

</head>
<body>

	<header>
		
			<div class="heading">
				<h1>USER MANAGEMENT PORTAL</h1>
			</div>

			<!-- <ul >
				<li class="noU"><a href="<%=request.getContextPath()%>/list"
					>Users</a></li>
			</ul> -->
		
	</header>
	<br>

	<div >
	

		<div class=" margin">
			<h3 >List of Users</h3>
			<hr>
			
	    </div>
			<div class=" margin">

				<a class="noU  bold"  href="<%=request.getContextPath()%>/new" > >> Add
					New User</a>
			</div>
			<br>
			
			
			<div  class="  margin ">
					<table class=" border  " >
				<thead>
					<tr> 
						<th class="tableEle" >ID</th>
						<th class="tableEle" >Name</th>
						<th class="tableEle" >Email</th>
						<th class="tableEle" >Country</th>
						<th class="tableEle" >Actions</th>
					</tr>
				</thead>
				<tbody >
				
					
					<c:forEach var="user" items="${listUser}">

						<tr >
							<td  class="p"><c:out value="${user.id}" /></td>
							<td class="p" ><c:out value="${user.name}" /></td>
							<td class="p" ><c:out value="${user.email}" /></td>
							<td class="p" ><c:out value="${user.country}" /></td>
							<td class="p" ><a class="noU italic" href="edit?id=<c:out value='${user.id}' />">Edit</a>
								 
								<a class="noU italic" href="delete?id=<c:out value='${user.id}' />">Delete</a></td>
								
						</tr>
					</c:forEach>
					<!-- } -->
				</tbody>

			</table>
			</div>
	</div>
	
	
	
</body>
</html>