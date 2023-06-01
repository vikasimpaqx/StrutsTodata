<%@page import="com.tap.database.UserBean"%>
<%@page import="com.crud.EditValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
	<%
		String id = (String)request.getParameter("id");
			EditValues ev= new EditValues();
			UserBean ub = ev.getValues(id);
		%>
	
		
		<center>
		
		<h3>Edit values</h3>
		
		<form action ="http://localhost:8080/StrutsTodata/Controller/editcontroller.jsp">
		
		<label>serial num :</label>
		<input type ="text" name="id" value="<%=id%>"></br>
	
		<label>First name : </label>
		<input type ="text" name = "first_name" value="<%=ub.getFirst_name() %>"></br>
		
		
		<label>Last name : </label>
		<input type ="text" name = "last_name" value="<%=ub.getLast_name() %>"></br>
		
		
		<label>user name : </label>
		<input type ="text" name = "username" value="<%=ub.getUsername() %>"></br>
		
		
		<label>password : </label>
		<input type ="text" name = "password" value="<%=ub.getPassword() %>"></br>
		
		
		<label>Adress : </label>
		<input type ="text" name = "adress" value="<%=ub.getAdress() %>"></br>
		
		
		<label>Contact num : </label>
		<input type ="text" name = "c_num" value="<%=ub.getC_num()%>"></br>
		
		<input type="submit" value ="Edit">
		
		</form>
				
		</center>
</body>
</html>