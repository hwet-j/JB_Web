jQuery.fn.popup = function()
{
	var els = this;

	function sUp(el){
		//if ($.browser.msie) var height=document.body.clientHeight+$("html").attr("scrollTop");
		//if ($.browser.msie) var height=document.body.scrollTop + document.body.clientHeight - 20;
		if ($.browser.msie) var height=document.documentElement.scrollTop + document.documentElement.clientHeight - 20;
		if (!height) var height=window.innerHeight+$("html").attr("scrollTop") - 50;

		//$("body").css("overflow","hidden");
		//el.css("top",height+"px").show();//
		el.css('bottom', '-50px').show().animate({  
			bottom: '+=78px'
		}, 900, function() {  
		});
	}

	if ($.browser.msie){
		els.css("position","fixed");
		//els.css("position","absolute");
		//els.css("right","0px");
	}
	
	$("a.close").click(function(){
		$(this).parent("div."+els.attr("className")).hide()
	});

	sUp(els);

	return this;
};

$("div.popup_memo").click( function(){ 
	window.open('/zboard/member_memo.php','member_memo','width=485px,height=625px,status=no,toolbar=no,resizable=yes,scrollbars=yes');popup_memo_close();
});

function popup_memo_close()
{
	$("div.popup_memo").hide();
}
 
