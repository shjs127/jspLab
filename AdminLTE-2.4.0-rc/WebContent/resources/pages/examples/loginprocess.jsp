<%@ page contentType="text/html; charset=utf-8"%>
<%
	String id = request.getParameter("email");
	String pw = request.getParameter("password");
	if ( id.equals("hanguk@naver.com") && pw.equals("1234")) {
		//response.sendRedirect("/AdminLTE-2.4.0-rc/resourcess/index.jsp");
		response.sendRedirect("../../index.jsp?email="+id);
	} else {
		%>
		<script>
			alert("로그인에 실패하였습니다.");
		history.go(-1);
		</script>
		<%
		//response.sendRedirect("/AdminLTE-2.4.0-rc/resourcess/pages/examples/login.jsp");
	}
	
%>
