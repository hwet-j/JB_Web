<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<%@ page import="javax.servlet.http.HttpServletRequest" %>

<%
    HttpServletRequest req = (HttpServletRequest) request;
    String contextPath = req.getContextPath();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 관리 페이지</title>

<script>
    function showAlert() {
        alert("로그인 후에 사용할 수 있습니다.");
        window.location.href = "<%= request.getContextPath() %>/login.jsp";
    }
</script>

<%
    String contextPa = request.getContextPath();
    pageContext.setAttribute("contextPath", contextPa);
%>

</head>
<body>


<div class="wrapper">

	<!-- 사이드 리모컨 메뉴 include -->
	<%@ include file="/mainremote.jsp"%>
	<!-- 각자 페이지마다 다르게 구현 하여 include -->
	<div class="contents">
		
		<!-- .wrapper .contents 내부에 작성 -->
		
		<!-- 상위 메뉴 include -->
		<%@ include file="/nav.jsp" %>

 	<!-- ST container ST -->
	<div class="container">

	<!-- ST Left Section ST -->
	<div class="left">

	<h2>게시판 관리 메인</h2>
		<ul>
			<% if (session.getAttribute("login_user") == null) { %>
		    <li><a href="#" onclick="showAlert();">등록하기</a></li>
			<% } else { %>
		    <li><a href="<%= request.getContextPath() %>/hwet/board/registForm.jsp">등록하기</a></li>
			<% } %>
			<li><a href="list.jsp">목록보기</a></li>
		</ul>
		
		</div>
	</div>
		
		
		
		
		
		
	</div>	<!--/.contents-->
</div>  <!-- wrapper -->




<!-- footer include -->
<%@ include file="/footer.jsp"%>
</body>
</html>