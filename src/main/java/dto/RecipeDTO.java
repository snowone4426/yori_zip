package dto;

public class RecipeDTO {
    private String recipeId;
    private String userId;
    private String title;
    private String thumbnail;
    private String difficulty;
    private String time;
    private String subTitle;
    private String description;
    private String createdAt;
    private String updatedAt;
    private String state;
   

    public RecipeDTO() {}
    
    public String getRecipeId() {
      return recipeId;
    }
    public void setRecipeId(String recipeId) {
      this.recipeId = recipeId;
    }
    public String getUserId() {
      return userId;
    }
    public void setUserId(String userId) {
      this.userId = userId;
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
    public String getDifficulty() {
      return difficulty;
    }
    public void setDifficulty(String difficulty) {
      this.difficulty = difficulty;
    }
    public String getTime() {
      return time;
    }
    public void setTime(String time) {
      this.time = time;
    }
    public String getSubTitle() {
      return subTitle;
    }
    public void setSubTitle(String subTitle) {
      this.subTitle = subTitle;
    }
    public String getDescription() {
      return description;
    }
    public void setDescription(String description) {
      this.description = description;
    }
    public String getCreatedAt() {
      return createdAt;
    }
    public void setCreatedAt(String createdAt) {
      this.createdAt = createdAt;
    }
    public String getUpdatedAt() {
      return updatedAt;
    }
    public void setUpdatedAt(String updatedAt) {
      this.updatedAt = updatedAt;
    }
    public String getState() {
      return state;
    }
    public void setState(String state) {
      this.state = state;
    }
    
    
}
