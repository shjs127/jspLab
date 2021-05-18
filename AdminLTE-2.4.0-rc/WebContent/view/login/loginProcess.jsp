<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	String email = request.getParameter("email");
	String password = request.getParameter("password");
	
	if (email.equals("hanguk@naver.com") && password.equals("1234")) {
		response.sendRedirect("../main/index.jsp?email="+email);
	} else {
%>
<script>
	alert("로그인에 실패하였습니다.");
	history.go(-1);
</script>
<%
	}
%>
