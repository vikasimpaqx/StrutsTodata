<%@page import="com.tap.database.UserBean"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="com.crud.ReadValues"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>

<html>
<head>
<title>The View Of Database Table</title>
</head>
<%
ReadValues RD = new ReadValues();

List<UserBean> list = RD.getValues();

Iterator<UserBean> it_list = list.iterator();
%>
<h1>View Department table</h1>

<body>


	<table BORDER="1">
		<tr>
			<th>Id</th>
			<th>First_name</th>
			<th>Last_name</th>
			<th>Username</th>
			<th>Password</th>
			<th>Adress</th>
			<th>C_num</th>
		</tr>
		<%
		while (it_list.hasNext()) {
			UserBean UB = new UserBean();
			UB = it_list.next();
		%>
		<tr>
			<td><%=UB.getId()%></td>
			<td><%=UB.getFirst_name()%></td>
			<td><%=UB.getLast_name()%></td>
			<td><%=UB.getUsername()%></td>
			<td><%=UB.getPassword()%></td>
			<td><%=UB.getAdress()%></td>
			<td><%=UB.getC_num()%></td>
			<td>
			<a href="edit.jsp?id=<%=UB.getId() %>">Edit</a>
			</td>
			
		</tr>
		<%               
		}
		%>
	</table>
</body>
</html>