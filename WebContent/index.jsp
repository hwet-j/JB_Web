<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="Content-Script-Type" content="text/javascript" />
<meta http-equiv="Content-Style-Type" content="text/css" />
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta name="author" content="" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<meta name="og:title" content="B조" />
<meta name="og:description" content="잡다" />

<script>var googletag = googletag || {};googletag.cmd = googletag.cmd || [];var display_googletags = display_googletags || [];</script>



<title>B조 홈페이지</title>


<link rel="apple-touch-icon" href="<%= request.getContextPath() %>/images/nn128.jpeg" />

<script>
var G_HOME_URL    = "<%= request.getContextPath() %>/index.jsp";
var G_WWW_URL     = "<%= request.getContextPath() %>";
var G_WWW_REL_URL = "<%= request.getContextPath() %>";
var G_MOB_URL     = "<%= request.getContextPath() %>";
var G_MOB_REL_URL = "<%= request.getContextPath() %>";
var G_NIC_URL     = "<%= request.getContextPath() %>";
var G_MEMO_URL    = "<%= request.getContextPath() %>";
var G_S_URL       = "<%= request.getContextPath() %>";
var G_HOME_SSL_URL= "<%= request.getContextPath() %>";
var G_WWW_SSL_URL = "<%= request.getContextPath() %>";
var G_MOB_SSL_URL = "<%= request.getContextPath() %>";
var G_MEMO_SSL_URL= "<%= request.getContextPath() %>";
var G_S_SSL_URL   = "<%= request.getContextPath() %>";
var G_STATIC_URL  = "<%= request.getContextPath() %>";
var G_IMG_URL     = "<%= request.getContextPath() %>";
</script>



<script type="text/javascript">
  (function(i,s,o,g,r,a,m){i['GoogleAnalyticsObject']=r;i[r]=i[r]||function(){
  (i[r].q=i[r].q||[]).push(arguments)},i[r].l=1*new Date();a=s.createElement(o),
  m=s.getElementsByTagName(o)[0];a.async=1;a.src=g;m.parentNode.insertBefore(a,m)
  })(window,document,'script','//www.google-analytics.com/analytics.js','ga');
  ga('create', 'UA-1778193-1', {'cookieDomain': 'ppomppu.co.kr'});
  ga('require', 'linkid', 'linkid.js');
  ga('send', 'pageview');
</script>

<!-- GA4 -->
<!-- Google tag (gtag.js) -->
<script async src="https://www.googletagmanager.com/gtag/js"></script>



<script>
  window.dataLayer = window.dataLayer || [];
  function gtag(){dataLayer.push(arguments);}
  gtag('js', new Date());
  
  gtag('config', 'G-641CFJ8BV0', {'cookieDomain': 'ppomppu.co.kr'});
  gtag('require', 'linkid', 'linkid.js');
  gtag('send', 'pageview');
</script>


<script type="text/javascript">

$(document).ready(function(){
    $(document).on('click', '.unofficial-go', function(){
        $('.forum-favourite .off').hide();
        $('.forum-favourite .unoff').show();
        //set_cookie('forum_sub_tab', 2, 9999);
    });

    $(document).on('click', '.official-go', function(){
        $('.forum-favourite .unoff').hide();
        $('.forum-favourite .off').show();
        //set_cookie('forum_sub_tab', 0, 9999);
    });

    
});

var hotKeyVar = new function() { this.enable = true; this.keys = ['a','f','z','h','0','1','2','3','4','5','6','7','8','9']; this.links = ['https://www.ppomppu.co.kr',
	'https://www.ppomppu.co.kr/recent_forum_article.php','http://www.google.co.kr','https://www.ppomppu.co.kr/hot.php',
	'https://www.ppomppu.co.kr/recent_main_article.php?type=market','https://www.ppomppu.co.kr/zboard/zboard.php?id=ppomppu',
	'https://www.ppomppu.co.kr/zboard/zboard.php?id=event2','https://www.ppomppu.co.kr/zboard/zboard.php?id=buy','https://www.ppomppu.co.kr/zboard/zboard.php?id=help',
	'https://www.ppomppu.co.kr/zboard/zboard.php?id=freeboard','https://www.ppomppu.co.kr/zboard/zboard.php?id=etc_info',
	'https://www.ppomppu.co.kr/zboard/zboard.php?id=free_gallery','https://www.ppomppu.co.kr/zboard/zboard.php?id=news2','https://www.ppomppu.co.kr/zboard/zboard.php?id=review2']; };
</script>

<script type="text/javascript">
function setNoticeLayers(name,value,expiredays){
	var todayDate = new Date();
	todayDate.setDate(todayDate.getDate() + expiredays);
	document.cookie = name + "=" + escape( value ) + "; path=/; expires=" + todayDate.toGMTString() + ";"
}
function closeNoticeLayers(cookiename,layername,closename,expiredays) {
	if (document.getElementById(closename).checked == true) {
		setNoticeLayers(cookiename, "done" ,expiredays);
	}
	document.getElementById(layername).style.display = "none";
}
</script>



<script type="text/javascript">
//<![CDATA[
    function zb_login_check_submit() {
        var $user_id = $("form[name='zb_login'] input[id='user_id']");
        var $password = $("form[name='zb_login'] input[name='password']");
        if ($user_id.val() === "") {
            alert("아이디를 입력하여 주십시요");
            $user_id.focus();
            return false;
        }
        if ($password.val() === "") {
            alert("비밀번호를 입력하여 주십시요");
            $password.focus();
            return false;
        }
        return true;
    }
    function check_autologin() {
        var $auto_login = $("form[name='zb_login'] input[name='auto_login']");
        if ($auto_login.attr('checked')) {
            var check;
            check = confirm("자동 로그인 기능을 사용하시겠습니까?\n\n자동 로그인 사용시 다음 접속부터는 로그인을 하실필요가 없습니다.\n\n단, 게임방, 학교등 공공장소에서 이용시 개인정보가 유출될수 있으니 주의해주세요");
            if (check === false) {
                $auto_login.attr('checked', false);
            }
        }
    }
//]]>
</script>

</head>

<body>

<div class="wrapper">

	<!-- 사이드 리모컨 메뉴 include -->
	<!-- 각자 페이지마다 다르게 구현 하여 include -->
	<%@ include file="mainremote.jsp"%>
	
	<div class="contents">
		
		<!-- .wrapper .contents 내부에 작성 -->
		<!-- 상위 메뉴 include -->
		
		<%@ include file="nav.jsp" %>
		


 <!-- ST container ST -->
<div class="container">


	<!-- ST Left Section ST -->
	<div class="left">

		<!-- Latest post -->
		<div class="latest">
			<div class="title">
				<div class="cate_nav">
		          <ol>
		           	<li data-id='best' class="on">인기글</li>
		           	<li data-id='new'>최신글</li>
		           	<li data-id='comment'>HOT코멘트</li>
		          </ol>
		
		           <p id="new_go_button_best" style="display:block"><a href="#" class="ad_view" > + 더보기</p>
		           <p id="new_go_button_new" style="display:none"><a href="#" class="ad_view"> + 더보기</p>
		           <p id="new_go_button_comment" style="display:none"><a href="#" class="ad_view" > + 더보기</p>
		
		        </div>
		    </div>
				<ul id="new_bbs_best">
			        <li>
			        	<a href='#' class='category'><strong>카테고리1</strong></a>
			        	<a href='#' onclick="PVchecker.log('https://s.ppomppu.co.kr/inform_ad_click.php?p=bm90aWNlX3B2X2NsaWNrfDExNzQ%3D');" class='title'><span style='color:#1264b1;'>게시판 분류1의 인기게시글</span></a></span><span class="comment-count">19</span>
		        	</li>
			        <li>
			        	<a href="#" class="category">카테고리2</a>
			        	<a href="#" class="title">게시판 분류2의 인기게시글</a><span class="comment-count">6</span>
		        	</li>
			        <li>
			        	<a href="#" class="category">카테고리3</a>
			        	<a href="#" class="title">게시판 분류3의 인기게시글</a><span class="comment-count">76</span>
		        	</li>
			        <li>
			        	<a href="#" class="category">카테고리4</a><a href="#" class="title">게시판 분류4의 인기게시글</a><span class="comment-count">39</span>
		        	</li>
			        <li class="ad">
			        	<a href="#" class="category"><strong>광고</strong></a>
			        	<a href="#" class="title"><strong>[인터넷가입] 현금 47만원 당일입금 + 추가혜택</strong></a><span class="comment-count">12</span><br>
			        	<a href="#" class="category"><strong>광고</strong></a>
			        	<a href="#" class="title"><strong>[에누리] LG 70인치 UHD TV 69만원 구매 찬스!</strong></a><span class="comment-count">50</span>
		        	</li>
		        </ul>
		        
		</div>
    </div>
    <!-- ED Left Section ED -->


    





			<!-- ST Right Section ST -->
		    <div class="right">
		     <!-- Login -->

			<!-- ST 로그인 ST -->
			<div class="login_box" style="height:100%; float: inherit;">
			    <p><a href="<%= request.getContextPath() %>/login.jsp"><img src="<%= request.getContextPath() %>/images/main/btn_login.jpg"></a></p>
			</div>

			<div class="login_box" style="border-bottom:0px;height:100%;">
			    <ul>
			        <li class="user_info_04" style="clear: both;">
			            <ul class="login_bottom_ch">
			              <li class="join"><a href="<%= request.getContextPath() %>/join.jsp"><b>회원가입</b></a></li>
			              <li>
			                 <ul class="find_ch">
			                   <li><a href="#" target="_blank">아이디찾기</a></li>
			                   <li class="line_sun">|</li>
			                   <li><a href="#" target="_blank">비밀번호찾기</a></li>
			                 </ul>
			             </li>
			            </ul>
			       </li>
			       <li class="user_info_03 user_out">
			            <a href="javascript:;" id="user_box_article" class=""><img src="<%= request.getContextPath() %>/images/tab_ico.png" alt="말풍선">커뮤니티 인기글</a>
			            <a href="javascript:;" id="user_box_comment" class="on"><img src="<%= request.getContextPath() %>/images/notice_ico.png" alt="공지사항">공지사항<img src="<%= request.getContextPath() %>/images/ico_new.gif" id="user_box_notice_new_icon" style="display:none;margin:-2px 0 0 5px;"></a>
			       </li>
			
			    </ul>
			</div>



			<!-- 로그인 밑에 인기글, 공지사항 태그  어떻게 구현되는지 알아야 사용가능할듯 -->
			<div id="user_box_content00" class="list_pop_menu01 user_box_out user_box_out1" style="display:none;">
			    <ul class="imgbox">
			        <li><a href="https://www.ppomppu.co.kr/zboard/view.php?id=freeboard&no=8374555"
			            style="background-image: url('//cdn.ppomppu.co.kr/zboard/data3/2023/0629/20230629174143_GaMYdVMUXC.jpg');background-size: cover;"></a></li>
			        <li class="img_title">
			            <a href="https://www.ppomppu.co.kr/zboard/view.php?id=freeboard&no=8374555">
			            <h3 class="forumTitle">허벅지 문신을 후회하는 처자.jpg</h3>
			            <div class="forumCont">자유게시판</div></a>
			        </li>
			    </ul>
			    <ul class="txt_title">
			                <li class=""><a href="https://www.ppomppu.co.kr/zboard/view.php?id=freeboard&no=8374460"><span>[50억] 오퀴즈 16시 30분 정답</span><span class="countNum"><img src="/images/reco_ico.png" alt="댓글">6</span><span class="countName">자유게시판</span></a></li>
			                <li class=""><a href="https://www.ppomppu.co.kr/zboard/view.php?id=freeboard&no=8374537"><span>제로 음료 ㅈ됐네요 ㄷ</span><span class="countNum"><img src="/images/reco_ico.png" alt="댓글">93</span><span class="countName">자유게시판</span></a></li>
			                <li class=""><a href="https://www.ppomppu.co.kr/zboard/view.php?id=freeboard&no=8374419"><span>삼성 또 이상한 콜라보하네.. ㄷㄷ.jpg</span><span class="countNum"><img src="/images/reco_ico.png" alt="댓글">37</span><span class="countName">자유게시판</span></a></li>
			                <li class=""><a href="https://www.ppomppu.co.kr/zboard/view.php?id=freeboard&no=8374513"><span>너덜너덜해지고있는 GS자이..Blind</span><span class="countNum"><img src="/images/reco_ico.png" alt="댓글">44</span><span class="countName">자유게시판</span></a></li>
			                <li class=""><a href="https://www.ppomppu.co.kr/zboard/view.php?id=freeboard&no=8374517"><span>은근히 실물 쩐다는 댄서 리정.gif</span><span class="countNum"><img src="/images/reco_ico.png" alt="댓글">37</span><span class="countName">자유게시판</span></a></li>
			     </ul>
			</div>


			<div id="user_box_content" class="list_pop_menu01 user_box_out user_box_out2" style="display:block;">
			    <p><span style='color:#ff0000; max-width:260px; text-overflow:ellipsis; overflow:hidden; white-space:nowrap;'><strong>[필독]</strong></span>
			        <a href="/zboard/view.php?id=faq&no=30">이용규칙</a> /
			        <a href="/zboard/view.php?id=faq&no=2">포인트 레벨정책</a> /
			        <a href="/zboard/view.php?id=regulation&no=19">불법촬영물 신고</a></p>
			    <ul class='clearfix'>
			                    <li><a href="/zboard/view.php?id=notice&no=1050">
			                <span style='float:left; max-width:260px; display:inline-block; text-overflow:ellipsis; overflow:hidden; white-space:nowrap;'><strong>[공지]</strong> 30+포럼 서브닉네임 기능 적용 안내</a>
			                                <span class='date' style='color:#979797; float:right;'>04.13</span>
			            </li>
			                    <li><a href="/zboard/zboard.php?id=carpool">
			                <span style='float:left; max-width:260px; display:inline-block; text-overflow:ellipsis; overflow:hidden; white-space:nowrap;'><strong>[공지]</strong> 카풀 포럼 개설 [바로가기]</a>
			                                <span class='date' style='color:#979797; float:right;'>02.21</span>
			            </li>
			                    <li><a href="/zboard/zboard.php?id=ai">
			                <span style='float:left; max-width:260px; display:inline-block; text-overflow:ellipsis; overflow:hidden; white-space:nowrap;'><strong>[공지]</strong> AI그림 포럼 개설 [바로가기]</a>
			                                <span class='date' style='color:#979797; float:right;'>02.17</span>
			            </li>
			                    <li><a href="/zboard/zboard.php?id=tax_consult">
			                <span style='float:left; max-width:260px; display:inline-block; text-overflow:ellipsis; overflow:hidden; white-space:nowrap;'><strong>[공지]</strong> 경영지원상담실 오픈 [바로가기]</a>
			                                <span class='date' style='color:#979797; float:right;'>02.01</span>
			            </li>
			                
			    </ul>
			    <ul class='clearfix'>
			        <li class='ad'>
			                <a href="/zboard/view.php?id=event_ppomppu&no=769">
				        <span style="float:left; max-width:260px; display:inline-block; text-overflow:ellipsis; overflow:hidden; white-space:nowrap;">
				            <strong>[이벤트]</strong> 도서 [더 케이지] 증정 이벤트 ~07/02 | 엘리베이터가 고장났다. 그리고 그 안에 시체와 함께 갇혔다.	        </span>
				        <img src="images/ico_new.gif" class="new_icons">
				    </a>
			    </li>
			        </ul>
			</div>







		</div>
	</div>
</div>
<!-- ED container ED -->
</div>  <!--/.contents-->

<!-- Right small banner -->




<div class="floating-banner-sm">
    </div>

<!-- footer include -->
<%@ include file="footer.jsp"%>

<div class="game_popup" id="game_release_popup" style="display:none;"></div>


</body>
</html>
