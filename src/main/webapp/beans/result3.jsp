<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	result3.jsp<br>
	<jsp:useBean id="dto" class="day55_jsp.MemberDTO" />
	<jsp:setProperty property="*" name="dto"/>
	id : <%= dto.getId() %><br>
	pwd : <%= dto.getPwd() %><br>
	name : <%= dto.getName() %><br>
</body>
</html>