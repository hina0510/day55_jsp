<%@page import="day55_jsp.MemberDAO"%>
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
		dao.deleteM(request.getParameter("id"));
		response.sendRedirect("index.jsp");
	%>
	<script type="text/javascript">
		alert("삭제되었습니다");
		location.href="/day55_jsp/member/memberInfo.jsp";
	</script>
</body>
</html>