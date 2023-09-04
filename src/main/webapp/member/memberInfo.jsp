<%@page import="day55_jsp.MemberDTO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	section {padding :2% 10%; display:flex; flex-flow: row;}
	section > #div01 {order:1; width : 100%; margin: 0 33%;}
	h1 {text-align: center; }
</style>
</head>
<body>
	<%
	if(session.getAttribute("id")==null){
	%>
	<script type="text/javascript">
		location.href="/day55_jsp/member/login.jsp";
	</script>
	<%}else{%>
		<%@ include file="../default/header.jsp" %>
		<%@page import="day55_jsp.MemberDTO"%>
		<%@page import="java.util.ArrayList"%>
		<jsp:useBean id="dao" class="day55_jsp.MemberDAO"/>
		<% ArrayList<MemberDTO> list = dao.getList();%>
		<section>
			<div id="div01">
				<h1>회원 목록</h1>
				<table border="1">
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>주소</th>
					</tr>
					<% for(MemberDTO d :list){ %>
					<tr>
						<td><%=d.getId()%></td>
						<td><a href="detail.jsp?id=<%=d.getId()%>"><%=d.getName()%></a></td>
						<td><%=d.getAddr()%></td>
					</tr>
					<%} %>
				</table>
			</div>
		</section>
	<%} %>
	<hr>
</body>
</html>