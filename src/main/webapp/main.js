
function procBanner(){
    var tag = banners[bannerId].tag_id;      // 해당 배너의 tagid
    // 
    window.location.href = 'http://localhost:8080/yori_zip/searchPage.jsp?search=tag';
    
}

function setBannerInterval(){
    
        var obj = document.getElementById("cake");                  
       
        //alert(bannerId);
        obj.src=banners[bannerId].photo;

        bannerId++; 
        if(bannerId>=banners.length) {bannerId = 0;}
       
   }

