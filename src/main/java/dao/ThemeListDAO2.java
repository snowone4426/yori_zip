package dao;
import java.util.List;
import java.util.Vector;

import dto.RecipeObj;

import util.DBConnPool;
// 특정 테마에 인기가 높은 상위 4개 뽑기
public class ThemeListDAO2 extends DBConnPool{
  
  public List<RecipeObj> getThemeList(String tagid){
    List<RecipeObj> themeList = new Vector<RecipeObj>();
    
    try {
      String query = "select r.recipe_id, r.thumbnail, r.subtitle, r.title, t.tag_id, "
          + "   r.difficulty, r.time, round(avg(s.score),1) sc "
          + "       from recipe r "
          + "           join recipetag t "
          + "           on t.recipe_id = r.recipe_id "
          + "           join tag g "
          + "           on g.tag_id = t.tag_id "
          + "           join star s "
          + "           on r.recipe_id = s.recipe_id "
          + "       where t.tag_id = ? "
          + "       group by r.recipe_id, r.thumbnail, r.subtitle, r.title, t.tag_id, r.difficulty, r.time "
          + "       order by sc ";
        
      psmt = con.prepareStatement(query);
      psmt.setString(1, tagid);
      rs = psmt.executeQuery();
      
      while(rs.next()) {
        RecipeObj list = new RecipeObj();
        list.setRecipe_id(rs.getString("recipe_id"));
        list.setThumbnail(rs.getString("thumbnail"));
        list.setSubtitle(rs.getString("subtitle"));
        list.setTitle(rs.getString("title"));
        list.setTime(rs.getString("time"));
        list.setLevel(rs.getString("difficulty"));
        list.setStar_score(rs.getString("sc"));
       
        
        themeList.add(list);
        
      }
    } catch (Exception e) {
      e.printStackTrace();
    }
    
    return themeList;
    
  }
}
