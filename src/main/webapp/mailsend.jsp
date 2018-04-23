<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<%@ page import="com.mail.SendMail"%>
</head>
<body>
	<%!String userEmail_id = "";
	String msg = "";
	SendMail sm;
	%>
	<%
		userEmail_id = request.getParameter("email");
		String subject = request.getParameter("subject");
		msg = request.getParameter("message");
		String name = request.getParameter("name");

		if (userEmail_id != "" && msg != "") {
			sm = new SendMail();
			sm.sendMail(name, userEmail_id, subject, msg);
		}
	%>
	<jsp:forward page="contact.jsp"></jsp:forward>
</body>
</html>