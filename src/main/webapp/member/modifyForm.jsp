<%@page import="day55_jsp.MemberDAO"%>
<%@page import="day55_jsp.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
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
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.getMember( request.getParameter("id") );
	%>
	<%@ include file="../default/header.jsp" %>
		<form action="modify.jsp" method="post">
		아이디<input type="text" name="id" readonly value="<%=dto.getId()%>"><br>
		비밀번호<input type="text" name="pwd" value="<%=dto.getPwd()%>"><br>
		이름<input type="text" name="name" value="<%=dto.getName()%>"><br>
		주소<input type="text" name="addr" value="<%=dto.getAddr()%>"><br>
		전화번호<input type="text" name="tel" value="<%=dto.getTel()%>"><br>
		<input type="submit" value="완료">
		<a href="memberInfo.jsp">취소</a>
		</form>
</body>
</html>