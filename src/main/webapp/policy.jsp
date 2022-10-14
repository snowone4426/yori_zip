<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>이용약관</title>
</head>
<link rel="stylesheet" href="css/main.css">

<style>
.wrapper {
    display: flex;
    justify-content: center;
}

.checkDiv{
    float: right;
}

textarea {
    border: 1px solid #D4D4D4;
}

.wrapper h1{
   width: 284px;
   height: 39px;
   
   font-family: 'Inika';
   font-style: normal;
   font-weight: 400;
   font-size: 30px;
   line-height: 39px;
   
   display: flex;
   align-items: center;
   text-align: center;
   
   color: #000000;
}



</style>

<body>

<jsp:include page="nav.jsp"/>

<div class="wrapper" align="center">   
<form method="post" name="policyForm" id="policy_Form">

<div class="container">

<h1>서비스 이용 약관</h1>

<div class=input__check">
<h3>제 1장 총칙</h3>
<textarea rows="10" cols="120">
제 1 조 (목적)
본 약관은 OLIS(Opensource-software License Information System) 웹 사이트 (이하 "당 사이트")가 제공하는 모든 서비스(이하 "서비스")의 이용조건 및 절차, 이용자와 당 사이트간의 권리, 의무, 책임사항과 기타 필요한 사항을 규정함을 목적으로 합니다.
      
제 2 조 (약관의 효력과 변경)
1. 본 약관의 내용은 서비스 화면에 게시하거나 기타의 방법으로 회원에게 공지함으로써 효력을 발생합니다.
2. 당 사이트는 이용자가 본 약관 내용에 동의하는 것을 조건으로 이용자에게 서비스를 제공할 것이며, 이용자가 본 약관의 내용에 동의하는 경우, 당 사이트의 서비스 제공 행위 및 이용자의 서비스 사용 행위에는 본 약관이 우선적으로 적용될 것입니다.
3. 당 사이트는 본 약관을 사전 고지 없이 변경할 수 있으며, 변경된 약관은 당 사이트 내에 공지함으로써 이용자가 직접 확인하도록 할 것입니다. 이용자는 언제든지 당 사이트의 이용약관 메뉴를 통해 새롭게 갱신된 이용약관의 내용을 보실 수 있습니다. 이용자가 변경된 약관에 동의하지 아니하는 경우, 이용자는 본인의 회원등록을 취소 (회원탈퇴)할 수 있으며, 계속 사용의 경우는 약관 변경에 대한 동의로 간주됩니다. 변경된 약관은 공지와 동시에 그 효력이 발생됩니다.
        
제 3 조 (약관 외 준칙)       
본 약관에 명시되지 않은 사항은 전기통신기본법, 전기통신사업법, 정보통신윤리위원회심의규정, 정보통신 윤리강령, 저작권법 및 기타 관련 법령의 규정에 의합니다.

제 4 조 (용어의 정의)      
본 약관에서 사용하는 용어의 정의는 다음과 같습니다.
1. 이용자 : 본 약관에 따라 당 사이트가 제공하는 서비스를 받는 자.
2. 회원 : 당 사이트와 서비스 이용에 관한 계약을 체결한 자
3. 아이디(ID) : 회원 식별과 회원의 서비스 이용을 위하여 회원이 선정하고 당 사이트가 승인하는 문자와 숫자의 조합
4. 비밀번호 : 회원이 통신상의 자신의 비밀을 보호하기 위해 선정한 문자와 숫자의 조합
5. 해지 : 당 사이트 또는 회원이 서비스 이용 이후 그 이용계약을 종료 시키는 의사 표시
6. 컨텐츠 : 당 사이트에서 서비스 하는 문자, 그래픽, 파일, SW를 지칭
7. 본 약관에서 정의하지 않은 용어는 개별서비스에 대한 별도약관 및 이용규정에서 정의합니다.
</textarea>
<br><input type="checkbox" name="checkbox" id="checkbox"><label>위 약관에 동의합니다.</label>     
</div>     
       
<div class=input__check">       
<h3>제 2장 이용계약의 체결</h3>
<textarea rows="10" cols="120">
제 5 조 (이용 계약의 성립)
1. 이용계약은 신청자가 온라인으로 당 사이트에서 제공하는 소정의 가입신청 양식에서 요구하는 사항을 기록하여 가입을 완료하고 회원가입 버튼을 누르는 것으로 성립됩니다.
2. 이용계약은 회원 1인당 1개의 ID로 체결하는 것을 원칙으로 합니다.
3. 단, 유관기관 등 기관 명의로 가입하는 경우 2개의 ID를 동일인이 부여받을 수 있습니다.

제 6 조 (이용신청의 불승낙)
1. 당 사이트는 다음에 해당하는 이용신청에 대하여는 등록을 거부하거나 등록 후에라도 고지 없이 회원정보를 수정 또는 삭제할 수 있습니다.
    1. 명의도용의 경우
    2. 신청서를 허위기재한 경우
    3. 기타 신청자의 귀책사유로 이용승낙이 곤란한 경우
2. 당 사이트는 다음에 해당하는 이용신청에 대하여 승낙 제한 사유가 해소 될 때까지 승낙을 유보 할 수 있습니다.
    1. 당 사이트 설비의 여유가 없는 경우
    2. 당 사이트의 기술상 지장이 있는 경우
    3. 기타 당 사이트가 필요하다고 인정하는 경우
3. 
당 사이트는 이용신청이 불승낙 되거나 승낙을 제한하는 경우에는 이를 신청자에게 통보해야 합니다.

제 7 조 (회원정보 공유에 대한 동의)
1. 회원의 개인정보에 대해서는 당 사이트의 개인정보 보호방침이 적용됩니다.
2. 당 사이트의 회원 정보는 다음과 같이 수집, 사용, 관리, 보호됩니다.
    1. 개인정보의 수집: 당 사이트는 이용자의 당 사이트 서비스 가입시 이용자가 제공하는 정보를 통하여 이용자에 관한 정보를 수집합니다.
    2. 개인정보의 사용: 당 사이트는 당 사이트 서비스 제공과 관련해서 수집된 회원의 신상 정보를 본인의 승낙 없이 제3자에게 누설, 배포하지 않습니다. 단, 전기통신기본법 등 법률의 규정에 의해 국가기관의 요구가 있는 경우, 범죄에 대한 수사상의 목적이 있는 경우 또는 기타 관계법령에서 정한 절차에 따른 요청이 있는 경우에는 그러하지 않습니다.
    3. 개인정보의 관리: 이용자는 개인정보의 보호 및 관리를 위하여 당 사이트의 개인정보 관리에서 수시로 이용자의 개인정보를 수정/삭제할 수 있습니다. 수신되는 정보 중 불필요하다고 생각되는 부분도 변경/조정할 수 있습니다.
    4. 개인정보의 보호: 이용자의 개인정보는 오직 이용자만이 열람/수정/삭제 할 수 있으며, 이는 전적으로 이용자의 ID와 비밀번호에 의해 관리되고 있습니다. 따라서 타인에게 본인의 ID와 비밀번호를 알려주어서는 아니되며, 작업 종료 시에는 반드시 로그아웃 해주시고, 웹 브라우저의 창을 닫아주시기 바랍니다. (이는 타인과 컴퓨터를 공유하는 인터넷 카페나 도서관 같은 공공장소에서 컴퓨터를 사용하는 경우에 이용자의 정보의 보호를 위하여 필요한 사항입니다)
3. 회원이 당 사이트에 본 약관에 따라 이용신청을 하는 것은 당 사이트가 본 약관에 따라 신청서에 기재된 회원정보를 수집, 이용하는 것에 동의하는 것으로 간주됩니다.

제 8 조 (정보 제공 및 홍보물 개제)
1. 당 사이트는 서비스를 운영함에 있어서 각종 정보를 당 사이트에 게재하는 방법 등으로 회원에게 제공할 수 있습니다.
2. 당 사이트는 서비스에 적절하다고 판단되거나 활용 가능성 있는 홍보물을 게재할 수 있습니다.

제 9 조 (이용자의 정보 보안)
1. 가입 신청자가 당 사이트 회원가입 절차를 완료하는 순간부터 이용자는 입력한 정보의 비밀을 유지할 책임이 있으며, 회원의 ID와 비밀번호를 사용하여 발생하는 모든 결과에 대한 책임은 회원본인에게 있습니다.
2. ID와 비밀번호에 관한 모든 관리의 책임은 회원에게 있으며, 회원의 ID나 비밀번호가 부정하게 사용되었다는 사실을 발견한 경우에는 즉시 당 사이트에 신고하여야 합니다. 신고를 하지 않음으로 인한 모든 책임은 회원 본인에게 있습니다.
3. 이용자는 당 사이트 서비스의 사용 종료시 마다 정확히 접속을 종료하도록 해야 하며, 정확히 종료하지 아니함으로써 제3자가 이용자에 관한 정보를 이용하게 되는 등의 결과로 인해 발생하는 손해 및 손실에 대하여 당 사이트는 책임을 부담하지 아니합니다.
</textarea>        
<br><input type="checkbox" name="checkbox" id="checkbox"><label>위 약관에 동의합니다.</label>  
</div>  
  
<div class=input__check">  
<h3>제 3장 서비스의 이용</h3>
<textarea rows="10" cols="120">
제 10 조 (서비스의 이용 시간)
1. 서비스 이용시간은 당 사이트의 업무상 또는 기술상 특별한 지장이 없는 한 연중 무휴, 1일 24시간을 원칙으로 합니다.
2. 제1항의 이용시간은 정기점검 등의 필요로 인하여 당 사이트가 정한 날 또는 시간은 예외로 합니다.

제 11 조 (서비스의 중지 및 정보의 저장과 사용)
1. 이용자는 당 사이트 서비스로 인해 발생된 컨텐츠를 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 국가의 비상사태, 정전, 당 사이트의 관리 범위 외의 서비스 설비 장애 및 기타 불가항력에 의하여 보관되지 못 하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 당 사이트는 관련 책임을 부담하지 아니합니다.
2. 당 사이트가 정상적인 서비스 제공(컨텐츠 포함)의 어려움으로 인하여 일시적으로 서비스를 중지하여야 할 경우에는 서비스 중지 1주일 전에 고지한 후 컨텐츠 등 당 사이트의 서비스를 중지할 수 있으며, 이 기간 동안 이용자가 고지내용을 인지하지 못한 데 대하여 당 사이트는 책임을 부담하지 아니합니다. 부득이한 사정이 있을 경우 위 사전 고지 기간은 감축되거나 생략될 수 있습니다. 또한 당 사이트 서비스 중지에 따라 발생된 컨텐츠가 보관되거나 전송된 메시지 및 기타 통신 메시지 등의 내용이 보관되지 못하였거나 삭제된 경우, 전송되지 못한 경우 및 기타 통신 데이터의 손실이 있을 경우에 대하여도 당 사이트는 책임을 부담하지 아니합니다.
3. 당 사이트의 사정으로 서비스를 영구적으로 중단하여야 할 경우 제 2 항에 의거합니다. 다만, 이 경우 사전 고지기간은 1개월로 합니다.
4. 당 사이트는 사전 고지 후 서비스를 일시적으로 수정, 변경 및 중단할 수 있으며, 이에 대하여 이용자 또는 제3자에게 어떠한 책임도 부담하지 아니합니다.
5. 당 사이트는 이용자가 본 약관의 내용에 위배되는 행동을 한 경우, 임의로 서비스 사용을 제한 및 중지할 수 있습니다. 이 경우 당 사이트는 위 이용자의 접속을 금지할 수 있습니다.
</textarea>

<br><input type="checkbox" name="checkbox" id="checkbox"><label>위 약관에 동의합니다.</label>
</div>

<div class=input__check">
<h3>제 4장 서비스 사용 제한 및 계약의 해지</h3>
<textarea rows="10" cols="120">
제 12 조 (이용자의 행동규범 및 서비스 이용제한)
1. 이용자가 작성 또는 업로드 등에 따라 제공하는 정보의 내용이 허위인 것으로 판명되거나, 허위일 소지가 있다고 의심 될 만한 사유가 발생할 경우 당 사이트는 이용자가 작성 또는 업로드 등에 따라 제공하는 정보에 대한 일체의 서비스를 일부 또는 전부 중지할 수 있으며, 이로 인해 발생하는 불이익에 대해 책임을 부담하지 아니합니다.
2. 이용자가 당 사이트의 서비스를 통하여 게시, 전송, 입수하였거나 전자메일 기타 다른 수단에 의하여 게시, 전송 또는 입수한 모든 형태의 정보에 대하여는 이용자가 모든 책임을 부담하며 당 사이트는 어떠한 책임도 부담하지 아니합니다.
3. 당 사이트는 당 사이트가 제공한 서비스가 아닌 가입자 또는 기타 유관 기관이 제공하는 서비스의 내용상의 정확성, 완전성 및 질에 대하여 보장하지 않습니다. 따라서 당 사이트는 이용자가 위 내용을 이용함으로 인하여 입게 된 모든 종류의 손실이나 손해에 대하여 책임을 부담하지 아니합니다.
4. 이용자는 본 서비스를 통하여 다음과 같은 행동을 하지 않는데 동의합니다.
    1. 타인의 아이디(ID)와 비밀번호를 도용하는 등 타인의 명예를 훼손하거나 모욕하는 행위
    2. 저속, 음란, 모욕적, 위협적이거나 타인의 프라이버시를 침해할 수 있는 내용을 전송, 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위
    3. 서비스를 통하여 전송된 내용의 출처를 위장하는 행위
    4. 해킹행위 또는 컴퓨터바이러스의 유포행위
    5. 법률, 계약에 의하여 이용할 수 없는 내용을 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위
    6. 타인의 특허, 상표, 영업비밀, 저작권, 기타 지적재산권을 침해하는 행위, 또는 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위
    7. 당 사이트의 승인을 받지 아니한 광고, 판촉물, 정크메일, 스팸, 행운의 편지, 피라미드 조직 기타 다른 형태의 권유를 게시, 게재, 전자메일 또는 기타의 방법으로 전송하는 행위.
    8. 다른 이용자의 개인정보를 수집 또는 저장하는 행위
    9. 범죄행위를 목적으로 하거나 기타 범죄행위와 관련된 행위 또는 기타 관계법령에 위배되는 행위
    10. 서비스의 안전적인 운영에 지장을 주거나 줄 우려가 있는 일체의 행위
    11. 당 사이트에 게시된 정보의 변경.
    12. 기타 전기통신법 제53조와 전기통신사업법 시행령 16조(불온통신), 통신사업법 제53조3항에 위배되는 행위
5. 당 사이트는 회원이 본 약관을 위배했다고 판단되면 회원이 당 사이트에 게시, 게재한 내용에 대해 이용자의 동의 없이 삭제할 수 있습니다.
    
제 13 조 (계약의 해지)
1. 회원이 이용계약의 해지를 필요로 하는 경우 해지하고자 하는 날의 1일전까지 (단, 해지일이 법정공휴일인 경우 공휴일 개시 2일전까지) 이에 대한 의사표시를 전자우편을 통하여 당 사이트에 신청하여야 합니다.
2. 당 사이트는 회원이 제 4장 13조의 내용을 위반하고, 당 사이트 소정의 기간 이내에 이를 해소하지 않는 경우 이용계약을 해지 할 수 있습니다.
3. 당 사이트는 2항에 의해서 계약이 해지된 회원이 다시 이용신청을 하는 경우 일정기간 그 승낙을 제한할 수 있습니다.
</textarea>
<br><input type="checkbox" name="checkbox" id="checkbox"><label>위 약관에 동의합니다.</label>
</div>

</div>

<div>

    <button type="button" name="Check All" id="CheckAll" onClick="this.value=check(this.form.checkbox)">전부 동의</button>
 
    <button type="submit" id="checkBtn" onclick="check_agree()">다음</button>

</div>

</form>
       
</div>





<jsp:include page="footer.jsp"/>

</body>


<script>
// type="text/javascript"
//<a href="memberMain.jsp">

/**/
 //버튼에onClick="this.value=check(this.form.checkbox)"
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

/*
const form = document.querySelector('#policy_Form');
const checkAll = document.querySelector('.click_button_all button');
const checkBoxes = document.querySelectorAll('.input__check input');
const submitButton = document.querySelector('#checkBtn');

const agreements = {
		checkbox_o : false,
		checkbox_t : false,
		checkbox_th : false,
		checkbox_f : false
};

form.addEventListener('submit', (e) => e.preventDefault()); // 새로고침(submit) 되는 것 막음

checkBoxes.forEach((item) => item.addEventListener('input', toggleCheckbox));

function toggleCheckbox(e) {
  const { checked, id } = e.target;  
  agreements[id] = checked;
  this.parentNode.classList.toggle('active');
  checkAllStatus();
  toggleSubmitButton();
}

function checkAllStatus() {
  const { checkbox_o, checkbox_t, checkbox_th, checkbox_f } = agreements;
  if (checkbox_o && checkbox_t && checkbox_th && checkbox_f) {
    checkAll.checked = true;
  } else {
    checkAll.checked = false;
  }
}

function toggleSubmitButton() {
  const { checkbox_o, checkbox_t, checkbox_th, checkbox_f } = agreements;
  if (checkbox_o && checkbox_t && checkbox_th && checkbox_f) {
    submitButton.disabled = false;
  } else {
    submitButton.disabled = true;
  }
}

checkAll.addEventListener('click', (e) => {
  const { checked } = e.target;
  if (checked) {
    checkBoxes.forEach((item) => {
      item.checked = true;
      agreements[item.id] = true;
      item.parentNode.classList.add('active');
    });
  } else {
    checkBoxes.forEach((item) => {
      item.checked = false;
      agreements[item.id] = false;
      item.parentNode.classList.remove('active');
    });
  }
  toggleSubmitButton();
});
*/
</script>


</html>