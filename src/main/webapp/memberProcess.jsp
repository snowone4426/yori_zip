<%@page import="dao.UserDAO"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="com.oreilly.servlet.MultipartRequest"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ page import="dto.UserObj" %>   
<%@ page import="java.util.Date"%>
<%@ page import="java.io.File"%>
    
<%

	// 나중에 동시성제어까지 생각하기!
	
	String saveDirectory = "C://Upload";
	int maxPostSize = 1024 * 1024 * 5;
	String encoding = "UTF-8";
	
	MultipartRequest mr = new MultipartRequest(request, saveDirectory, maxPostSize, encoding);

	/**/
	String fileName = mr.getFilesystemName("profile");
	
	
	String ext = fileName.substring(fileName.lastIndexOf("."));
	String now = new SimpleDateFormat("yyyyMMdd_HmsS").format(new Date());
	String newFileName = now + ext;
    File oldFile = new File(saveDirectory + File.separator + fileName);
    File newFile = new File(saveDirectory + File.separator + newFileName);
    oldFile.renameTo(newFile);
	
	
    String email = mr.getParameter("member_email");
	String password = mr.getParameter("memberPw");
	String nickname = mr.getParameter("memeber_nick");
	//String question = mr.getParameter("member_question");
	String answer = mr.getParameter("answer");
	
	String gender = mr.getParameter("gender");	

	String passCheck = mr.getParameter("password_check");
	
	int question = Integer.parseInt(mr.getParameter("member_question"));
	
	UserObj dto = new UserObj();
	dto.setEmail(email);
	dto.setPassword(password);
	dto.setNickname(nickname);
	dto.setProfile(fileName);
	dto.setQuestion(question);
	dto.setAnswer(answer);
	dto.setGender(gender);


	UserDAO dao = new UserDAO();
	int result = dao.registerMember(dto);
	dao.close();
	
	if(password.equals(passCheck)){
	
		if(result == 1){
			response.sendRedirect("loginMain.jsp");
		}else{
			
			request.getRequestDispatcher("memberMain.jsp").forward(request, response);
		}
	}else{
		
		out.println("<script>alert('비밀번호가 일치하지 않습니다');</script>");
		out.println("<script>location.href='memberMain.jsp';</script>");
	}			
	
	
%>    
    
