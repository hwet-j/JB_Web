package db;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(urlPatterns = "/dbtest1")
public class ConnectionFactory2 extends HttpServlet{
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String message = "";
		System.out.println("doGet()");
		System.out.println("어노테이션으로 실행하기");
		resp.setContentType("text/html; charset=UTF-8;"); 
		
		PrintWriter out = resp.getWriter();
		try {    
        	ConnectionFactory mysql = new ConnectionFactory();
            // 데이터베이스 연결
            Connection conn = mysql.getConnection(4);

            // SQL 쿼리 실행
            String sql = "SELECT COUNT(*) FROM member WHERE memberid = ? AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, "");
            pstmt.setString(2, "");
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                int count = rs.getInt(1);
                if (count > 0) {
                    // 아이디, 비밀번호로 검색가능
                }
            }
            message = "성공";
            // 자원 해제
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
            message = "실패";
        }
		
		out.println("이름 : " + message);
	}

}
