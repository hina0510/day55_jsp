<%@page import="java.sql.PreparedStatement"%>
<%@page import="day55_jsp.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	%>
	<jsp:useBean id="dto" class="day55_jsp.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	
	<jsp:useBean id="dao" class="day55_jsp.MemberDAO" />
	
	<%
		dao.modify(dto);
		response.sendRedirect("detail.jsp?id="+dto.getId());
	%>
</body>
</html>