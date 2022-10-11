package dao;

import dto.UserObj;
import util.DBConnPool;

public class UserDAO extends DBConnPool{

    DBConnPool pool = new DBConnPool();
   
    
   
	// 로그인!
	// 이메일과 패스워드 받기
	public UserObj getUserObj(String email, String password) {
	// 원근!	
		UserObj dto = new UserObj();
		String query = "select * from user_info where email = ? and password = ?";
		
		try {
			
			psmt = con.prepareStatement(query);
			psmt.setString(1, email);
			psmt.setString(2, password);
			rs = psmt.executeQuery();
					
			if(rs.next()) {
				dto.setUser_id(rs.getString("user_id"));
				dto.setPassword(rs.getString("password"));
				dto.setEmail(rs.getString("email"));
				dto.setNickname(rs.getString("nickname"));
				dto.setProfile(rs.getString("profile"));
				dto.setGender(rs.getString("gender"));
				dto.setType(rs.getString("type"));
				dto.setCreate_at(rs.getDate("create_at"));
				dto.setState(rs.getString("state"));
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return dto;
	}
	
}
