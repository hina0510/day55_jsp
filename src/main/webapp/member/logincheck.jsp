<%@page import="day55_jsp.MemberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="day55_jsp.DBConnect"%>
<%@page import="day55_jsp.MemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<jsp:useBean id="dto" class="day55_jsp.MemberDTO"/>
	<jsp:setProperty property="*" name="dto"/>
	<%
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		MemberDAO dao = new MemberDAO();
		int result = dao.loginChk( dto.getId(), dto.getPwd() );
		if(result == 0){
			session.setAttribute("id", id);%>
			<script type="text/javascript">
				alert("로그인 성공");
				location.href="successLogin.jsp";
			</script>
		<%}else if(result == 1){//비밀번호 틀림%>
			<script type="text/javascript">
				alert("비밀번호가 일치하지 않습니다.");
				location.href="login.jsp";
			</script>
		<%}else{//존재하지 않는 id%>
			<script type="text/javascript">
				alert("등록되지 않은 아이디입니다.");
				location.href="login.jsp";
			</script>
		<%}%>
</body>
</html>