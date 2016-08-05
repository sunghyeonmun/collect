//main
function focusIt() {
	document.inform.id.focus();// 내가 작업하고 있는 문서의 inform이라는 곳에 id에 커서를 가져다 줌
}

function checkmIt() {
	inputForm = eval("document.inform");
	if (!inputForm.id.value) {
		alert("아이디를 입력하세요.");
		inputForm.id.focus();
		return false;
	}
	if (!inputForm.passwd.value) {
		alert("패스워드를 입력하세요.");
		inputForm.passwd.focus();
		return false;
	}
}

function search(){
	url="/MVC_Accounts/MVC/searchForm.do";
	window.open(url,"post","toolbar=no ,width=500 ,height=400,directories=no,status=yes,scrollbars=yes,menubar=no");
}


//inputform
function begin() {
	document.myform.passwd.focus();
	
}


//loginform

  function checklIt(){
    if(!document.myform.id.value){
      alert("이름을 입력하지 않으셨습니다.");
      document.myform.id.focus();
      return false;
    }
    if(!document.myform.passwd.value){
      alert("비밀번호를 입력하지 않으셨습니다.");
      document.myform.passwd.focus();
      return false;
    }
    
  }

  //deleteform
  function checkdIt(){
		if(!document.myform.passwd.value){
			alert("비밀번호를 입력하지 않으셨습니다.");
			document.myform.passwd.focus();
			return false;
		}
	}

