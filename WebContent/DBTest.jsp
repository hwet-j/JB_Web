<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<%
Connection conn = null;
Statement stmt = null;
ResultSet rs = null;

//데이터베이스 연결 정보 설정
String url="localhost";
String port="3306";
String dbname="chap14";
String dbuser="jspexam";
String pswd="jsppw";
String unicode="true";
String encode="utf-8";
	

String memid = null;
String password = null;
String name = null;
String memail = null;

try {
    // JDBC 드라이버 로드
	Class.forName("com.mysql.cj.jdbc.Driver");
    // 데이터베이스 연결
	conn= DriverManager.getConnection("jdbc:mysql://"+url+":"+port+"/"+dbname+"?user="+dbuser
			+"&password="+pswd+"&useUnicode="+unicode+"&characterEncoding="+encode);
    // SQL 쿼리 실행을 위한 PreparedStatement 생성
    String sql = "SELECT * FROM member";
    stmt = conn.createStatement();
 	// SQL 쿼리 실행
    rs = stmt.executeQuery(sql);
 	
    out.println("<h3>접속완료ㅇㅇ</h3>");
    // 리소스 정리
    
    while(rs.next()){
		out.println("<p>" + rs.getString("memberid") + "</p>");
		out.println("<p>" + rs.getString("password") + "</p>");
		out.println("<p>" + rs.getString("name") + "</p>");
		out.println("<p>" + rs.getString("email") + "</p>");
    }
    
    rs.close();
    stmt.close();
    conn.close();
} catch (Exception e) {
    out.println("<h3>오류가 발생했습니다.</h3>");
    e.printStackTrace();
}
%>   


<title>Insert title here</title>
</head>
<body>

</body>
</html>