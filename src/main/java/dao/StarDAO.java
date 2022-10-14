package dao;

import util.DBConnPool;
import dto.RepleObj;
import java.util.Map;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

public class StarDAO extends DBConnPool{
  
  public int insertStar(Map star) {
    int result=0;
    try {
      String query = "insert into star (user_id, recipe_id, score) "
                      + " values (?,?,?) ";
        
      psmt = con.prepareStatement(query);
      psmt.setString(1, star.get("user_id").toString());
      psmt.setString(2, star.get("recipe_id").toString());
      psmt.setString(3, star.get("star_score").toString());
      
      result = psmt.executeUpdate();
      
    } catch (Exception e) {
      System.out.println("별점 등록 중 예외 발생");
      e.printStackTrace();
    
    }
    
    return result;
  }
  
//  public ArrayList starLIst() {
//      ArrayList <Map star> = new ArrayList<>();
//      try {
//        String query = "select * from star";
//        
//        psmt= con.prepareStatement(query);
//        rs=psmt.executeQuery();
//        
//        while(rs.next()) {
//          Map<String, String> star = new HashMap<>();
//          star.put(query, query)
//        }
//        
//      } catch (Exception e) {
//        // TODO: handle exception
//      }
//      
//      
//      
//      return list;
//  }
      
}
