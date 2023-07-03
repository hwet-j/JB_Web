package login;

import db.*;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class Login {
    public boolean isExist(String check_user, String check_pass) {
        boolean isExist = false;

        try {    
        	ConnectionFactory mysql = new ConnectionFactory();
            // 데이터베이스 연결
            Connection conn = mysql.getConnection(4);

            // SQL 쿼리 실행
            String sql = "SELECT COUNT(*) FROM member WHERE memberid = ? AND password = ?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, check_user);
            pstmt.setString(2, check_pass);
            ResultSet rs = pstmt.executeQuery();

            if (rs.next()) {
                int count = rs.getInt(1);
                if (count > 0) {
                    // 아이디, 비밀번호로 검색가능
                	isExist = true;
                }
            }
 
            // 자원 해제
            rs.close();
            pstmt.close();
            conn.close();
        } catch (Exception e) {
            e.printStackTrace();
        }

        return isExist;
    }
    
}
