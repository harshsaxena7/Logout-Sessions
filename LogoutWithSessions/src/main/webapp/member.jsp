<%@page import="jakarta.servlet.http.Cookie"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
member area<br/>
<%
String username = null, sessionId=null;
if(request.getSession().getAttribute("username")==null){
	response.sendRedirect("login.jsp");
	
}
else{
	username = request.getSession().getAttribute("username").toString();
	sessionId=request.getSession().getId();

}


%>
Username:<%=username %><br/>
SessionId:<%=sessionId %><br/>

<form action="<%= request.getContextPath() %>/MemberAreaController " method="get">
<input type="hidden" name="action" value="destroy">
<input type="submit" value="logout">
</form>





</body>
</html>