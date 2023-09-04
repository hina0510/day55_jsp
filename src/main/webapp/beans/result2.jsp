<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 
memberDTO dto = new memberDTO();<br>
dto.setId(req.getPar(id))<br>
dto.getId();<br>
 -->
	<jsp:useBean id="dto" class="day55_jsp.MemberDTO" />
	
	<jsp:setProperty property="id" name="dto"/>
	<jsp:setProperty property="pwd" name="dto"/>
	
	id : <jsp:getProperty property="id" name="dto"/><br>
	pwd : <jsp:getProperty property="pwd" name="dto"/>
	
</body>
</html>