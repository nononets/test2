package dao;

import java.sql.*;

import db.DB;

/**
 * @author 송은혁
 * @since 2019.12.03
 */

public class MainDAO {
	DB db = null;
	Connection conn = null;
	Statement stmt = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	
	public MainDAO() {
		db = new DB();
	}
	
	public int LoginAction(String id, String pw) {
		int cnt = 0;
		try {
			conn = db.getConn();
			String sql = "select count(*) cnt from test where ? and ?";
			pstmt = db.getPstmt(conn, sql);
			pstmt.setString(1, id);
			pstmt.setString(2, pw);
			rs = db.getRs(pstmt);
		
			rs.next();
			
			cnt = rs.getInt("cnt");
			
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return cnt;
	}
	
}
