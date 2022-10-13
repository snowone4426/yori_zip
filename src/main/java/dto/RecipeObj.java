package dto;

import java.util.Date;
import java.util.Map;
import java.util.Vector;

public class RecipeObj {
	private String recipe_id;
	private String user_id;
	private String title;
	private String thumbnail;
	private String level;
	private String time;
	private String star_score;
	private String subtitle;
	private String discription;
	private Date create_at;
	private Date update_at;
	private String state;
	private String[] detail_desc;
	private String[] detail_photo;
	private String[] main_category;
	private String[] sub_category;
	private String[] ingredient_name;
	private String[] ingredient_quantity;
	private String nickname;
    private String profile;

	public RecipeObj () {}
	
	public String[] getDetail_desc() {
		return detail_desc;
	}

	public void setDetail_desc(String[] detail_desc) {
		this.detail_desc = detail_desc;
	}

	public String[] getDetail_photo() {
		return detail_photo;
	}

	public void setDetail_photo(String[] detail_photo) {
		this.detail_photo = detail_photo;
	}

	public String getRecipe_id() {
		return recipe_id;
	}

	public void setRecipe_id(String recipe_id) {
		this.recipe_id = recipe_id;
	}

	public String getUser_id() {
		return user_id;
	}

	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getThumbnail() {
		return thumbnail;
	}

	public void setThumbnail(String thumbnail) {
		this.thumbnail = thumbnail;
	}

	public String getLevel() {
		return level;
	}

	public void setLevel(String level) {
		this.level = level;
	}

	public String getTime() {
		return time;
	}

	public void setTime(String time) {
		this.time = time;
	}

	public String getSubtitle() {
		return subtitle;
	}

	public void setSubtitle(String subtitle) {
		this.subtitle = subtitle;
	}

	public String getDiscription() {
		return discription;
	}

	public void setDiscription(String discription) {
		this.discription = discription;
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
	
	public String[] getMain_category() {
		return main_category;
	}

	public void setMain_category(String[] main_category) {
		this.main_category = main_category;
	}

	public String[] getSub_category() {
		return sub_category;
	}

	public void setSub_category(String[] sub_category) {
		this.sub_category = sub_category;
	}

	public String getStar_score() {
		return star_score;
	}

	public void setStar_score(String star_score) {
		this.star_score = star_score;
	}

	public String[] getIngredient_name() {
		return ingredient_name;
	}

	public void setIngredient_name(String[] ingredient_name) {
		this.ingredient_name = ingredient_name;
	}

	public String[] getIngredient_quantity() {
		return ingredient_quantity;
	}

	public void setIngredient_quantity(String[] ingredient_quantity) {
		this.ingredient_quantity = ingredient_quantity;
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
	
}
