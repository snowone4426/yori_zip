const reader = new FileReader();
 reader.onload = (readerEvent) => {
     document.querySelector("#preview").setAttribute("src", readerEvent.target.result);
 };
 
 document.querySelector("#inputImg").addEventListener("change", (changeEvent) => {

 const imgFile = changeEvent.target.files[0];
 reader.readAsDataURL(imgFile);		 
	 
 })




function passConfirm(){
		
	var passwordConfirm = document.getElementById("password_check");
	var confrimMsg = document.getElementById('confirmMsg');
		
	if(password.value == passwordConfirm.value){
		confirmMsg.style.color = correctColor;
		confirmMsg.innerHTML ="비밀번호가 일치합니다";
	}else{
		confirmMsg.style.color = wrongColor;
		confirmMsg.innerHTML ="비밀번호가 일치하지 않습니다";
	}
			
}



var password = document.getElementById('memberPw');
var correctColor = "#00ff00";
var wrongColor ="#ff0000";
var buttonColor ="#666666";



function check(){
	 window.open("emailCheck.jsp", "a", "width=400, height=300, left=100, top=50");	 
 }



function nickCheck(){
	window.open("nickCheck.jsp", "a", "width=400, height=300, left=100, top=50");
}

 
const emailForm = document.querySelector('#member_email');
const pwdForm = document.querySelector('#memberPw');
const pwdCheck = document.querySelector('#password_check');
const nickForm = document.querySelector('#memeber_nick');
const answerForm = document.querySelector('#answer');
const registerBtn = document.querySelector('#registerBtn');

emailForm.addEventListener('keyup', activeEvent);
pwdForm.addEventListener('keyup', activeEvent);
pwdCheck.addEventListener('keyup', activeEvent);
nickForm.addEventListener('keyup', activeEvent);
answerForm.addEventListener('keyup', activeEvent);
registerBtn.addEventListener('click', errorEvent);


function activeEvent() {
	  switch(!(emailForm.value && pwdForm.value && pwdCheck.value && nickForm.value && answerForm.value)){
	    case true : registerBtn.disabled = true;
	    break;
	    case false : registerBtn.disabled = false; 
	    break;
	  }
}