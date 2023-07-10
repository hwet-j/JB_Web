<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml" lang="ko" >
<head>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="Content-Script-Type" content="text/javascript">
<meta http-equiv="Content-Style-Type" content="text/css">
<meta http-equiv="X-UA-Compatible" content="IE=edge, chrome=1">

<title>B조홈페이지::회원가입</title>

<link href="<%=request.getContextPath() %>/css/join.css" rel="stylesheet" type="text/css" />


<script src="<%=request.getContextPath() %>/js/jquery-3.7.0.min.js" type="text/javascript"></script>
<%-- <script type="text/javascript" src="<%=request.getContextPath() %>/js/jquery-migrate-1.2.1.min.js"></script> --%>

<script src="<%=request.getContextPath() %>/js/chk_member_info.js" type="text/javascript"></script>
<script src="<%=request.getContextPath() %>/js/chk_password.js" type="text/javascript"></script>

<script>

var idChkResult = false;
var nicknameChkResult = false;
var telnumberChkResult = false;
var passwordChkResult = false;
var password1ChkResult = false;


var ajaxCall = function (method, arg) {
    var args = [].slice.call(arg);
    var param = args.join();
    $.ajax({
        type: "POST",
        data: {"mode":method, "data":param},
        dataType: "json",
        contentType: "application/x-www-form-urlencoded; charset=EUC-KR",
        url: "/zboard/auth/member_ajax_check.php",
        success: function(data) {
            if (data.responseArray.length > 0) {
                for (var i = 0, len = data.responseArray.length; i < len; i++) {
                    var row = data.responseArray[i];
                    if(method=='id_check'){
                        $("#id_message_span").text(row.msg);
                        idChkResult = row.type == 'alert' ? false : true;
                    }else if(method == 'name_check'){
                        $("#nickname_message_span").text(row.msg);
                        nicknameChkResult = row.type == 'alert' ? false : true;
                    }else if(method == 'tel_check'){
                        $("#tel_message_span").text(row.msg);
                        telnumberChkResult = row.type == 'alert' ? false : true;
                    }else if(method == 'send_mail'){
                    	document.getElementById("ing").style.display = "none";
                    	if (row.msg == "") return;
                    	else $('#mail_message_span').text(row.msg);
                    	if (row.type == 'confirm') {
                   	        document.forms['write'].elements['email'].readOnly = true;
                   	        document.getElementById('send_flag').value = '1';
                    	}

                    }

                }
            } else {
                alert('시스템 오류입니다. 관리자에게 문의하세요');
            }
        }
    });
}



var xajax_id_check = function() { ajaxCall("id_check", arguments); };
var xajax_name_check = function() { ajaxCall("name_check", arguments); };
var xajax_tel_check = function() { ajaxCall("tel_check", arguments); };
var xajax_send_mail = function() { ajaxCall("send_mail", arguments); };

var check_ing = -1;
var birth_day = '940120';


function check_submit()
 {

     if(!idChkResult){
         $('#user_id').focus();
     }else if(!passwordChkResult){
         $('#password').focus();
     }else if(!password1ChkResult){
         $('#password1').focus();
     }else if(!nicknameChkResult){
         $('#user_nickname').focus();
     }else if(check_ing == 1){
    	 alert('가입 진행중입니다');
     } else{
    	 check_ing = 1;
         document.forms['write'].submit();
     }
  }


$(document).ready(function() {
	
	// 생일 최소,최대 날짜 설정
	const today = new Date();
    const max_year = today.getFullYear() - 10;
    const max_month = String(today.getMonth() + 1).padStart(2, '0');
    const max_day = String(today.getDate()).padStart(2, '0');
    const maxDate = max_year + '-' + max_month + '-' + max_day;
    
    const min_year = today.getFullYear() - 80;
    const min_month = String(today.getMonth() + 1).padStart(2, '0');
    const min_day = String(today.getDate()).padStart(2, '0');
    const minDate = min_year + '-' + min_month + '-' + min_day;
    $('#birth_date').attr('max', maxDate);
    $('#birth_date').attr('min', minDate);

    
    // 각 속성별 규칙을 잘 적용했는가 확인
    
    // blur은 포커스를 잃을 때 발생하는 이벤트 
	$('#user_id').blur(function(){
		
		// 아이디 규칙 숨기기
		$("#id_info_span").hide();
		
		// 아이디를 소문자로 받아와 id변수에 변환된 소문자 값을 저장 (아이디에 대문자 사용불가 - 대문자 작성시 소문자소 변경됨)
		var id = $('#user_id').val().toLowerCase();
		$('#user_id').val(id);

		// 외부 js파일에 존재하는 함수를 불러와 실행해 조건에 맞는 메시지를 반환
		var result_obj = chkUserId(id);
		// -> result_obj는 js파일에 선언된 대로 msg와 flag값을 가지고있음
		
		// flag는 조건에 맞는지 확인하여 사용가능하면 true, 그렇지 않으면 false를 반환함 
		idChkResult = result_obj.flag;

		// msg에는 함수로부터 받아온 메시지를 출력 flag가 true일때는 공백을 가져옴 
		$("#id_message_span").text(result_obj.msg);
		
		// 조건에 맞아 true로 설정되었으면 
		if(idChkResult == true){
			xajax_id_check(id);
		}
	});

	$('#user_nickname').blur(function(){

		$("#nickname_info_span").hide();

		var nickname = $('#user_nickname').val();

		var result_obj = chkUserNinkName(nickname);
		nicknameChkResult = result_obj.flag;

		$("#nickname_message_span").text(result_obj.msg);

		if(nicknameChkResult == true){
			xajax_name_check(nickname);
		}

	});
	
	$('#phonenum').blur(function(){

		$("#tel_info_span").hide();

		var phonenum = $('#phonenum').val();

		var result_obj = chkUserTelNum(phonenum);
		telnumberChkResult = result_obj.flag;

		$("#tel_message_span").text(result_obj.msg);

		if(telnumberChkResult == true){
			ss(phonenum);
		}

	});

	
	$('#password').blur(function(){
		var password = $('#password').val();
		var user_id = $("#user_id").val();
		$("#password_info_span").hide();

		// reset password1
		$('#password1').val('');
		$("#password1_message_span").text('');
		password1ChkResult = false;

		// check password
		var pwdChk = chkPassword(password, user_id);
		passwordChkResult = pwdChk['flag'];

		if(passwordChkResult){
            if(password.indexOf(birth_day) != -1){
				passwordChkResult = false;
				pwdChk['msg'] = "생년월일은 비밀번호로 사용하실 수 없습니다.";
            }
		}

		$("#password_message_span").text(pwdChk['msg']);

		// 자물쇠 (사용불가, 가능에 따라 색깔 설정 및 이미지 설정)
		if(passwordChkResult){
			$("#password_img_span").html('<span style="color:#72C55D">사용가능</span> <img src="<%=request.getContextPath() %>/images/auth/pass_ok.gif">');
		}else{
			$("#password_img_span").html("사용불가 <img src='<%=request.getContextPath() %>/images/auth/pass_no.gif'>");
		}
	});

	$('#password1').blur(function(){
		var password = $('#password').val();
		var password1 = $('#password1').val();

		// check repeated password
		var pwd1Chk = chkPassword_repeat(password, password1, passwordChkResult);
		password1ChkResult = pwd1Chk['flagR'];
		$("#password1_message_span").text(pwd1Chk['msg']);
	});

	/* 
	*************************************
	규칙 안내 말풍선  
	*************************************
	*/
	// offset(): 선택한 요소의 위치정보를 반환한다. (화면 좌측상단을 기준으로 위치값을 얻어올 수 있다. top과 left의 속성을 얻어온다.)
	// width() : 선택한 요소의 너비 값을 반환한다. (픽셀값으로 가로의 길이를 반환함)
	$('#user_id').focus(function(){
		var id_info_offset = $("#user_id").offset();
		var id_info_width = $("#user_id").width();
		var id_info_top = id_info_offset.top - 35;
		var id_info_left = id_info_offset.left + id_info_width + 20;
		$("#id_info_span").css("top", id_info_top).css("left", id_info_left).show();
		// css("top", id_info_top) : css의 top 속성의 값을 입력한 변수의 값으로 설정 : 세로 위치조정
		// css("left", id_info_left) : css의 left 속성의 값을 입력한 변수의 값으로 설정 : 가로 위치조정
		// show()는 선택한 요소를 화면에 표시합니다. 이 메서드를 활용하여 요소를 보이도록 설정가능하다.
	});

	$('#password').focus(function(){
		var id_info_offset = $("#password").offset();
		var id_info_width = $("#password").width();
		var id_info_top = id_info_offset.top - 15;
		var id_info_left = id_info_offset.left + id_info_width + 20;
		$("#password_info_span").css("top", id_info_top).css("left", id_info_left).show();
	});

	$('#user_nickname').focus(function(){
		var id_info_offset = $("#user_nickname").offset();
		var id_info_width = $("#user_nickname").width();
		var id_info_top = id_info_offset.top - 20;
		var id_info_left = id_info_offset.left + id_info_width + 20;
		$("#nickname_info_span").css("top", id_info_top).css("left", id_info_left).show();
	});
	
	$('#phonenum').focus(function(){
		var id_info_offset = $("#phonenum").offset();
		var id_info_width = $("#phonenum").width();
		var id_info_top = id_info_offset.top - 20;
		var id_info_left = id_info_offset.left + id_info_width + 20;
		$("#tel_info_span").css("top", id_info_top).css("left", id_info_left).show();
	});

	$("#id_info_span").hide();
	$("#password_info_span").hide();
	$("#nickname_info_span").hide();
	$("#tel_info_span").hide();

	//이메일 도메인 선택
    $("#selectEmailDomain").change(function() {
        var selectEmailDomain = $("#selectEmailDomain").val();
        if(selectEmailDomain == "otherDomains") {
            $("#emailDomain").val("");
            $("#selectEmailDomain").parent().hide();
            $("#emailDomain").show();
        } else {
            $("#emailDomain").val(selectEmailDomain);
        }
        $("#emailDomain").change();
    });

    //이메일 도메인 변경
    $("#emailDomain").change(function() {
        $("#email").blur();
    });
});


$(function() {
    var $window = $(window);
    var width = $window.width();
    var height = $window.height();

    setInterval(function () {
        if ((width != $window.width()) || (height != $window.height())) {
            width = $window.width();
            height = $window.height();

            $("#id_info_span").hide();
            $("#password_info_span").hide();
            $("#nickname_info_span").hide();
        }
    }, 300);
});


// 정규 표현식을 사용하여 문자열의 시작과 끝에 존재하는 공백을 제거
String.prototype.trim = function() {
    return this.replace(/(^\s*)|(\s*$)/g, "");
}
    
</script>

</head>


<br/>


<form name="write" method="post" action="#" enctype="multipart/form-data">

	<input type="hidden" name="id" value="" />

    <div class="join_box">
        <ul class="j_s_01">
            <li><a href="<%=request.getContextPath() %>/index.jsp"><img src="<%=request.getContextPath() %>/images/logo.png" alt="로고" /></a></li>
        </ul>
        
        <ul class="j_a_b">
            <li class="join_title">회원정보 입력 <span style="color:#3f5afe;">(모두 필수 항목입니다)</span></li>
            <li><span class="j_t">아이디</span> <input type="text" name="user_id" id="user_id" maxlength=20 class="inp_ty01" />
                <div class="arrow_box" id="id_info_span">
                    <span>* 아이디 생성 규칙 
                    <br> 1. 영문,숫자,-,_ 사용 가능 
                    <br> 2. 첫 글자, 마지막 글자는 영어와 숫자만 가능
                    <br> 3. 숫자와 -의 조합으로 아이디 생성 불가
                    </span>
                </div>
            <span class="j_t_i" id="id_message_span"> </span>
            </li>

            <li>
            	<span class="j_t">비밀번호</span> 
            		<input  name="password" id="password" type="password" maxlength=16 class="inp_ty01" />
            		
					<div class="arrow_box" id="password_info_span">
	                    <span>* 비밀번호 생성 규칙 
		                    <br> 1. 영대소문자,숫자,특문 중 3개 이상 조합 
		                    <br> 2. 8자 이상 16자 이하 
		                    <br> 3. 생년월일 사용불가
	                    </span>
	                </div>

				<span class="j_t_i_03" id="password_img_span"></span>
				<span class="j_t_i" id="password_message_span"></span>
			</li>
			
            <li>
            <span class="j_t">비밀번호 확인</span> 
            <input  name="password1" id="password1" type="password" maxlength=16 class="inp_ty02" />

			<span class="j_t_i" id="password1_message_span"></span>
			</li>
			
			<li>
	            <span class="j_t">이름</span> 
	            <input name="name" type="text" maxlength=20 class="inp_ty01" id="user_name" >
	            <span class="j_t_i" id="name_message_span"></span>
            </li>
			
            <li>
	            <span class="j_t">닉네임</span> 
	            <input name="nickname" type="text" maxlength=20 class="inp_ty01" id="user_nickname" >
	            <div class="arrow_box" id="nickname_info_span">
	                <span>* 닉네임 생성 규칙 
	                <br> 1. 영대소문자, 숫자 사용 가능 
	                <br> 2. 4byte 이상 20byte 이하
	                <br> 3. 특수문자 _-@!~+= 사용가능
	                <br> 4. 공백 사용제한</span>
	            </div>
	            <span class="j_t_i" id="nickname_message_span"></span>
            </li>
            
            <li>
	            <span class="j_t">성별</span> 
	            <select name="gender">
	            
				  <option value="">성별을 선택하세요</option>
				  <optgroup label="-------------------------">
				  <option value="male">남자</option>
				  <option value="female">여자</option>
				  </optgroup>
				</select>
            </li>
            
            <li>
	            <span class="j_t">생년월일</span> 
	            <input name="birth" type="date" class="inp_ty01" id="birth_date" required />
            </li>
            
            <li>
	            <span class="j_t">전화번호</span> 
	            <input type="tel" id="phonenum" name="phonenum" placeholder="000-1234-5678" pattern="[0-9]{3}-[0-9]{3,4}-[0-9]{4}" required/>
	            <div class="arrow_box" id="tel_info_span">
	                <span>* 전화번호 생성 규칙 
	                <br> 1. 000-1234-5678 의 형식을 유지
	                <br> 2. 하이픈(-)도 직접 입력
	                <br> 3. 공백 사용제한</span>
	            </div>
            </li>
            
            <li>
	            <span class="j_t">이메일</span>
	            <input name="email" id="email" type="hidden" maxlength=255 value=""  class="inp_ty01" />
	            <span><input type="email" id="email_id" name="email_id" value="" style="width: 35%;" /></span>
	            <span class="at">@</span>
	            <span class="selectWrap">
	                <select id="selectEmailDomain" name="selectEmailDomain" title="도메인 선택" style="width:93px;height: 26px;font-size: 12px;">
	                    <option value="">도메인 선택</option>
	                    <option value="naver.com">naver.com</option>
	                    <option value="hanmail.net">hanmail.net</option>
	                    <option value="daum.net">daum.net</option>
	                    <option value="nate.com">nate.com</option>
	                    <option value="gmail.com">gmail.com</option>
	                    <option value="otherDomains" boxview="true">직접 입력</option>
	                </select>
	            </span>
	            <input type="email" id="emailDomain" name="emailDomain" class="emailInput" value="" style="width:93px;display: none"/>
	
	            <span class="j_t_i" id="mail_message_span"></span>
            </li>
            

        </ul>

        <div class="btn_join_03">
            <a class="n_u_02" onclick="check_submit()"  style="cursor:pointer;">가입하기</a>
        </div>
    </div>

</form>




<!-- <IFRAME name="dummyFrame" id="dummyFrame" FRAMEBORDER="0" WIDTH="0" HEIGHT="0" SCROLLING="NO" SRC="about:blank"></IFRAME> -->
