<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script src="https://www.googleoptimize.com/optimize.js"></script>
<script src='//www.googletagservices.com/tag/js/gpt.js' async="async"></script> 

<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/stylesheet_newest.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath() %>/css/index_page_newest.css" />
<link rel="shortcut icon" href="<%= request.getContextPath() %>/favicon.ico" />

<script type="text/javascript" src="<%= request.getContextPath() %>/js/default3.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery-1.11.2.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery-migrate-1.2.1.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.rolling.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.elipsis.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/writeCapture.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.writeCapture.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.hotkeys-0.7.8.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/load-hotkey.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.cookie.js" ></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/jquery.bxslider.min.js"></script>
<script type="text/javascript" src="<%= request.getContextPath() %>/js/main.js"></script>



<!-- 최상단 logo 및 검색  -->
 <div class="inx_header">
     <div class="inx_wrap">

         <a href="<%= request.getContextPath() %>/index.jsp" class="logo"><img src="<%= request.getContextPath() %>/images/logo.png" width="195" height="41"/></a>
		<span class="slogan">중앙정보처리</span>

             <form method="get" name="search1" style="" action="https://www.ppomppu.co.kr/search_bbs.php">
                 <div class="input-search"><input type="text" name="keyword" style="float:left;width:97%" value="방탄소년단" />
             </div>
                 <button type="submit" class="btn btn-search"></button>
             </form>
     </div>
 </div>


<!-- 메뉴 설정 Top navigation  -->
            <div class="top-nav inx">
                <ul>
                
                	<!-- 메인 메뉴   -->
                    <li class="menu01 "><a href="#" class="menu">메인</a>
	                    <div class="sub-menu">
	                     	<ul>
	                          <li><a href="#">메뉴1</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
							</ul>
	                    </div>
                    </li>
                
                	<!-- 김현민 메뉴   -->
                    <li class="menu02 "><a href="#" class="menu">김현민</a>
	                    <div class="sub-menu">
	                     	<ul>
	                          <li><a href="#">메뉴1</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
							</ul>
	                    </div>
                    </li>
                    
                    
                 	<!-- 백경탁 메뉴   -->  
                    <li class="menu03 "><a href="#" class="menu">백경탁</a>
                        <div class="sub-menu">
                            <ul>
                              <li><a href="#">메뉴1</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
                            </ul>
                        </div>
                    </li>
                    
                    <!-- 전재권 메뉴   -->
                    <li class="menu04 "><a href="#" class="menu">전재권</a>
                        <div class="sub-menu">
                            <ul>
                              <li><a href="#">메뉴1</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
                            </ul>
                        </div>
                    </li>
                    
                    <!-- 조중현 메뉴   -->
                    <li class="menu05 "><a href="#" class="menu">조중현</a>
                        <div class="sub-menu">
                            <ul>
                              <li><a href="#">메뉴1</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
                            </ul>
                        </div>
                    </li>
                    
                    <!-- 김재정 메뉴 -->
                    <li class="menu06 "><a href="#" class="menu">김재정</a>
                        <div class="sub-menu">
                            <ul>
                              <li><a href="#">메뉴1</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
                            </ul>
                        </div>
                    </li>
                    
                    
                    <!-- 정회창 메뉴 -->
                    <li class="menu07 "><a href="#" class="menu">정회창</a>
                        <div class="sub-menu">
                            <ul>
                              <li><a href="<%=request.getContextPath() %>/hwet/board/boardmain.jsp">게시판</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
                            </ul>
                        </div>
                    </li>
                    
                    
                    <!-- 홍진호 메뉴 -->
                    <li class="menu08 "><a href="#" class="menu">홍진호</a>
                        <div class="sub-menu">
                            <ul>
                              <li><a href="#">메뉴1</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
                            </ul>
                        </div>
                    </li>
                    
                    
                    <!-- 공통 메뉴 -->
                    <li class="menu09 "><a href="#" class="menu">공지사항</a>
                        <div class="sub-menu">
                            <ul>
                              <li><a href="#">메뉴1</a></li>
	                          <li><a href="#">메뉴2</a></li>
	                          <li><a href="#">메뉴3</a></li>
                            </ul>
                        </div>
                    </li>
                    
                    
                    <!-- 
                    <li class="menu06 "><a href="https://www.ppomppu.co.kr/recent_main_article.php?type=market" class="menu">개발중...</a>
                        <div class="sub-menu">
                            <ul>
                                <li class="strong"><i class="caret"></i><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market">뽐뿌장터</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_phone">휴대폰장터</a></li>
                                <li class="new strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=ppomppu8">알리뽐뿌</a></li>
                          		<li class="new"><a href="https://www.ppomppu.co.kr/hotdeal/">뽐뿌핫딜</a></li>
                                <li class=""><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_data">데이터장터</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=onmarket">온라인장터</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_oversea">해외구매장터</a></li>
                                <li class="divider strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_bike">자전거장터</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_ecig">전자담배장터</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_car">중고차장터</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_camping">캠핑장터</a></li>
                                <li class="divider strong new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=gonggu">OTT/멤버십</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_agent">해외구매대행</a></li>
                                <li class="divider strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=market_story">장터이야기</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=relay">추천릴레이</a></li>
                            </ul>
                        </div>
                    </li>
                     -->
                    
                    <%-- 
                    <li class="menu07 extand "><a href="https://www.ppomppu.co.kr/recent_forum_article.php" class="menu">개발중...</a>
                        <i class="caret"></i>
                        공식 
                        <div class="sub-menu forum-favourite official" id="favorite-forum-panel">
                            <div class="off">
                            <ul>
                                <li class="title">휴대폰/가전</li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=phone">휴대폰포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=phone3">구입개통수령</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=phone2">휴대폰질문</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=iphone">아이폰포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=tablet">아이패드포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=android">안드로이드</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=androidtab">안드로이드탭</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=av">가전포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=mini">오디오포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=computer">컴퓨터포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="new"><a href="/zboard/zboard.php?id=pc_consult">PC견적포럼</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=nas">NAS포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">스포츠</li>
                                <li class=""><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=golf">골프포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=fishing">낚시포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=climb">등산포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=sports">스포츠포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=baseball">야구포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=soccer">축구포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=health">건강/헬스</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">경제/지역</li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=money">재테크포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=insurance">보험포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=social">쇼핑포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=stock">증권포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=soho">창업/자영업</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=bitcoin">가상화폐</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <!-- <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=defi">디파이/채굴</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li> -->
                                <li class=""><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=lotto">로또/토토</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=house">부동산포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=oversea">해외포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=china">중국포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">생활</li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=wedding">결혼/연애</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=problem">고민포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class=""><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=diabetes">당뇨포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=restaurant">맛집포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=tour">여행포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=nutrients">영양제포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=baby">육아포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=alopecia">탈모포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=carpool">카풀포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">게임/문화</li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=gameforum">게임포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=gamer">게임기포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=boardgame">보드게임</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class=""><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=mobile_game">모바일게임</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=lck">LCK포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=book">독서/e-book</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=munwha">문화포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=movie">영화포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">취미/레저</li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=diy">DIY포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=camera">사진/카메라</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=watch">시계포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=interior">인테리어</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=coffee">커피포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=car">자동차포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=bike">자전거포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=motorbike">오토바이포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=camping">캠핑포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="addon">
                                    <ul>
                                        <li class="btn-forum-bookmark">
                                            <span class="forum_bookmark unofficial-go" id=""><img src="/images/icon_informal_forum.png" alt="비공식">비공식
                                            <div class="popup-helper">
            									<div class="icon-help1">
            										<div class="popup-layer1">
                                                        <비공식포럼 안내>
                                                        <br>- 게시글 및 코멘트 등록시 포인트 점수가 부여되지 않습니다.
                                                        <br>- 게시글 본문 하단 최근 게시물 목록에 노출되지 않습니다.
            										</div>
            									</div>
                                             </div></span>
                                        </li>
                                        <li></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul>
                                <li class="title">기타</li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=f7080">30+포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=morethan40">40+포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=ai">AI그림포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=developer">개발자포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li ><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=miz">여성포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=adult">성인포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=style">스타일포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=whatever">전/현/무포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=employment">취업/학습</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="addon">
                                    <ul>
                                        <li class="btn-forum-bookmark" style="padding-top: 2px;">
                                            <span class="forum_bookmark" id="favorite-forum-edit-btn"><img src="/images/forum_plus_ico.svg" alt="즐겨찾기">즐겨찾기</span>
                                        </li>
                                        <li></li>
                                    </ul>
                                </li>
                            </ul>
                            </div>
                            비공식
                            <div class="unoff" style="display:none;">
                            <ul>
                                <li class="title">ㄱ</li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=fear">공포포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=science">과학포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=country">국가별포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=army">군대포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=nonsmoking">금연포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=smartphone">기타스마트폰</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">ㄴ~ㄹ</li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=basketball">농구포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=publictransport">대중교통</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=pet">동식물포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=streamer">동영상포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=rc">드론포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=defi">디파이/채굴</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">ㅁ</li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=mart">마트/편의점</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=animation">만화/애니</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=macintosh">맥포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=medical">메디컬포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=mungu">문구포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=stylesheet">문서/서식</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">ㅂ~ㅅ</li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=delivery_food">배달음식</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=volunteer">봉사포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class=""><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=beauty">뷰티/케어</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=ppom_baseball_team">사회인야구</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=lifesports">생활스포츠</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=swim">수영포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=ski">스키/보드</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=scuba">스킨/수쿠버</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">ㅇ</li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=idol">아이돌포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=alba">알바포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=history">역사포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=couple">연애포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=food">요리/레시피</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=fortune">운세포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=wintab">윈도우태블릿</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=music">음악/악기</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                            </ul>
                            <ul>
                                <li class="title">ㅈ</li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=alone">자취포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=e_unicycle">전동휠포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=e_cig">전자담배포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=religion">종교포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=alcohol">주류포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=offline">지역별포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=worker">직장인포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="addon" style="">
                                    <ul>
                                        <li class="btn-forum-bookmark" style="">
                                            <span class="forum_bookmark official-go" id="" style="margin-left: 4px;margin-top: 21px;"><img src="/images/icon_formal_forum.png" alt="공식포럼">공식포럼</span>
                                        </li>
                                        <li></li>
                                    </ul>
                                </li>
                            </ul>
                            <ul>
                                <li class="title">ㅊ~ㅎ/기타</li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=hobby">취미포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=tennis">테니스포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=toto">토토/프로토</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=study">학습포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=honjok">혼족포럼</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=drama">TV/드라마</a><span class="forum-favourite-icon" style="display:none;"><img src="/images/icon-forum-plus.png"></span></li>
                                <li class="addon">
                                    <ul>
                                        <li class="btn-forum-bookmark" >
                                            <span class="forum_bookmark" id="favorite-forum-unoff-edit-btn" style="margin-top:38px"><img src="/images/forum_plus_ico.svg" alt="즐겨찾기">즐겨찾기</span>
                                        </li>
                                        <li></li>
                                    </ul>
                                </li>
                            </ul>
                            </div>
                        </div>
                    </li>
                     --%>
                    
                    <!-- 
					<li class="menu08 extand02 extand02_2 "><a href="https://www.ppomppu.co.kr/recent_main_article.php?type=news" class="menu">개발중...</a>
                    <i class="caret"></i>
                        <div class="sub-menu">
                            <ul>
                                <li class="title">뉴스</li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/recent_main_article.php?type=news">전체뉴스</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news_broadcast">방송/연예</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news_sports">스포츠</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news_pol_eco">정치</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news_economy">경제</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news_society">사회</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news_culture">문화</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news_life">라이프</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news_travel">여행</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news2">IT/테크</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=news">뉴스참여</a></li>
                            </ul>
                            <ul>
                                <li class="title">영상</li>
                                <li class="strong"><a href="/recent_youtube.php">전체영상</a></li>
                                <li><a href="/recent_youtube.php?category=1">예능</a></li>
                                <li><a href="/recent_youtube.php?category=2">이슈</a></li>
                                <li><a href="/recent_youtube.php?category=3">스포츠</a></li>
                                <li><a href="/recent_youtube.php?category=4">자동차</a></li>
                                <li><a href="/recent_youtube.php?category=5">취미</a></li>
                                <li><a href="/recent_youtube.php?category=6">건강/헬스</a></li>
                                <li><a href="/recent_youtube.php?category=7">부동산</a></li>
                                <li><a href="/recent_youtube.php?category=8">일상</a></li>
                                <li><a href="/recent_youtube.php?category=9">게임/음악</a></li>
                                <li><a href="/recent_youtube.php?category=10">리뷰</a></li>
                            </ul>
                        </div>
                    </li>
                     -->
                     
                     
                    <!-- 
					<li class="menu09 extand02 "><a href="https://www.ppomppu.co.kr/recent_main_article.php?type=consult" class="menu">개발중...</a>
                        <i class="caret"></i>
                        <div class="sub-menu">
                            <ul>
                                <li class="title">경제/자동차</li>
                                <li class="strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=consulting">보험상담</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=loan_consult">대출상담</a></li>
                                                                <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=tele_consult">인터넷가입상담</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=card_consult">카드상담</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=rental_consult">렌탈상담</a></li>
                                <li class="divider strong"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=car_service">신차견적상담</a></li>
                            </ul>
                            <ul>
                                <li class="title">생활/전문가</li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=wedding_consult">웨딩상담</a></li>
                                <li><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=move_consult">이사상담</a></li>
                                <li style="letter-spacing:-2px !important;"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=security_guard_consult">보안경비상담</a></li>
                                                                <li class="strong"><a href="/zboard/zboard.php?id=etc_consult">가전견적상담</a></li>
                                <li class="divider"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=law_consult">법률상담</a></li>
                                <li class="new"><a href="https://www.ppomppu.co.kr/zboard/zboard.php?id=tax_consult">경영지원상담</a></li>
                            </ul>
                        </div>
                    </li>
                     -->
                </ul>
                
            </div>
            <!-- //Top navigation -->