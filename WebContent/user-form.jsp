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
<style type="text/css">
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
    margin:50px 70px 10px 450px;
   
    font-family: 'Poppins', sans-serif;
    font-size: 20px;
}

.UL{
margin-left:30%;
margin-right:35%;


}


.margin{
margin-left:30%;
margin-right:35%;

}



.bold{
font-family: 'Poppins', sans-serif;
}

.italic{
font-family: 'Poppins', sans-serif;
}

.input{
display:grid;
padding-left: 80px;
padding-right: 20px;
width:100%;
}



.btn{
  background-color: #04AA6D; 
  border: none;
  color: white;
  padding: 10px 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 12px;
  border-radius:50px;
  margin-bottom: 10px;
  margin-left: 150px;
  margin-top: 5px;
  cursor: pointer;
  
}
.btn:hover{
background-color: grey;
color:white;
border:1px solid white;
font-size: 11px;
}

label {
  display: flex;
  flex-direction: row;
  justify-content: flex-start;
  text-align: right;
  width: 400px;
  line-height: 26px;
  margin-bottom: 10px;
  margin-top: 10px;
  

}

input {
  height: 20px;
  margin-left: 10px;
  margin-right: 60px;
  margin-bottom: 10px;
  padding:5px;
}






</style>
</head>
<body>

	<header>
		<nav 
			>
			<div class="heading">
				<h1>USER MANAGEMENT PORTAL</h1>
			</div>
			
             <div class = " UL ">
             <a  class="noU  bold" href="<%=request.getContextPath()%>/list"
					> >> Users List</a>
             </div>
		
		</nav>
	</header>
	<br>
	<div >
		<div >
			<div class = " margin">
				<c:if test="${user != null}">
					<form action="update" method="post">
				</c:if>
				<c:if test="${user == null}">
				
					<form action="insert" method="post">
				</c:if>

				<caption>
					<h2>
						<c:if test="${user != null}">
            			Edit User
            		</c:if>
						<c:if test="${user == null}">
            			<h3> Add New User</h3> 
            		</c:if>
					</h2>
				</caption>

				<c:if test="${user != null}">
					<input type="hidden" name="id" value="<c:out value='${user.id}' />" />
				</c:if>

			  <div class="input border">
			  
		        
					<label>User Id</label> <input type="text"
						value="<c:out value='${user.id}' />" 
						name="id" required="required">
				
		
		
		
		
					<label>User Name</label> 
					<input type="text"
						value="<c:out value='${user.name}' />" 
						name="name" required="required">
			   

			
					<label>User Email</label> <input type="text"
						value="<c:out value='${user.email}' />" 
						name="email">
			  

             
					<label>User Country</label> <input type="text"
						value="<c:out value='${user.country}' />" 
						name="country">
		
             
             <div >
				<button class="btn" type="submit" >Save</button>
			</div>	
			
			</div>
				
				</form>
			</div>
		</div>
	</div>
</body>
</html>