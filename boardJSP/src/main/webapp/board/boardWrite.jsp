<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.bean.BoardDTO" import="board.dao.BoardDAO"%>
    
<%
	//데이터
	request.setCharacterEncoding("UTF-8");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");
	
	BoardDTO boardDTO = new BoardDTO();
	boardDTO.setSubject(subject);
	boardDTO.setContent(content);
	
	//DB
	BoardDAO boardDAO = BoardDAO.getInstance();
	boardDAO.write(boardDTO);
	
	//응답
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	글쓰기 성공
	<input type="button" value="목록" onclick="location.href='boardList.jsp?pg=1'"/>
</body>
</html>