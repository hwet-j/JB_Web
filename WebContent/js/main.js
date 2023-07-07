var currentPage;
var HashLocationName = document.location.hash;

function main_link(){
	document.location.hash = "#" + currentPage;
}


$('body').addClass('main');
$('.container').addClass('main');

$('#hot-post-list').bxSlider({
    auto:false,
    pager:true,
    speed:0,
    pagerType:'short',
    pagerSelector:'.post-pager',
    prevSelector:'.post-prev',
    nextSelector:'.post-next',
    prevText:'',
    nextText:'',
    infiniteLoop:false,
    hideControlOnEnd:true,    
    slideWidth :450,
    useCSS:false,
    easing:'easeInBack',
    responsive:false,
    touchEnabled: false,
    onSliderLoad: function() {
        // $('.post-post_cov').css('visibility', 'visible');
    }
});


//-------------------------------------------------------------------
// HOT
//-------------------------------------------------------------------
$('.post-preview .tab').click(function(event) {
    var tab3 = $(this.rel);    
    if ($(this).parent('li').hasClass('active')) {
    } else {
        $('.post-preview .tab-contents').not(tab3).hide();
        tab3.show();
        $('.post-preview .tabs li').removeClass('active');
        $(this).parent().addClass('active');
        event.preventDefault();        
    }
});
//-------------------------------------------------------------------


//-------------------------------------------------------------------
// News
//-------------------------------------------------------------------
$('.categori_news .cate_nav li').click(function(event) {
    var tab_id = $(this).data('id');

    $('.categori_news .cate_nav li').removeClass("on");
    $('.cate_cont').removeClass("on");
    $(this).addClass('on');
    $("#main_news_"+$(this).data('id')).addClass('on');
    $("#main_news_title").text($(this).text());

    if( tab_id == 'all' )
        $("#main_news_title_a").attr("href", "/recent_main_article.php?type=news");
    else
        $("#main_news_title_a").attr("href", "/zboard/zboard.php?id="+tab_id);
});
$('.categori_news .cate_nav li').eq(0).click();
//-------------------------------------------------------------------



//-------------------------------------------------------------------
// 뽐게
//-------------------------------------------------------------------
$('#ppom_new_summary').children('a').click(function(event) {
	
	var id_list= ['ppomppu', 'ppomppu2', 'ppomppu4', 'pmarket', 'ppomppu7','pmarket2', 'pmarket3', 'card_market', 'pmarket7', 'pmarket8'];
	var tab_id = $(this).data('id');
	
	if ( $(this).hasClass('on') )
	{    	
    	document.location.href = $(this).data('href');
	}
	else
	{
	    $('#ppom_new_summary').children('a').removeClass("on");
	    $(this).addClass('on');    
	
	    $.each(id_list, function(k,v){
	        $("#new_summary_"+v).hide();
	    });
	    $("#new_summary_"+tab_id).show();
	
	    $("#main_summary_title").text($(this).text());
	    $("#main_summary_title_a").attr("href", "/zboard/zboard.php?id="+tab_id);
	}
});


var random = 0;
random = Math.floor(Math.random() * $('#ppom_new_summary').children('a').length); //이벤트쿠폰이 있을때만 랜덤. 요청사항변경 막음.
$('#ppom_new_summary').children('a').eq(random).click();

// 뽐게 NEW
var ppomNewSummaryBxSlider = $('#ppom_new_summary_area').bxSlider({
    slideSelector:'#ppom_new_summary_area ul',
    speed:500,
    infiniteLoop:true,
    touchEnabled:false,
    pager:false,
    controls:false,
    onSliderLoad:function(curIdx){
        $('#ppom_new_summary_page_area').html('<b>'+(curIdx+1)+'</b> / '+this.getSlideCount());
        $('#ppom_new_summary_area').css('visibility', 'visible');
        $('.board-ppomppu .bx-viewport').css('height', '');
    },
    onSlideAfter:function($el, oldIdx, newIdx){
        $('#ppom_new_summary_page_area').html('<b>'+(newIdx+1)+'</b> / '+this.getSlideCount());
    },
});
$('#ppom_new_summary_prev_btn').on('click', function(){
    ppomNewSummaryBxSlider.goToPrevSlide();
});
$('#ppom_new_summary_next_btn').on('click', function(){
    ppomNewSummaryBxSlider.goToNextSlide();
});
//-------------------------------------------------------------------

//-------------------------------------------------------------------
// 베스트 HOT 게시글 
//-------------------------------------------------------------------
$('#post_wrap_best_time').children('span').mouseover(function(event) {
    var tab_id = $(this).data('id');
    if( tab_id == '' ) return;

    $('#post_wrap_best_time').children('span').removeClass("on");
    $(this).addClass('on');
    
    $("#ul_best_time_week").hide();
    $("#ul_best_time_month").hide();

    $("#ul_"+tab_id).show();

    currentPage = tab_id;
});
var random = 0;

if( HashLocationName == '#best_time_month' || HashLocationName == '#best_time_week' )
{
    random = (HashLocationName == '#best_time_week') ? 1 : 2;
}else{
    random = Math.floor(Math.random() * 2)+1;
}
$('#post_wrap_best_time').children('span').eq(random).mouseover();
//-------------------------------------------------------------------

