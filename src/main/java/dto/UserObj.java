package dto;

import java.util.Date;

public class UserObj {
	private String user_id;
	private String password;
	private String email;
	private String nickname;
	private String profile;
	private String gender;
	private String type;
	private Date create_at;
	private Date last_access;
	private String state;
	
	// 추가 - 원근
	private String question;
	private String answer;
	
	public UserObj () {}
	
	// get set 추가 - 원근
    public String getQuestion() {
      return question;
    }
    public void setQuestion(String question) {
      this.question = question;
    }
    public String getAnswer() {
      return answer;
    }
    public void setAnswer(String answer) {
      this.answer = answer;
    }    
	
    
	public String getUser_id() {
		return user_id;
	}


	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}

	public String getEmail() {
		return email;
	}


	public void setEmail(String email) {
		this.email = email;
	}


	public String getNickname() {
		return nickname;
	}


	public void setNickname(String nickname) {
		this.nickname = nickname;
	}


	public String getProfile() {
		return profile;
	}


	public void setProfile(String profile) {
		this.profile = profile;
	}


	public String getGender() {
		return gender;
	}


	public void setGender(String gender) {
		this.gender = gender;
	}


	public String getType() {
		return type;
	}


	public void setType(String type) {
		this.type = type;
	}


	public Date getCreate_at() {
		return create_at;
	}


	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}


	public Date getLast_access() {
		return last_access;
	}


	public void setLast_access(Date last_access) {
		this.last_access = last_access;
	}


	public String getState() {
		return state;
	}


	public void setState(String state) {
		this.state = state;
	}
	
}
