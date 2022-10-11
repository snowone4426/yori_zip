package dao;

import java.util.List;
import java.util.Vector;
import util.DBConnPool;
import dto.PopularListDTO;
import dto.RecipeObj;

public class PopularListDAO extends DBConnPool{

  public List<RecipeObj> getPopList(){
    List<RecipeObj> popList = new Vector<RecipeObj>();
    
    try {
      String query = "select r.recipe_id, thumbnail, subtitle, title, difficulty, time, score "
          + "from recipe r join star s "
          + "on r.recipe_id = s. recipe_id "
          + "order by score desc";
      
      psmt = con.prepareStatement(query);
      rs = psmt.executeQuery();
      
      while(rs.next()) {
        RecipeObj list = new RecipeObj();
       // list.setRecipe_id("recipe_id");
        list.setThumbnail(rs.getString("thumbnail"));
        list.setSubtitle(rs.getString("subtitle"));
        list.setTitle(rs.getString("title"));
        list.setTime(rs.getString("time"));
        list.setLevel(rs.getString("difficulty"));
        list.setStar_score(rs.getString("score"));
        
        popList.add(list);
      }
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    
    
    return popList;
  }
  
  
}
