package dao;

import java.util.ArrayList;

import dto.UserObj;
import util.DBConnPool;

public class UserDAO extends DBConnPool{

  // 싱글턴
  private static UserDAO instance = new UserDAO();
  public static UserDAO getInstance() {
      return instance;
  }
   
  public int registerMember(UserObj dto) {
    int register = 0;
    
    // 전화번호 나중에
    try {
        String query = "INSERT INTO user_info VALUES "
                        + "(seq_user_id.nextval, ?, ?, ?, ?, ?, ?, ?, 'c', sysdate, null, 'common')";
        
        psmt = con.prepareStatement(query);
        psmt.setString(1, dto.getEmail());
        psmt.setString(2, dto.getPassword());
        psmt.setString(3, dto.getNickname());
        psmt.setString(4, dto.getProfile());
        psmt.setString(5, dto.getGender());
        psmt.setString(6, dto.getQuestion());
        psmt.setString(7, dto.getAnswer());
        
        register = psmt.executeUpdate();
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    
    
    return register;
}
   
    
    public ArrayList questionList() {
      ArrayList arrList = new ArrayList();
    //UserObj dto = new UserObj();
    
    try {
        
        String query = "select question_txt from question";
        psmt = con.prepareStatement(query);
        rs = psmt.executeQuery();
        
        while(rs.next()) {
            
            
            String contents = rs.getString("question_txt");
            
            arrList.add(contents);
        }
        
    } catch (Exception e) {
        e.printStackTrace();
    }
    
    return arrList;
}
  
    
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
	
	
	
	
	
	
	
	   // 로그인 시 마지막 접속시간 등록
    public void updateTime(String email) {
        
        try {
            
            String query = "update user_info set last_access = sysdate where email = ?";
            
            psmt = con.prepareStatement(query);
            
            psmt.setString(1, email);
            
            psmt.executeQuery();
            
        } catch (Exception e) {
            e.printStackTrace();
        }
    }
    
    
    // 이메일 중복 체크
    public UserObj emailCheck(String email) {
        UserObj dto = new UserObj();
        
        try {
            String query = "select email from user_info where email = ?";
            
            psmt = con.prepareStatement(query);
            psmt.setString(1, email);
            rs = psmt.executeQuery();
            
            if(rs.next()) {
                dto.setEmail(email);
            }   
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return dto;
    }
    
    // 닉네임 중복 체크
    public UserObj nickCheck(String nickname) {
        UserObj dto = new UserObj();
        
        try {
            String query = "select nickname from user_info where nickname = ?";
            
            psmt = con.prepareStatement(query);
            psmt.setString(1, nickname);
            rs = psmt.executeQuery();
        
            if(rs.next()) {
                dto.setNickname(nickname);
            }   
            
        } catch (Exception e) {
            e.printStackTrace();
        }

        return dto;
    }
	
    
    // 비밀번호 찾기
    public UserObj searchPwd(String email, String question, String answer) {
        UserObj dto = new UserObj();
        
        try {
            String query = "select password from user_info where email = ? and question = ? and answer = ?";
            
            psmt = con.prepareStatement(query);
            psmt.setString(1, email);
            psmt.setString(2, question);
            psmt.setString(3, answer);
            rs = psmt.executeQuery();
                    
            if(rs.next()) {
                dto.setEmail(email);
                dto.setQuestion(question);
                dto.setAnswer(answer);
                dto.setPassword(rs.getString("password"));
            }
            
        } catch (Exception e) {
            e.printStackTrace();
        }
        
        return dto;
    }
	
}
