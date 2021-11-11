<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="board.bean.BoardDTO" import="board.dao.BoardDAO" import="java.util.List" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	th {
		font-size: 16px;
	}
	
	td {
		font-size: 13px;
	}
	
	a {
		text-decoration: none;
	}
	
	a:hover {
		color: green;
		text-decoration: underline;
	}
</style>
</head>
<body>
	<%
		int pg = Integer.parseInt(request.getParameter("pg"));
	
		int endNum = pg * 5;
		int startNum = endNum - 4;
		
		BoardDAO boardDAO = BoardDAO.getInstance();
		List<BoardDTO> boardList = boardDAO.print(startNum, endNum);
		
		int totalA = boardDAO.totalA();
		int totalP = (totalA + 4) / 5;
	%>
	<hr>
	
	<table border="1" cellspacing="0" cellpadding="5" frame="hsides" rules="rows">
		<tr>
			<th>글번호</th>
			<th>제목</th>
			<th>작성자</th>
			<th>조회수</th>
			<th>작성일</th>
		</tr>
		
		<%for(BoardDTO boardDTO : boardList)
		{%>
			<tr>
				<td align="center"><%=boardDTO.getSeq() %></td>
				<td align="center"><a href="boardView.jsp?seq=<%=boardDTO.getSeq() %>" onclick="<%boardDAO.hit(boardDTO.getSeq());%>"><%=boardDTO.getSubject() %></a></td>
				<td align="center"><%=boardDTO.getName() %></td>
				<td align="center"><%=boardDTO.getHit() %></td>
				<td align="center"><%=boardDTO.getLogtime() %></td>
			</tr>
		<%}%>
	</table>

	<hr>
	<%for(int i = 1; i <= totalP; i++)
	{%>
		<a href="boardList.jsp?pg=<%=i %>"><%=i %></a>
	<%}%>
</body>
</html>