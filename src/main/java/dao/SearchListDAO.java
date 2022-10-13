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
     // 정렬 하는 부분 
      switch( pv_type ) {
        case "title":
          lv_sort = "r.title";
          break;
        case "user":
          lv_sort = "u.nickname";
          break;
        default :
          lv_sort = "sc";
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
                  + "  ORDER BY "+lv_sort + " desc ";
      
    
      
      
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
  
  // 페이징 함수
//  public static String pagingStr(int totalCount, int perPage, int perBlock, int pageNum, String reqUrl) {
//    
//    String pagingStr = "";
//    
//    int totalPage = (int)(Math.ceil((double) totalCount/perPage));
//    
//    int pageTemp = (((pageNum -1) / perBlock) * perBlock) +1;
//    
//    if(pageTemp != 1) {
//      pagingStr += "<a href ='" + reqUrl + "?pageNum=1' > [첫 리스트] </a>";
//      pagingStr += "&nbsp;";
//      pagingStr += "<a href ='" + reqUrl + "?pageNum" + (pageTemp-1) + "'>[이전 리스트]</a>";
//    }
//
//     int pageCount = 1;
//     while(pageCount <= perBlock && pageTemp <= totalPage) {
//       if(pageTemp == pageNum) {
//         pagingStr += "&nbsp;" + pageTemp + "&nbsp;";
//       }
//       else {
//         pagingStr += "&nbsp;<a href='" + reqUrl + "?pageNum=" + pageTemp + "'>" + pageTemp + "</a>&nbsp;";
//         pageTemp++;
//         pageCount++;
//       }
//     }
//       if(pageTemp <= totalPage) {
//         pagingStr += "";
//         
//         pagingStr += "<a href ='" + reqUrl + "?pageNum=" + pageTemp + "'>[다음 리스트]</a>";
//         pagingStr += "&nbsp;";
//         pagingStr += "<a href ='" + reqUrl + "?pageNum=" + totalPage + "'>[마지막 리스트]</a";
//       }
//    return pagingStr;
//    
//  }
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
  
}
