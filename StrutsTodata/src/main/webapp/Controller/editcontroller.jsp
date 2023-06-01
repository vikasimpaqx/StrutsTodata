<%@page import="com.crud.EditValues"%>
<%@page import="com.tap.database.UserBean"%>
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
				
				UserBean ub = new UserBean();
				ub.setId(id);
				ub.setFirst_name(first_name);
				ub.setLast_name(last_name);
				ub.setUsername(username);
				ub.setPassword(password);
				ub.setAdress(adress);
				ub.setC_num(c_num);
				
				EditValues EV = new EditValues();
				EV.editUser(ub);
		%>
		<script type="text/javascript">
		
		window.location.href = "http://localhost:8080/StrutsTodata/update.jsp"
		</script>
</body>
</html>