<%@page import="dto.RepleObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="dao.RepleDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<% String myreple_id = request.getParameter("reple_id");
%>    
    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>comment</title>
<style>
<style>
html, body, div, span, applet, object, iframe,
h1, h2, h3, h4, h5, h6, p, blockquote, pre,
a, abbr, acronym, address, big, cite, code,
del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var,
b, u, i, center,
dl, dt, dd, ol, ul, li,
fieldset, form, label, legend,
table, caption, tbody, tfoot, thead, tr, th, td,
article, aside, canvas, details, embed, 
figure, figcaption, footer, header, hgroup, 
menu, nav, output, ruby, section, summary,
time, mark, audio, video {
	margin: 0;
	padding: 0;
	border: 0;
	font-size: 100%;
	font: inherit;
	vertical-align: baseline;
}
/* HTML5 display-role reset for older browsers */
*{box-sizing:border-box;}
article, aside, details, figcaption, figure, 
footer, header, hgroup, menu, nav, section {
	display: block;
}
body {
	line-height: 1;
}
ol, ul {
	list-style: none;
}
blockquote, q {
	quotes: none;
}
blockquote:before, blockquote:after,
q:before, q:after {
	content: '';
	content: none;
}
table {
	border-collapse: collapse;
	border-spacing: 0;
}

.commentbox {
	box-sizing: border-box;
	width: 658px;
	height: 136px;
	background: #FFFFFF;
	border: 2px solid #B8B4B4;
	border-radius: 20px;
	}
	
.commentbox thead{
	height: 40px;
	border-bottom: 1.5px solid #B8B4B4;
}
.commentbox thead th{
	padding:0 20px;
	width: 120px;
	height: 40px;
	font-family: 'Inria Serif';
	font-style: normal;
	font-weight: 400;
	font-size: 18px;
	line-height: 40px;
	/* identical to box height */
	display: flex;
	align-items: center;
	text-align: center;
	color: #888282;
}
.commentText{
	width: 630px;
	height: 60px;
	border: none;
	font-family: 'Inria Serif';
	font-style: normal;
	font-size:14px;
}
.commentText: focus{
	border:none;
	outline:none;
	outline-width:0;
	outline-color: white;
}
.commentbtn{
	box-sizing: border-box;
	width: 88px;
	height: 29px;
	
	background: #FFFFFF;
	border: 2px solid #B8B4B4;
	border-radius: 20px;
	
	font-family: 'Inria Serif';
	font-style: normal;
	font-weight: 400;
	font-size: 20px;
	line-height: 24px;
	/* identical to box height */
	
	display: flex;
	align-items: center;
	text-align: flex-end;
	color: #888282;
}

.repleList img{
	width: 20px;
	height: 20px;
}

</style>

</head>
<body>
<jsp:include page="nav.jsp"/>
<div class="reple">
		
			<form method="post" action="repleProcess.jsp">
			<table class="commentbox">
				<thead>
					<tr>
						<th>댓글작성</th>			
					</tr>
				</thead>
				<tbody>
					<tr style="text-align:center;">
						<td><input type="text" class="commentText" name="repleText"></td>
					</tr>
					<tr>
						<td><input type="submit" class="commentbtn" value="작성"></td>
					</tr>	
				</tbody>
			</table>
			</form>
			 <!-- 게시물 목록 테이블(표) --> 
				
				<table class="repleList">
				<thead>
					<tr>
						<th>썸네일</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>댓글</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
<%

	RepleDAO dao = new RepleDAO();
	ArrayList<RepleObj> repleList = dao.repleList();
	for(RepleObj dto:repleList){
		
%>				
		<form method="post" action="repleEditProcess.jsp" >
			<input type="hidden" name="reple_id" value="<%=dto.getReple_id() %>"/>
				<tbody>
					<tr>
						<td><%=dto.getProfile() %></td>
						<td><%=dto.getNickname() %></td>
						<td><%=dto.getCreate_at() %></td>
						
<%
		String user_id = (String)session.getAttribute("user_id");
		
		if(dto.getReple_id() !=null && myreple_id.equals(dto.getReple_id()) ){
%>
						<td><input type="text" name= "replecontent" value="<%=dto.getContents() %>"/></td>
						<td><button type="submit" >작성완료</button></td>
						<td><button type="reset">다시입력</button></td>
					</tr>
				</tbody>
				
<%}
		else{ %>
			<td><%=dto.getContents() %></td>
			
<%	}%> 
</form> 
<%} %>	
	</table>
	</div>
	<jsp:include page="footer.jsp"/>
</body>
</html>