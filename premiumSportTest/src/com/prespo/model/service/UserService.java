package com.prespo.model.service;

import static com.prespo.common.JDBCTemplate.commit;
import static com.prespo.common.JDBCTemplate.rollback;
import static com.prespo.common.JDBCTemplate.getConnection;

import java.sql.Connection;

import com.prespo.model.dao.UserDAO;
import com.prespo.model.vo.User;
import com.prespo.model.vo.UserFile;

public class UserService {
	
	private UserDAO uDAO = new UserDAO();
	
	public int join(User us) {
		Connection conn = getConnection();
		
		int result = uDAO.join(conn, us);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}
	
	public User login(User us) {
		Connection conn = getConnection();
		
		User user = uDAO.login(conn, us);
		
		return user;
	}
	
	public int upload(UserFile uf) {
		Connection conn = getConnection();
		
		int result = uDAO.upload(conn, uf);
		
		if(result > 0) {
			commit(conn);
		} else {
			rollback(conn);
		}
		
		return result;
	}
}
