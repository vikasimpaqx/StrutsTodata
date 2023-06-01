<%@page import="com.crud.DeleteValues"%>
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
				DeleteValues DV = new DeleteValues();
				DV.deletevalues(id);
		%>
		
		<script type="text/javascript">
		
		window.location.href = "http://localhost:8080/StrutsTodata/successfulldelete.jsp"
		</script>
</body>
</html>