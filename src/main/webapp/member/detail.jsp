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
<style type="text/css">
	section {padding :2% 10%; display:flex; flex-flow: row;}
	section > #div01 {order:1; width : 100%; margin: 0 35%;}
	h1 {text-align: center; }
	.b {text-align: center; font-weight: bold;}
	.c {text-align: left;}
</style>
</head>
<body>
	<%@ include file="../default/header.jsp" %>
	<%
		MemberDAO dao = new MemberDAO();
		MemberDTO dto = dao.getMember( request.getParameter("id") );
	%>
		<section>
			<div id="div01">
				<h1>개인 정보</h1>
					<table>
						<tr>
							<td class="b">아 이 디</td>
							<td class="c"><%=dto.getId()%></td>
						</tr>
						<tr>
							<td class="b">비밀번호</td>
							<td class="c"><%=dto.getPwd()%></td>
						</tr>
						<tr>
							<td class="b">이 름</td>
							<td class="c"><%=dto.getName()%></td>
						</tr>
						<tr>
							<td class="b">주 소</td>
							<td class="c"><%=dto.getAddr()%></td>
						</tr>
						<tr>
							<td class="b">전화번호</td>
							<td class="c"><%=dto.getTel()%></td>
						</tr>
					</table>
					<button type="button" onclick="location.href='modifyForm.jsp?id=<%=dto.getId()%>'">수정</button>
					<button type="button" onclick="location.href='delete.jsp?id=<%=dto.getId()%>'">삭제</button>
					
			</div>
		</section>
	<hr>
</body>
</html>