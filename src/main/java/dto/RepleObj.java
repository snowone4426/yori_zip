package dto;

import java.util.Date;

public class RepleObj {
	private String repleId;
	private String userId;
	private String recipeId;
	private String contents;
	private Date create_at;
	private Date update_at;
	private String state;
	
	public RepleObj () {}

	public String getRepleId() {
		return repleId;
	}

	public void setRepleId(String repleId) {
		this.repleId = repleId;
	}

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getRecipeId() {
		return recipeId;
	}

	public void setRecipeId(String recipeId) {
		this.recipeId = recipeId;
	}

	public String getContents() {
		return contents;
	}

	public void setContents(String contents) {
		this.contents = contents;
	}

	public Date getCreate_at() {
		return create_at;
	}

	public void setCreate_at(Date create_at) {
		this.create_at = create_at;
	}

	public Date getUpdate_at() {
		return update_at;
	}

	public void setUpdate_at(Date update_at) {
		this.update_at = update_at;
	}

	public String getState() {
		return state;
	}

	public void setState(String state) {
		this.state = state;
	}
	
}
