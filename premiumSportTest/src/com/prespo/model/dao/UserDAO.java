package com.prespo.model.dao;

import static com.prespo.common.JDBCTemplate.close;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import com.prespo.model.vo.User;
import com.prespo.model.vo.UserFile;

public class UserDAO {

	public int join(Connection conn, User us) {
		PreparedStatement pstmt1 = null;
//		PreparedStatement pstmt2 = null;
//		int result = 0;
		int result1 = 0;
//		int result2 = 0;
		
		String query1 = "INSERT INTO MEMBER(MEMBER_ID, MEMBER_PWD, MEMBER_NAME, ENROLL_DATE)"
				+ " VALUES(?, ?, ?, SYSDATE)";
//		String query2 = "INSERT INTO MEMBER_SPORT VALUES(?, ?)";
		
		try {
			pstmt1 = conn.prepareStatement(query1);
//			pstmt2 = conn.prepareStatement(query2);
			pstmt1.setString(1, us.getUserId());
			pstmt1.setString(2, us.getUserPwd());
			pstmt1.setString(3, us.getUserName());
//			pstmt2.setString(1, us.getUserId());
//			pstmt2.setString(2, us.getUserSport());
			result1 = pstmt1.executeUpdate();
//			result2 = pstmt2.executeUpdate();
			
//			result = result1 + result2;
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(pstmt1);
//			close(pstmt2);
		}
		 
		return result1;
	}

	public User login(Connection conn, User us) {
		PreparedStatement pstmt = null;
		ResultSet rset = null;
		User user = null;
		
		String query = "SELECT * FROM MEMBER WHERE MEMBER_ID = ? AND MEMBER_PWD = ?";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, us.getUserId());
			pstmt.setString(2, us.getUserPwd());
			rset = pstmt.executeQuery();
			
			if(rset.next()) {
				user = new User(rset.getString("member_id"),
							    rset.getString("member_pwd"),
							    rset.getString("member_name"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} finally {
			close(rset);
			close(pstmt);
		}
		
		return user;
	}
	
	public int upload(Connection conn, UserFile uf) {
		PreparedStatement pstmt = null;
		int result = 0;
		
		String query = "INSERT INTO MEMBER_PIC VALUES(?, ?, ?)";
		
		try {
			pstmt = conn.prepareStatement(query);
			pstmt.setString(1, uf.getUserId());
			pstmt.setString(2, uf.getFileName());
			pstmt.setString(3, uf.getFileRealName());
			result = pstmt.executeUpdate();
		} catch (SQLException e) {
			e.printStackTrace(); 
		} finally {
			close(pstmt);
		}
				
		return result;
	}

}



















