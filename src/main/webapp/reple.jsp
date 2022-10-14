<%@page import="dto.RepleObj"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.lang.reflect.Array"%>
<%@page import="dao.RepleDAO"%>
<%@page import = "dao.ReplePage" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import = "java.util.List" %>
    

    
<link rel="stylesheet" href="css/main.css">    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>reple</title>
<style>

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
.repleList{
	align-content:center;
	}
.repleList img{
	width: 20px;
	height: 20px;
}

</style>


</style>

</head>
<body>
<jsp:include page="nav.jsp"/>
<!--<jsp:include page="star.jsp"/>-->
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
	String recipe_id= request.getParameter("recipe_id");
	ArrayList<RepleObj> repleList = dao.repleList();
	/* 페이지 처리 start */
	//전체 페이지 수 계산

	//web.xml에 저장한 값 가져오기
	int totalCount = dao.selectCount();
	
	int pageSize = Integer.parseInt(application.getInitParameter("POSTS_PER_PAGE"));//값 리턴됨
	int blockPage = Integer.parseInt(application.getInitParameter("PAGES_PER_BLOCK"));//값 리턴됨
	int totalPage = (int)Math.ceil((double)totalCount/pageSize);

	int pageNum=1;
	String pageTemp = request.getParameter("pageNum");
	if(pageTemp !=null && !pageTemp.equals("")){
		pageNum = Integer.parseInt(pageTemp);
	}
	//목록에 출력할 게시물 범위 계산
	 int start = (pageNum-1) * pageSize +1; //첫 게시물 번호
	 int end = pageNum * pageSize; //마지막 게시물 번호
	
	 //List<RepleObj> repleList = dao.selectListPage(start,end);	 
	 dao.close();
		 /*페이지 처리 완료*/ 

%>
<%
	if(repleList.isEmpty()){
%>
        <tr>
            <td colspan="6" align="center">
                등록된 댓글이 없습니다
            </td>
        </tr>
<%
	}else{
		//게시물이 있을때
		
		//화면상의 게시물 번호(실제로 존재하지 않는 가상번호)
		
		for(RepleObj dto:repleList){
			//for(int i = 0; i < repleList.size(); i++){
			System.out.println(dto.getProfile());
%>				
				<tbody>
					<tr>
						<td><%=dto.getProfile() %></td>
						<td><%=dto.getNickname() %></td>
						<td><%=dto.getCreate_at() %></td>
						<td><%=dto.getContents() %></td>
<%	
	String user_id = (String)session.getAttribute("user_id");
	if(user_id != null && user_id.equals(dto.getUser_id())){
		
%>
						<td><button type="button" onclick="location.href='repleEdit.jsp?reple_id=<%=dto.getReple_id()%>';"><img src="assets/modify.png"></button></td>
						<td><button type="button" onclick="location.href='repleDeleteProcess.jsp?reple_id=<%=dto.getReple_id()%>';"><img src="assets/delete.png"></button></td>
<%} %>			
				
<%}} %>						
					</tr>

				</tbody>

				<tfoot>
				<tr align="center">
        	<!-- 페이징 처리 
        	<td><%= ReplePage.pagingStr(totalCount, pageSize, blockPage, pageNum, request.getRequestURI()) %></td>-->
				</tfoot>
	</table>
	</div>
<jsp:include page="footer.jsp"/>
</body>
</html>