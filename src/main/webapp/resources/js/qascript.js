function QAback() {
	history.go(-1);
}
function QApwdCheck(pass){
	if(document.QABoardUPform.QApwd.value==""){
		alert("��й�ȣ�� �Է����ּ���");
		return false;
	}
	if(document.QABoardUPform.QApwd.value == pass){
		return true;
	}
	alert("��� ��ȣ�� Ʋ�Ƚ��ϴ�");
	return false;
} 

function QAlist() {
	location.href="QAlist";
}

function QAdelete(boanum){
	var url="QABoardDelete?QAseq="+boanum;
	window.open(url,"get","width=300,height=100");
	return true;
}


function QAupdate(boanum){
		location.href="QABoardUpdate?QAseq="+boanum;
	return true;
}

