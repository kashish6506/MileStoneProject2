<%@page import="com.training.hibernateservlet.model.HibernateManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.training.hibernateservlet.beans.*, java.util.ArrayList"
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
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
</style>
</head>
<body>
	<%

    ArrayList<Subscription> allSubscriptions = HibernateManager.readAll();

    %>

 

    <%

    for (Subscription curSub : allSubscriptions) { %>
    
    <table border="1" class="styled-table">
 <thead>
        <tr>
        <th>Subscription ID</th>

            <th>Subscription Amount</th>
            </tr>
         </thead>
 <tbody>
        <tr>
        <td><%=curSub.getSub_id()%></td>

        <td> <%=curSub.getAmount()%></td>
        </tr>
         </tbody>
         </table>

    <%

    }

    %>
</body>
</html>