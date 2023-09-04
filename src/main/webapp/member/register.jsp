<%@page import="java.sql.ResultSet"%>
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
			String id = request.getParameter("id");
	%>
	<jsp:useBean id="dto" class="day55_jsp.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	
	<jsp:useBean id="dao" class="day55_jsp.MemberDAO" />
	<%
		dao.register(dto);
		response.sendRedirect("login.jsp");
	%>
	<script type="text/javascript">
		alert("가입 완료");
		location.href="/day55_jsp/member/login.jsp";
	</script>
</body>
</html>