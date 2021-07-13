<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="com.javaex.vo.GuestVo" %>
<%@ page import="java.util.List"%>

<%
	
	List<GuestVo> guestList = (List<GuestVo>)request.getAttribute("gList");

%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
	<h1>방명록 리스트</h1>
	
	<form action="/guestbook2/gbc" method="get">
		<table border="1" width="600">
			<tr>
				<td>이름</td>
				<td><input type="text" name="name" value=""></td>
				<td>비밀번호</td>
				<td><input type="password" name="password" value=""></td>
			</tr>
			<tr>
				<td colspan="4"><textarea rows="8" cols="82" name="content"></textarea>
			</tr>
			<tr>
				<td colspan="4">
					<input type="hidden" name="action" value="add">
					<button type="submit">확인</button>
				</td>
			</tr>
		</table>
	</form>
	
	<%
	for (int i=0; i < guestList.size(); i++) {
	%>
	<form action="" method="get">
		<table border="1" width="607">
			<tr>
				<td><%= guestList.get(i).getNo() %></td>
				<td><%= guestList.get(i).getName() %></td>
				<td><%= guestList.get(i).getRegDate() %></td>
				<td><a href="/guestbook2/gbc?action=dform&no=<%= guestList.get(i).getNo() %>">삭제</a>
				</td>
			</tr>
			<tr>
				<td colspan="4"><%= guestList.get(i).getContent() %></td>
			</tr>

		</table>
	</form>
	<%
	}
	%>

</body>
</html>