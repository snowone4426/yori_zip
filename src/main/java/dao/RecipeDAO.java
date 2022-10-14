package dao;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Vector;
import java.util.Map;
import dto.RecipeObj;


import util.DBConnPool;

public class RecipeDAO extends DBConnPool {
  
   public List<RecipeObj> getRecipe(String recipe_id){
     List<RecipeObj> recipe = new Vector<RecipeObj>();
     
     try {
      String query = " select R.user_id, R.recipe_id, R.thumbnail, R.subtitle, "
          + "   R.title, R.difficulty,  R.time, R.description, U.profile, U.nickname, R.created_at  "
          + "   from user_info U inner join recipe R on U.user_id= R.user_id "
          + "   where  recipe_id= ? ";
      
      psmt = con.prepareStatement(query);
      psmt.setString(1,recipe_id);
      rs= psmt.executeQuery();
      
      while(rs.next()) {
        RecipeObj list = new RecipeObj();
        list.setRecipe_id(rs.getString("recipe_id"));
        list.setThumbnail(rs.getString("thumbnail"));
        System.out.println(rs.getString("thumbnail"));
        list.setSubtitle(rs.getString("subtitle"));
        list.setTitle(rs.getString("title"));
        list.setLevel(rs.getString("difficulty"));
        list.setTime(rs.getString("time"));
        list.setDescription(rs.getString("description"));
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
   
   public List<RecipeObj> getIngredient(String recipe_id){
     List<RecipeObj> ingredient = new Vector<RecipeObj>() ;
     
     try {
       String query = "select recipe_id, name, quantity  from ingredient where recipe_id =? ";
      
       
       psmt= con.prepareStatement(query);
       psmt.setString(1, recipe_id);
       rs=psmt.executeQuery();
       
       while(rs.next()) {
         RecipeObj list = new RecipeObj();
         list.setRecipe_id(rs.getString("recipe_id"));
         list.setIngredient_name(rs.getString("name"));
         list.setIngredient_quantity(rs.getString("quantity"));
         
         ingredient.add(list);
         
       }
    } catch (Exception e) {
      System.out.println("레시피 재료 출력 오류");
      e.printStackTrace();
    }
   
    return ingredient;
   }
   
   public ArrayList getRecipedetail(String recipe_id){
     ArrayList<RecipeObj> detail = new ArrayList<RecipeObj>();
    
     try {
       String query = " select detail_id, recipe_id, description, photo from recipedetail "
           + "  where recipe_id = ? order by detail_id ";
      
       psmt= con.prepareStatement(query);
       psmt.setString(1, recipe_id);
       //psmt.setInt(1, recipe_id1);
       rs=psmt.executeQuery();

       while(rs.next()) {
       RecipeObj list = new RecipeObj();
       list.setDetail_id(rs.getString("detail_id"));      
       list.setRecipe_id(rs.getString("recipe_id"));
       list.setDescription(rs.getString("description"));
       list.setDetail_photo(rs.getString("photo"));
       
       System.out.println(rs.getString("detail_id"));
       System.out.println(rs.getString("recipe_id"));
       System.out.println(rs.getString("description"));
       System.out.println(rs.getString("photo"));
      
       detail.add(list);       
       }
       
    } catch (Exception e) {
      System.out.println("레시피 방법 조회 오류");
      e.printStackTrace();
    }
     return detail;
   }
   
   public int deleteRecipe(RecipeObj dto) {
    int result=0;
    
    try {
        String query = " delete from recipe where recipe_id= ? ";
        
        psmt = con.prepareStatement(query);
        psmt.setString(1, dto.getRecipe_id());
        
        result = psmt.executeUpdate();
            
    } catch (Exception e) {
      System.out.println("레시피 삭제 중 예외 발생");
      e.printStackTrace();
    }
     
     return result;
     
     
     
   }
   
   
//   public List<RecipeObj> getRecipedetail(Map <String, String> map ){
//     List<RecipeObj> detail = new Vector<RecipeObj>();
//     
//     String query = "select detail_id, recipe_id, description, photo from recipedetail "
//                   + "  where recipe_id=? order by detail_id ";
//     
//     try {
//       psmt= con.prepareStatement(query);
//       psmt.setString(1, map.get("recipe_id").toString());
//       rs= psmt.executeQuery();
//       
//       while(rs.next()) {
//         RecipeObj dto = new RecipeObj();
//         dto.setDetail_desc(rs.getString("description"));
//         dto.setDetail_photo(rs.getString("photo"));
//         dto.setRecipe_id(rs.getString("recipe_id"));
//         dto.setDetail_id("detail_id");
//        
//         detail.add(dto);       
//         }
//      
//    } catch (Exception e) {
//      System.out.println("레시피 방법 조회 중 예외 발생");
//      e.printStackTrace();
//    }
//     
//     
//     return detail;
//     
//     
//     
//   }
   

}
