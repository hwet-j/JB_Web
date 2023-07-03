/**
 * 쿠키 생성
 */
function set_cookie(cName, cValue, cDay) 
{
	var expire = new Date();
	expire.setDate(expire.getDate() + cDay);
	cookies = cName + '=' + escape(cValue) + '; path=/ '; // 한글 깨짐을 막기위해
															// escape(cValue)를
															// 합니다.
	if (typeof cDay != 'undefined')
		cookies += ';expires=' + expire.toGMTString() + ';';
	document.cookie = cookies;
}
function changeSearchFlag() {
    var search_flag = $('#search-category option:selected').val();
    $('#search_flag').attr("value", search_flag);
}

function toggleHelpLayerOn(id) {
    document.getElementById(id).style.display = '';
    if (id == 'loginsm') {
        document.zb_login.user_id.focus();
    }
}

function toggleHelpLayerOff(id) {
    document.getElementById(id).style.display = 'none';
}
var tabTimeId;

function tabChangeEvent(p) {
    clearTimeoutTab();
    tabTimeId = setTimeout(p, 300);
}

function confirm_href(msg, url, url2)
{
    if( !msg || !url ){
        return false;
    }

    if( !confirm(msg) ){
        if( url2 ){
            document.location.href = url2;
        }

        return false;
    }

    document.location.href = url;

    return true;
}


function clearTimeoutTab() {
    clearTimeout(tabTimeId);
}
$('.personal-ui .tabs li:last-child').one('click', function () {
    $.ajax({
        url: '/main/ajax_bookmark.php',
        dataType: 'json',
        success: function (data) {
            if (data == 'E1') {
                $('#tab2-contents ul').html('<center><br><br><br><br><a href="'+G_HOME_SSL_URL +'/zboard/login.php">로그인</a>이<br>필요합니다.<br><br><br><br><br></center>');
            }
            else if (data == 'E2') {
                $('#tab2-contents ul').html('<center><br><br><br><br>북마크된<br>글이 없습니다.<br><br><br><br><br></center>');
            }
            else {
                $('#tab2-contents ul').html('');
                $.each(data.items, function (key, val) {
                    $('#tab2-contents ul').append('<li><a href="' + val.url + '">' + val.subject + '</a></li>');
                });
                var remain = 10 - data.count;
                for (var i = 0; i < remain; i++) {
                    $('#tab2-contents ul').append('<li style="list-style:none;"></li>');
                }
            }
        }
    });
});
$('.personal-ui .tab').click(function () {
    var tab4 = $(this.rel);
    $('.personal-ui .tab-contents').not(tab4).hide();
    tab4.show();
    $('.personal-ui .tabs li').removeClass('active');
    $(this).parent().addClass('active');
});
$('.input-search input[type=text]').focus(function () {
    $(this).select();
});
$('.footer .nav a:last-child').css('border-right', '0');
$('.top-nav li .sub-menu').hover(function () {
    $(this).prev().toggleClass('hover');
});
$('.input-search .caret-down').click(function () {
    dropdown($('#search-category'));
});


var document_height     = $(document).height();   //문서높이	
var banner              = $('.sidebar .floating-banner');
var banner_max_top      = 9;    
var banner_min_top      = 112;
var banner_animate_time = 300;   //ms
var banner_old_align    = null;
var banner_prevPosition = 0;
var banner_play_time    = 0;

$(document).ready(function(){

    $(window).on('scroll',function(){
        //banner_scroll_event();
    });
    
    //banner_scroll_event();
});

function banner_scroll_event () {
			
    var initPosition  = scrollTop = $(this).scrollTop();
    var window_height = $(window).height();        
    var banner_height = banner.height();

    var top_height    = ( scrollTop >= 104 ) ? banner_max_top : banner_min_top;
    var now_align     = null;

    if(      banner_prevPosition < initPosition ) now_align = 'down';
    else if( banner_prevPosition > initPosition ) now_align = 'up';
    else                                   now_align = banner_old_align;        

    if(  scrollTop < 104 )   now_align = 'top';
    if( now_align == 'down' && window_height <= banner_height ) top_height = (window_height - banner_height -30 );
    // if( now_align == 'up'   && window_height <= banner_height ) top_height = banner_min_top;

    if( banner_old_align != now_align )
    {
        var now = new Date();
        banner.css({"position":"fixed"});
  
        if( ( now.getTime() - banner_play_time) <= banner_animate_time && top_height == banner_min_top )
        {
            var tmp_banner_animate_time = banner_animate_time - (now.getTime() - banner_play_time);
            banner.stop().animate({"top":top_height}, tmp_banner_animate_time );
        }else{
            banner.stop().animate({"top":top_height}, banner_animate_time);
        }

        // console.log('now_align=>'+now_align + ' top_height=>' + top_height);
        banner_play_time = now.getTime();
        banner_old_align = now_align;
    }
    banner_prevPosition = initPosition;
 }

function dropdown(elem) {
    if (document.createEvent) {
        var e = document.createEvent("MouseEvents");
        e.initMouseEvent("mousedown", true, true, window, 0, 0, 0, 0, 0, false, false, false, false, 0, null);
        elem[0].dispatchEvent(e);
    }
    else if (element.fireEvent) {
        elem[0].fireEvent("onmousedown");
    }
}
(function ($) {
    if (navigator.userAgent.indexOf('Safari') != -1 && navigator.userAgent.indexOf('Mac') != -1 && navigator.userAgent.indexOf('Chrome') == -1) {
        $('body').addClass('safari-mac');
    }
})(jQuery);

function pvAdClick(url)
{
    try
    {
        var iframe      = document.createElement("iframe");
        var temp_iframe = document.getElementById("_pv_ad_iframe_");
        if(temp_iframe) temp_iframe.parentNode.removeChild(temp_iframe);

        iframe.setAttribute('id'   , '_pv_ad_iframe_');
        iframe.setAttribute('style', 'height:0;width:0;border:0;border:none;visibility:hidden;');
        iframe.setAttribute('src'  , url);
        document.body.appendChild(iframe);
    }
    catch ( e1 ){}
}

function resizeMediaPlayer(){ 
    try
    {	
		$("iframe").each(function(){ if( /^https?:\/\/www.youtube.com\/embed\//g.test($(this).attr("src")) ){ $(this).css("width","100%"); $(this).css("height",Math.ceil( parseInt($(this).css("width")) * 480 / 854 ) + "px");} }); 
		$("iframe").each(function(){ if( /^https?:\/\/play-tv.kakao.com\/embed\//g.test($(this).attr("src")) ){ $(this).css("width","100%"); $(this).css("height",Math.ceil( parseInt($(this).css("width")) * 480 / 854 ) + "px");} });     
		$("iframe").each(function(){ if( /^https?:\/\/tv.naver.com\/embed\//g.test($(this).attr("src")) ){ $(this).css("width","100%"); $(this).css("height",Math.ceil( parseInt($(this).css("width")) * 480 / 854 ) + "px");} });     
	}
	catch ( e1 ){}	
}

function validURL(str) {
  var pattern = new RegExp('^(https?:\\/\\/)?'+ // protocol
    '((([a-z\\d]([a-z\\d-]*[a-z\\d])*)\\.)+[a-z]{2,})'+ // domain name
    '(\\:\\d+)?(\\/[-a-z\\d%_.~+]*)*'+ // port and path
    '(\\?[;&a-z\\d%_.~+=-]*)?'+ // query string
    '(\\#[-a-z\\d_]*)?','i'); // fragment locator
  return !!pattern.test(str);
}

function validSubject(subject){
    var pattern = new RegExp('[^ -~ㄱ-ㅎㅏ-ㅣ가-힝]'); // true : invalid, false : valid
    var pattern2 = /([\{\}\[\]\/\?\.,;:\|\)\*~`!\^\-_\+<>@\#\$%&\\\=\(\'\"])\1{2,}/; // true : invalid, false : valid

    return !pattern.test(subject) && !pattern2.test(subject); // true : valid, false : invalid
}

function sanitizeSubject(subject){
    var pattern = new RegExp('[^ -~ㄱ-ㅎㅏ-ㅣ가-힝]', 'g');
    var pattern2 = /([\{\}\[\]\/\?\.,;:\|\)\*~`!\^\-_\+<>@\#\$%&\\\=\(\'\"])\1{2,}/g;

    return subject.replace(pattern, '').replace(pattern2, '').replace(/\s+/g, ' ');
}

function getByteLength(s,b,i,c){
    for(b=i=0;c=s.charCodeAt(i++);b+=c>>11?3:c>>7?2:1);
    return b;
}


/* 최근 포럼 방문 데이터 용도 ----- Start*/
$(document).ready(function(){
    try{
        var id = getCheckUrlParamId();
        var cookie_name = "forum_recent_visit_list"

        if(!id){
            return;
        }

        if(!getForumData(id)){
            return;
        }

        var list_str = __getCookie(cookie_name);
        var list = [];
        if(!list_str){
            list = [];
        } else {
            list = list_str.split("|");
        }

        var new_list = [];

        new_list[new_list.length] = id;

        $.each(list, function(k,v){
            if(new_list.length >= 15){
                return;
            }
            if(v == id){
                return;
            }

            new_list[new_list.length] = v;
        });

        __setCookie(cookie_name, new_list.join("|"), 365);

        //console.log(new_list);
    } catch(e){
        if(console && console.log){
            //console.log(e);
        }
    }
});

function __setCookie(name, value, day) {
    var date = new Date();
    date.setTime(date.getTime() + day * 60 * 60 * 24 * 1000);
    document.cookie = name + '=' + value + ';expires=' + date.toUTCString() + ';path=/';
}

function __getCookie(name) {
    var value = document.cookie.match('(^|;) ?' + name + '=([^;]*)(;|$)');
    return value? value[2] : null;
}

function getCheckUrlParamId(){
    var sname = "id";
    var params = location.search.substr(location.search.indexOf("?") + 1);
    var sval = "";
    params = params.split("&");
    for (var i = 0; i < params.length; i++) {
        temp = params[i].split("=");
        if ([temp[0]] == sname) { sval = temp[1]; }
    }

    return sval;
}

function getForumData(id){
    var data = {};
    data['phone'] = "휴대폰포럼";
    data['phone3'] = "구입개통수령";
    data['phone2'] = "휴대폰질문";
    data['iphone'] = "아이폰포럼";
    data['tablet'] = "아이패드포럼";
    data['android'] = "안드로이드";
    data['androidtab'] = "안드로이드탭";
    data['wintab'] = "윈도우태블릿";
    data['smartphone'] = "기타스마트폰";
    data['av'] = "가전포럼";
    data['mini'] = "음향기기포럼";
    data['computer'] = "컴퓨터포럼";
    data['nas'] = "NAS포럼";
    data['macintosh'] = "맥포럼";
    data['golf'] = "골프포럼";
    data['fishing'] = "낚시포럼";
    data['basketball'] = "농구포럼";
    data['climb'] = "등산포럼";
    data['motorbike'] = "오토바이포럼";
    data['lifesports'] = "생활스포츠";
    data['swim'] = "수영포럼";
    data['ski'] = "스키/보드";
    data['scuba'] = "스킨/스쿠버";
    data['sports'] = "스포츠포럼";
    data['baseball'] = "야구포럼";
    data['ppom_baseball_team'] = "사회인야구";
    data['car'] = "자동차포럼";
    data['bike'] = "자전거포럼";
    data['soccer'] = "축구포럼";
    data['camping'] = "캠핑포럼";
    data['tennis'] = "테니스포럼";
    data['health'] = "건강/헬스";
    data['money'] = "재테크포럼";
    data['insurance'] = "보험포럼";
    data['social'] = "쇼핑포럼";
    data['stock'] = "증권포럼";
    data['soho'] = "창업/자영업";
    data['bitcoin'] = "가상화폐";
    data['defi'] = "디파이/채굴";
    data['info_ico'] = "코인정보/ICO";
    data['recommend'] = "코인추천링크";
    data['lotto'] = "로또/토토";
    data['toto'] = "토토/프로토";
    data['house'] = "부동산포럼";
    data['offline'] = "지역별포럼";
    data['country'] = "국가별포럼";
    data['oversea'] = "해외포럼";
    data['china'] = "중국포럼";
    data['wedding'] = "결혼포럼";
    data['problem'] = "고민포럼";
    data['nonsmoking'] = "금연포럼";
    data['e_cig'] = "전자담배포럼";
    data['publictransport'] = "대중교통";
    data['diabetes'] = "당뇨포럼";
    data['pet'] = "동식물포럼";
    data['mart'] = "마트/편의점";
    data['restaurant'] = "맛집포럼";
    data['medical'] = "메디컬포럼";
    data['delivery_food'] = "배달음식";
    data['tour'] = "여행포럼";
    data['couple'] = "연애포럼";
    data['nutrients'] = "영양제포럼";
    data['recipe'] = "요리/레시피";
    data['baby'] = "육아포럼";
    data['alone'] = "자취포럼";
    data['alopecia'] = "탈모포럼";
    data['gameforum'] = "게임포럼";
    data['gamer'] = "게임기포럼";
    data['boardgame'] = "보드게임";
    data['mobile_game'] = "모바일게임";
    data['drama'] = "TV/드라마";
    data['streamer'] = "동영상포럼";
    data['book'] = "독서/e-book";
    data['animation'] = "만화/애니";
    data['munwha'] = "문화포럼";
    data['announcer'] = "아나운서";
    data['idol'] = "아이돌포럼";
    data['movie'] = "영화포럼";
    data['music'] = "음악/악기";
    data['diy'] = "DIY포럼";
    data['rc'] = "드론포럼";
    data['camera'] = "사진/카메라";
    data['watch'] = "시계포럼";
    data['interior'] = "인테리어";
    data['e_unicycle'] = "전동휠포럼";
    data['alcohol'] = "주류포럼";
    data['hobby'] = "취미포럼";
    data['coffee'] = "커피포럼";
    data['f7080'] = "30+포럼";
    data['morethan40'] = "40+포럼";
    data['developer'] = "개발자포럼";
    data['army'] = "군대포럼";
    data['miz'] = "여성포럼";
    data['volunteer'] = "봉사포럼";
    data['adult'] = "성인포럼";
    data['religion'] = "종교포럼";
    data['worker'] = "직장인포럼";
    data['honjok'] = "혼족포럼";
    data['fear'] = "공포포럼";
    data['science'] = "과학포럼";
    data['mungu'] = "문구포럼";
    data['stylesheet'] = "문서/서식";
    data['beauty'] = "뷰티/케어";
    data['history'] = "역사포럼";
    data['fortune'] = "운세포럼";
    data['style'] = "스타일포럼";
    data['whatever'] = "전/현/무포럼";
    data['alba'] = "알바포럼";
    data['employment'] = "취업포럼";
    data['study'] = "학습포럼";

    return data[id];
}
/* 최근 포럼 방문 데이터 용도 ----- End*/

function get_copy_clipboard(id){
	var copy_text = $("#"+id).val();
	var input = document.createElement("INPUT");
	input.style.width="1px";
	input.style.height="1px";
	input.style.position="absolute";
	input.style.top="-100px";
	$(input).val(copy_text);
	$(document.body).append(input);
	$(input).select();

	try {
		// The important part (copy selected text)
		var successful = document.execCommand('copy');
		// if(successful) answer.innerHTML = 'Copied!';
		// else answer.innerHTML = 'Unable to copy!';
		if(successful){
			alert('URL이 복사되었습니다.');
		} else {
			alert('복사에 실패하였습니다.');
		}
	} catch (err) {
		alert('이 브라우저는 지원하지 않습니다.')
	}

	$(input).remove();
}
function get_copy_cmt_url_clipboard(id,cno){
	var copy_text = $("#"+id).val();
	var input = document.createElement("INPUT");
	input.style.width="1px";
	input.style.height="1px";
	input.style.position="absolute";
	input.style.top="-100px";
	copy_text = copy_text + '&cno='+cno+'&cpcmt=y';
	$(input).val(copy_text);
	$(document.body).append(input);
	$(input).select();
	
	try {
		// The important part (copy selected text)
		var successful = document.execCommand('copy');
		// if(successful) answer.innerHTML = 'Copied!';
		// else answer.innerHTML = 'Unable to copy!';
		if(successful){
			alert('댓글 URL이 복사되었습니다.');
		} else {
			alert('복사에 실패하였습니다.');
		}
	} catch (err) {
		alert('이 브라우저는 지원하지 않습니다.')
	}
	
	$(input).remove();
}

function localStorageAvailable(){
    try {
        var storage = window.localStorage;
        var x = '__ppom_storage_test__';
        storage.setItem(x, x);
        storage.removeItem(x);
        return true;
    }
    catch(e) {
        // 22 || 1014 || QuotaExceededError || QuotaExceededError 는 저장용량 다 찬 상태
        // Safari 에서는 사생활 보호모드시 위 에러 발생
        console.log(e.code);
        return false;
    }
}

/*
long 과 widnow 기준으로 short을 sticky 하게 만드는 class

- container 는 반드시 position:relative
- short이 window보다 크면 bottom fixed, 작으면 top fixed로 동작
*/
function StickyScroll($container, $long, $short){
    var container_left;

    var long_bottom;

    var short_width;
    var short_height;
    var short_top;
    var short_left;
    var short_bottom;

    return {
        init:function(){
            this.freeShort();

            container_left = $container.offset().left;

            short_width = $short.outerWidth();
            short_top = $short.offset().top;
            short_left = $short.offset().left;
        },

        resizeAction:function(){
            this.init();
            this.scrollAction();
        },

        scrollAction:function(){
            var window_height = $(window).height();
            var window_top = $(window).scrollTop();
            var window_bottom = window_top + window_height;

            long_bottom = $long.offset().top + $long.outerHeight();

            short_height = $short.outerHeight();
            short_bottom = short_top + short_height;

            if( $long.outerHeight() <= window_height ){
                return;
            }

            if( short_height < window_height && window_top + short_height > long_bottom
                || short_height >= window_height && window_bottom > long_bottom
            ){
                $short.css({
                    "position":"absolute",
                    "top":"",
                    "bottom":"0",
                    "left":short_left - container_left,
                    "width":short_width,
                    "background":"#fff",
                });
            }else if( short_height < window_height && short_top < window_top ){
                $short.css({
                    "position":"fixed",
                    "top":"0",
                    "bottom":"",
                    "left":short_left,
                    "width":short_width,
                    "background":"#fff",
                });
            }else if( short_height >= window_height && short_bottom < window_bottom ){
                $short.css({
                    "position":"fixed",
                    "top":"",
                    "bottom":"0",
                    "left":short_left,
                    "width":short_width,
                    "background":"#fff",
                });
            }else{
                this.freeShort();
            }
        },

        freeShort:function(){
            $short.css({
                "position":"",
                "top":"",
                "bottom":"",
                "left":"",
                "width":"",
                "background":"",
            });
        },
    };
}


/**
 * 절약모드 
 */
function auth_save_mode() {
	var s_url = '/save_mode.php';
	
	document.location.href = s_url;
}