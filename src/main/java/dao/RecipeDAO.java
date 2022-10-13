package dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;

import dto.RecipeObj;

import javax.servlet.jsp.tagext.TryCatchFinally;

import util.DBConnPool;

public class RecipeDAO extends DBConnPool {
  
   public List<RecipeObj> getRecipe(){
     List<RecipeObj> recipe = new Vector<RecipeObj>();
     
     try {
      String query = " select R.user_id, R.recipe_id, R.thumbnail, R.subtitle, R.title, R.difficulty,  R.time, R.discription, U.profile, U.nickname, R.created_at  from user_info U inner join recipe R on U.user_id= R.user_id";
      
      psmt = con.prepareStatement(query);
      rs= psmt.executeQuery();
      
      while(rs.next()) {
        RecipeObj list = new RecipeObj();
        list.setRecipe_id(rs.getString("recipe_id"));
        list.setThumbnail(rs.getString("thumbnail"));
        list.setSubtitle(rs.getString("subtitle"));
        list.setTitle(rs.getString("title"));
        list.setLevel(rs.getString("difficulty"));
        list.setTime(rs.getString("time"));
        list.setDiscription(rs.getString("discription"));
        list.setProfile(rs.getString("profile"));
        list.setNickname(rs.getString("nickname"));
        list.setCreate_at(rs.getDate("created_at"));
        list.setUser_id(rs.getString("user_id"));
        
        recipe.add(list);
        
      }
    } catch (Exception e) {
      System.out.println("레시피 상세페이지 출력 오류");
      e.printStackTrace();
    }
     
     
     
     return recipe;
     
     
   }

}
