package dao;
import java.util.List;
import java.util.Vector;

import dto.ThemeListDTO;
import util.DBConnPool;
// 특정 테마에 인기가 높은 상위 4개 뽑기
public class ThemeListDAO extends DBConnPool{
  
  public List<ThemeListDTO> getThemeList(){
    List<ThemeListDTO> themeList = new Vector<ThemeListDTO>();
    
    try {
      String query = "select r.*, t.tag_id, g.name "
          + "  from recipe r"
          + "  join recipetag t"
          + "    on t.recipe_id = r.recipe_id"
          + "  join tag g"
          + "    on g.tag_id = t.tag_id "
          + "where t.tag_id >= 5";
        
      psmt = con.prepareStatement(query);
      rs = psmt.executeQuery();
      
      while(rs.next()) {
        ThemeListDTO list = new ThemeListDTO();
        list.setTitle(rs.getString("title"));
        list.setThumbnail("."+rs.getString("thumbnail"));
        list.setRecipeid(rs.getString("recipe_id"));
        list.setTagid(rs.getString("tag_id"));
        
        themeList.add(list);
        
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    
    return themeList;
    
  }
}
