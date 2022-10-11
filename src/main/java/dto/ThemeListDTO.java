package dto;

public class ThemeListDTO {
  private String title;
  private String thumbnail;
  private String tagid;
  private String recipeid;
  
  

  public ThemeListDTO() {}
  
  public String getRecipeid() {
    return recipeid;
  }

  public void setRecipeid(String recipeid) {
    this.recipeid = recipeid;
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
  public String getTagid() {
    return tagid;
  }
  public void setTagid(String tagid) {
    this.tagid = tagid;
  }
  
  
}
