package dao;
import util.DBConnPool;

import java.util.List;
import java.util.Vector;

import dto.RecipeObj;


public class SearchListDAO extends DBConnPool{
    // 배너 클릭시 배너에 포함된 태그 값을 가지고 리스트를 뽑는 메소드
  public List<RecipeObj> getBannerSearch(int tagid){
//    List<RecipeObj> searchBanList = new Vector<RecipeObj>();
//    
//    try {
//      String query = "select r.recipe_id, r.thumbnail, r.subtitle, r.title,  "
//          + "               r.difficulty, r.time, round(avg(s.score),1) sc, t.tag_id, r.created_at "
//          + "         from recipe r "
//          + "       join star s "
//          + "       on r.recipe_id = s.recipe_id "
//          + "       join recipetag t "
//          + "       on r.recipe_id = t.recipe_id "
//          + "       where t.tag_id = ? "
//          + "       group by r.recipe_id, r.thumbnail, r.subtitle, r.title, r.difficulty, r.time, t.tag_id, r.created_at "
//          + "       order by r.created_at ";
//      
//      
//      psmt = con.prepareStatement(query);
//      psmt.setInt(1, tagid);
//      rs = psmt.executeQuery();
//      
//      while(rs.next()) {
//        RecipeObj sList = new RecipeObj();
//        
//        sList.setRecipe_id(rs.getString("recipe_id"));
//        sList.setThumbnail(rs.getString("thumbnail"));
//        sList.setSubtitle(rs.getString("subtitle"));
//        sList.setTitle(rs.getString("title"));
//        sList.setTime(rs.getString("time"));
//        sList.setLevel(rs.getString("difficulty"));
//        sList.setStar_score(rs.getString("sc"));
//        
//        searchBanList.add(sList);
//        
//      }
//      
//    } catch (Exception e) {
//      e.printStackTrace();
//    }
//    
//    return searchBanList;
    return getRecipeList("","",Integer.toString(tagid),"");
  }
  
  // 검색단에서 조회시 그 검색어가 포함된
  public List<RecipeObj> getSearchList(String title, String nickname){
    return getRecipeList(title,nickname,"","") ;
  }
  
  public List<RecipeObj> getRecipeList(String title, String nickname, String tagid, String pv_type){
    List<RecipeObj> searchBanList = new Vector<RecipeObj>();
    String lv_sort = "";
    
    try {
      
      switch( pv_type ) {
        case "title":
          lv_sort = "r.title";
          break;
        case "user":
          lv_sort = "u.nickname";
          break;
        default :
          lv_sort = "r.created_at";
          break;
      }
      
//  Parameter check      
      if (title == null || title.equals("")) {
        title = "%%";
      } else {
        title = "%"+title+"%";
      }
      
      if (nickname == null || nickname.equals("")) {
        nickname = "%%";
      } else {
        nickname = "%"+nickname+"%";
      }
      
      if (tagid == null || tagid.equals("")) {
        tagid = "%%";
      } 
      
      String query = "SELECT r.recipe_id, r.thumbnail, r.subtitle, r.title   "
                  + "      , r.difficulty, r.time, s.sc, t.tag_id, r.created_at "
                  + "   FROM recipe r "
                  + "   JOIN ( SELECT recipe_id, round(avg(score),1) as sc"
                  + "            FROM star  "  
                  + "           GROUP BY recipe_id  ) s "
                  + "     ON r.recipe_id = s.recipe_id "
                  + "   JOIN recipetag t "
                  + "     ON r.recipe_id = t.recipe_id "
                  + "   JOIN user_info u "
                  + "     ON u.user_id = r.user_id "
                  + "  WHERE r.title    LIKE ? "
                  + "    AND u.nickname LIKE ? "
                  + "    AND t.tag_id   LIKE ? "
//                  + "       group by r.recipe_id, r.thumbnail, r.subtitle, r.title, r.difficulty, r.time, t.tag_id, r.created_at "
                  + "  ORDER BY "+lv_sort;
      
      
      psmt = con.prepareStatement(query);
      psmt.setString(1, title);
      psmt.setString(2, nickname);
      psmt.setString(3, tagid);
      rs = psmt.executeQuery();
      
      while(rs.next()) {
        RecipeObj sList = new RecipeObj();
        
        sList.setRecipe_id(rs.getString("recipe_id"));
        sList.setThumbnail(rs.getString("thumbnail"));
        sList.setSubtitle(rs.getString("subtitle"));
        sList.setTitle(rs.getString("title"));
        sList.setTime(rs.getString("time"));
        sList.setLevel(rs.getString("difficulty"));
        sList.setStar_score(rs.getString("sc"));
        
        searchBanList.add(sList);
        
      }
      
    } catch (Exception e) {
      e.printStackTrace();
    }
    
    return searchBanList;
  }
  
}
