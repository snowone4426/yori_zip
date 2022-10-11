package dto;

public class PopularListDTO {
    private String thumbnail;
    private String subtitle;
    private String title;
    private String difficulty;
    private String time;
    private String score;
    
    public PopularListDTO() {}
    
    public String getThumbnail() {
      return thumbnail;
    }
    public void setThumbnail(String thumbnail) {
      this.thumbnail = thumbnail;
    }
    public String getSubtitle() {
      return subtitle;
    }
    public void setSubtitle(String subtitle) {
      this.subtitle = subtitle;
    }
    public String getTitle() {
      return title;
    }
    public void setTitle(String title) {
      this.title = title;
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
    public String getScore() {
      return score;
    }
    public void setScore(String score) {
      this.score = score;
    }
    
    
}
