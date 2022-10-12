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
        String query = "select banner_id, photo, alt, search "
                     + "  from banner "
                     + " where search = '5'"
                     + "   and rownum < 5 ";
        try{
          psmt = con.prepareStatement(query);
          
//      recipe 값이 담겨 있는 resultset
          rs = psmt.executeQuery();
          
//          rs가 여러개올거란말이지 그럼 돌려서 출력해조야지
            while(rs.next()) {
              BannerObj obj = new BannerObj();
              obj.setBanner_id(rs.getString("BANNER_ID"));
              obj.setPhoto(rs.getString("PHOTO"));
              obj.setAlt(rs.getString("ALT"));
              obj.setSearch(rs.getString("SEARCH"));            
              list.add(obj);
            }
          
          }
        catch(Exception e){
          e. printStackTrace();
        }
      
      return list;
      }
}
