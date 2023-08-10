<%@page import="com.training.hibernateservlet.beans.User"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.training.hibernateservlet.model.HibernateManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Authorise User</title>
<style>
body {
  background-color:#dee6fa ;
  
  
  
}
.styled-table {
    border-collapse: collapse;
    margin: 25px 0;
    font-size: 0.9em;
    font-family: sans-serif;
    min-width: 400px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.15);
    
}
.styled-table thead tr {
    background-color: #7089cc;
    color: #ffffff;
    text-align: left;
}
.styled-table th,
.styled-table td {
    padding: 12px 15px;
}
.styled-table tbody tr {
    border-bottom: 1px solid #7089cc;
}

.styled-table tbody tr:nth-of-type(even) {
    background-color: #f3f3f3;
}

.styled-table tbody tr:last-of-type {
    border-bottom: 2px solid #7089cc;
}
.styled-table tbody tr.active-row {
    font-weight: bold;
    color: #7089cc;
}
.styled-table{
margin-left: auto;
  margin-right: auto;}
td {
  text-align: center;
  
}
td {
  height: 50px;
  vertical-align: bottom;
}
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,500;0,600;0,700;1,100;1,200;1,300&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;

}
@import url('https://fonts.googleapis.com/css2?family=Poppins:ital,wght@0,200;0,400;0,500;0,600;0,700;1,100;1,200;1,300&display=swap');
* {
  margin: 0;
  padding: 0;
  box-sizing: border-box;
  font-family: "Poppins", sans-serif;

}
body{
   
}

.login-page {
    height: 100vh;
    width: 100%;
    align-items: center;
    display: flex;
    justify-content: center;
}

.form {
  position: relative;
  filter:drop-shadow(0 0 2px #000000);
  border-radius: 5px;
  width: 360px;
  height: 420px;
  background-color: #ffffff;
  padding:40px;
}

.form img {
    position: absolute;
    height: 20px;
    top: 230px;
    right: 60px;
    cursor: pointer;
}

.form input {
    outline: 0;
    background: #f2f2f2;
    border-radius: 4px;
    width: 100%;
    border: 0;
    margin: 15px 0;
    padding: 15px;
    font-size: 14px;
}

.form input:focus {
    box-shadow: 0 0 5px 0 rgba(106, 98, 210);
}

span {
    color: red;
    margin: 10px 0;
    font-size: 14px;
}

.form button {
    outline: 0;
    background: #7089cc;
    width: 100%;
    border: 0;
    margin-top: 10px;
    border-radius: 3px;
    padding: 15px;
    color: #FFFFFF;
    font-size: 15px;
    -webkit-transition: all 0.3 ease;
    transition: all 0.4s ease-in-out;
    cursor: pointer;
}

.form button:hover,
.form button:active,
.form button:focus {
    background: black;
    color: #fff;

}

.message{
    margin: 15px 0;
    text-align: center;

}
.form .message a {
    font-size: 14px;
    color: #7089cc;
    text-decoration: none;
}

 
    </style>
</head>
<body>
<%
	HibernateManager hm = new HibernateManager();
    ArrayList<User> allUser = hm.readAllUser();
    %>



	<%

    for (User curSub : allUser) { %>

	<h1>
		User ID:
		<%=curSub.getUid()%></h1>

	<h1>
		User Name:
		<%=curSub.getUname()%></h1>

	<h1>
		Address:
		<%=curSub.getAddress()%></h1>
	<h1>
		Phone
		<%=curSub.getPhone()%></h1>
	<h1>
		Email:
		<%=curSub.getEmail()%></h1>
	<h1>
		Status:
		<%=curSub.getStatus()%></h1>


	<%

    }

    %>
    <div class="login-page">
        <div class="form">
            <form class="login-form " action="authorizeuser" method="post" >
                <h2 align="center">Authorize User</h2>
                <input type="text" required name="uid" placeholder="User ID" id="user" autocomplete="off" />
                
               
                <span id="vaild-pass"></span>
                <br>
                <br>
               
                <button type="submit">Add</button>
                
            </form>
        </div>
    </div>

<form action="authorizeuser" method="post">
		<label>Enter the user id you want to authorize</label> <input
			type="text" name="uid"><br>
		<br> <input type="submit">
	</form>
</body>
</html>