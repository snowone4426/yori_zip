package dao;

import java.util.List;
import java.util.Vector;

import dto.BannerObj;
import util.DBConnPool;

public class BannerDAO extends DBConnPool{
//  dao = data access object
//      dao에 쿼리문 연결 및 con 연결
      public List<BannerObj> BannerList(){
        List<BannerObj> list = new Vector<BannerObj>();
        // 배너는 거기 들어 있는 태그 정보를 따서 그 태그를 조건으로 검색해서
        //list 로 뿌려주는 page로 이동
        String query = "select * from banner";
        try{
          psmt = con.prepareStatement(query);
          
//      recipe 값이 담겨 있는 resultset
          rs = psmt.executeQuery();
          
//          rs가 여러개올거란말이지 그럼 돌려서 출력해조야지
            while(rs.next()) {
              BannerObj obj = new BannerObj();
              obj.setBanner_id(rs.getString(1));
              obj.setPhoto(rs.getString(2));
              obj.setAlt(rs.getString(3));
              obj.setCreated_at(rs.getDate(4));
              obj.setStart_date(rs.getDate(5));
              obj.setEnd_date(rs.getDate(6));
              obj.setSearch(rs.getString(7));
            
              list.add(obj);
            }
          
          }
        catch(Exception e){
          e. printStackTrace();
        }
      
      return list;
      }
}
