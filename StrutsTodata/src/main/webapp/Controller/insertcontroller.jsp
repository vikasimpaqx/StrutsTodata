<%@page import="com.crud.Insertvalues"%>
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
				String  id = request.getParameter("id");
				String first_name=request.getParameter("first_name");
				String last_name = request.getParameter("last_name");
				String username=request.getParameter("username");
				String password = request.getParameter("password");		
				String adress=request.getParameter("adress");
				String c_num = request.getParameter("c_num");		
				
				
				
				Insertvalues iv = new Insertvalues();
				iv.insertValues(id, first_name, last_name, username, password, adress, c_num);
		%>
		
		<script type="text/javascript">
		
		window.location.href = "http://localhost:8080/StrutsTodata/successfullinserted.jsp"
		</script>
		
</body>
</html>