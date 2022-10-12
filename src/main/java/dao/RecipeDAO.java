package dao;

import java.util.ArrayList;
import java.util.Arrays;
import dto.RecipeObj;

import javax.servlet.jsp.tagext.TryCatchFinally;

import util.DBConnPool;

public class RecipeDAO extends DBConnPool {
  
    public ArrayList ingredientList() {
    ArrayList<String[]> ingredient = new ArrayList<String[]>();
    
    try {
        String query = "select name, quantity from ingredient where recipe_id =?";
        
        psmt= con.prepareStatement(query);
        rs= psmt.executeQuery();
        
        while(rs.next()) {
          RecipeObj dto <> = new RecipeObj();
          dto.setIngredient_name(rs.getString("name"));
          dto.setIngredient_quantity(rs.getString("quantity"));
          //list asdf = Arraylislt
          
        }
        
    } catch (Exception e) {
      // TODO: handle exception
    }
    
    
    return ingredient_name;
    
   
    }
    

}
