<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
<!-- 사이드 바 구현(리모컨 기능) -->
  <div class="sidebar">
      <div class="floating-banner">
          <div id="pp_ban_right" class="ad-banner" style="width: 160px; height: 600px;">
           </div>
           
            <div class="personal-ui-box" id="tabs-container">
              <ul class="tabs">
                  <li class="shortcut_title"><a href="#">바로가기 <img src="<%= request.getContextPath() %>/images/personal_setting_icon.png"></a></li>
              </ul>
			<!-- 우측 사이드  -->
           <div class="tab-contents-container">
               <div class="tab-contents" id="tab1-contents">
                   <ul class="hotkey">
                       <li><a href="#">김현민게시판 </a></li>
                       <li><a href="#">전재권게시판 </a></li>
                       <li><a href="#">백경탁게시판 </a></li>
                       <li><a href="#">조중현게시판 </a></li>
                       <li><a href="#">김재정게시판 </a></li>
                       <li><a href="#">정회창게시판 </a></li>
                       <li><a href="#">홍진호게시판 </a></li>
                  </ul>
               </div>
           <!--/.tab-contents-->
           </div>
           <!--/.tab-contents-container-->

          </div>
          <!--/#tab-container-->

                          
      </div>
      <!--/.floating-banner-->
  </div>
  <!--/.sidebar-->