
//<a href="memberMain.jsp">
var checkflag = "false";
function check(field) {
if (checkflag == "false") {
for (i = 0; i < field.length; i++) {
field[i].checked = true;}
checkflag = "true";
//return "Uncheck All"; 
}
else {
for (i = 0; i < field.length; i++) {
field[i].checked = false; }
checkflag = "false";
//return "Check All"; 
}
}

function check_agree() {
	if (document.getElementById('checkbox').checked == true){
   		
   		location.href = "memberMain.jsp";
  	} else {
  		alert("가입하시려면 모든 약관에 동의하셔야합니다.");
  	}
 }
