package dao;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Vector;

import dto.RepleObj;
import util.DBConnPool;

public class RepleDAO extends DBConnPool {
  
  //댓글 입력 메소드
 public int insertReple(RepleObj dto) {
   int result= 0;
   
   //insert 쿼리문
   try {
       String query= "insert into reple( "
                     + " reple_id, user_id, recipe_id, contents, "
                     + " created_at, updated_at, state) "
                     + " values ( seq_reple_id.NEXTVAL, ?, ?, ?, sysdate, null, 'common')";
     
       psmt= con.prepareStatement(query);
       psmt.setString(1, dto.getUser_id());
       psmt.setString(2, dto.getRecipe_id());
       psmt.setString(3, dto.getContents());
      
       
       //동적 쿼리 실행
     
       result= psmt.executeUpdate();
  } catch (Exception e) {
        System.out.println("댓글 입력 중 예외 발생");
        e.printStackTrace();
   }
   return result;
 }
   //댓글 리스트 메소드
   public ArrayList repleList(){
     ArrayList<RepleObj> list = new ArrayList<RepleObj>();
     
     try {
         String query = "select R.user_id, R.recipe_id, R.reple_id, U.profile, U.nickname, R.created_at, R.contents "
                       + " from user_info U inner join reple R on U.USER_ID=R.USER_ID order by R.created_at DESC";
         psmt= con.prepareStatement(query);
      
         rs= psmt.executeQuery();
         
         while(rs.next()) {
           RepleObj dto= new RepleObj();
           dto.setUser_id(rs.getString("user_id"));
           dto.setProfile(rs.getString("profile"));
           dto.setNickname(rs.getString("nickname"));
           dto.setCreate_at(rs.getDate("created_at"));
           dto.setContents(rs.getString("contents"));
           dto.setReple_id(rs.getString("reple_id"));
           list.add(dto);
         }
        
      
    } catch (Exception e) {
        System.out.println("댓글 조회 중 예외 발생");
        e.printStackTrace();
    }
     
     return list;
   }
  
   
   //댓글 수정 리스트
   public int updateRepleEdit(RepleObj dto) {
         int result= 0;
        
         try {
           //update 쿼리문 작성
           String query = " update reple set contents=? where reple_id = ? ";
           //쿼리문 완성 
           psmt= con.prepareStatement(query);
           psmt.setString(1, dto.getContents());
           psmt.setString(2, dto.getReple_id());
           
           //쿼리문 실행
           result = psmt.executeUpdate();          
          
        } catch (Exception e) {
            System.out.println("댓글 수정 중 예외 발생");
            e.printStackTrace();
        }
         
         
         
         return result;   
   }
   
     public int deleteReple(RepleObj dto) {
       int result = 0;
        try {
            String query = " delete from reple where reple_id= ? ";
            
            psmt= con.prepareStatement(query);
            psmt.setString(1, dto.getReple_id());
            
            result = psmt.executeUpdate();
            
        } catch (Exception e) {
            System.out.println("댓글 삭제 중 예외 발생");
            e.printStackTrace();
        }
        return result; 
       
     }
     
     public int selectCount() {
       int totalcount=0;
       try {
         String query = "select count(*) from reple";
         
         psmt = con.prepareStatement(query);
         rs= psmt.executeQuery();
         
         rs.next();
         totalcount = rs.getInt(1);
    
         
      } catch (Exception e) {
        System.out.println("게시물 수 구하는 중 예외 발생");
        e.printStackTrace();
      }
      return totalcount;  
     }

     //페이징
//     public List<RepleObj> selectListPage(Integer start,Integer end){
//       List<RepleObj> list = new Vector<RepleObj>();
//       
//       String query=  " select R.user_id, R.reple_id, U.profile, U.nickname, "
//           + " R.created_at, R.contents  "
//           + " from user_info U inner join reple R on U.USER_ID=R.USER_ID "
//           + " where rownum between ? and ? order by R.reple_id DESC ";
//       
//       try {
//           psmt = con.prepareStatement(query);
//           psmt.setInt(1, start);
//           psmt.setInt(2, end);
//           //System.out.println(start);
//           //System.out.println(end);
//           rs= psmt.executeQuery();
//           if(rs!=null) {
//           while(rs.next()) {
//               RepleObj dto = new RepleObj();
//               dto.setUser_id(rs.getString("user_id"));
//               //System.out.print(rs.getString("user_id"));
//               dto.setProfile(rs.getString("profile"));       
//               dto.setNickname(rs.getString("nickname"));
//               dto.setCreate_at(rs.getDate("created_at"));
//               dto.setContents(rs.getString("contents"));
//               dto.setReple_id(rs.getString("reple_id"));
//               list.add(dto);
//           }}else {
//             System.out.println("rs");
//           }
//       } catch (Exception e) {
//               System.out.println("게시물 조회 중 예외 발생");
//               e.printStackTrace();       
//       }
//       
//       
//       return list;
//       
//       
//   }
}
