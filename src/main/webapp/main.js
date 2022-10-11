


function procBanner(){
    alert("레시피아이디 : "+banners[bannerId].recipeId);      // 여기다가 검색 페이지로 이동하는거 구현해야함

}

function setBannerInterval(){
    
        var obj = document.getElementById("cake");                  
       
        //alert(bannerId);
        obj.src=banners[bannerId].photo;

        bannerId++; 
        if(bannerId>=banners.length) {bannerId = 0;}
       
   }

