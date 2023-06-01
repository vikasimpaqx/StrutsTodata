<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<center>
		<form action = "http://localhost:8080/StrutsTodata/Controller/insertcontroller.jsp">
		
		
		<h3> Wel come to employee registration </h3>
		
		<label>serial num :</label>
		<input type ="text" name="id"></br>
	
		<label>First name : </label>
		<input type ="text" name = "first_name"></br>
		
		
		<label>Last name : </label>
		<input type ="text" name = "last_name"></br>
		
		
		<label>user name : </label>
		<input type ="text" name = "username"></br>
		
		
		<label>password : </label>
		<input type ="text" name = "password"></br>
		
		
		<label>Adress : </label>
		<input type ="text" name = "adress"></br>
		
		
		<label>Contact num : </label>
		<input type ="text" name = "c_num"></br>
		
		<input type="submit" value ="insert">
		
		</form>
				
		</center>
</body>
</html>