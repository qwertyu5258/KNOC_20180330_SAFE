
//var $= jQuery.noConflict();



//메인페이지 비쥬얼 
$(document).ready(function() {
	/*
	$('.img-reel').bxSlider({
		hideControlOnEnd: true,
		mode: 'fade',
		auto: false
	});
	*/



			
// GNB
		$('#disLayer li:first').css({'border-left':'0'});
		$("#disLayer").mouseover(function(e) { $(this).addClass("over"); });
		$("#disLayer").mouseout(function(e) { $(this).removeClass("over"); });
		/* submenu rollover */
		$(".nav").hover(function() {
			$(this).doTimeout('hover',300, function(){
				$("#disLayer").slideDown({duration:300 , easing: 'easeInQuad'});
			});
		},function() {
			$(this).doTimeout('hover',300, function(){
				smMouseOut("#disLayer");
			});
		});
		$('.sm-close').click(function(){ $("#disLayer").slideUp({duration:300 , easing: 'easeInQuad'});});

		$('.qa').hover(
			function(){
				var $this = $(this);
				expand1($this);
			},
			function(){
				var $this = $(this);
				collapse($this);
			}
		);
		$('.mypage').hover(
			function(){
				var $this = $(this);
				expand($this);
			},
			function(){
				var $this = $(this);
				collapse($this);
			}
		);
		function expand($elem){
			$elem.stop().animate({width:'287px'}, 300)
			.find('.item_content').fadeIn(400,function(){
				$(this).find('ul').stop(true,true); 
			});
		}
		function expand1($elem){
			$elem.stop().animate({width:'237px'}, 300)
			.find('.item_content').fadeIn(400,function(){
				$(this).find('ul').stop(true,true);
			});
		}
		function collapse($elem){
			$elem.stop().animate({width:'57px'}, 300)
			.find('.item_content').stop(true,true).find('ul').stop(true,true);
		}
		
		// roll
		var rollover = {
			newimage: function(src) {
				return src.substring(0, src.search(/(\.[a-z]+)$/) ) + '_on' + src.match(/(\.[a-z]+)$/)[0];
			},
			oldimage: function(src) {
				return src.replace(/_on\./, '.');
			},
			init: function() {
				$("#gnb li.act>a>img, #disLayer p.act>a>img").each( function() {
					$(this).removeClass('roll').attr( 'src', rollover.newimage($(this).attr('src')) );
				} );
				$(".roll").hover(
					function () { $(this).attr( 'src', rollover.newimage($(this).attr('src')) ); },
					function () { $(this).attr( 'src', rollover.oldimage($(this).attr('src')) ); }
				);
			}
		};
		rollover.init();

		
		$('.smenu > li, .nav > li').mouseenter(
			function(){
				var dir = "/WebSrc/img/menu/vis"
				var jpg =".jpg"
				$('.visual img').attr('src', dir + $(this).attr('rel')+jpg);
			}
		);

	});

	function smMouseOut(id){
		if ($(id).hasClass("over")){
			$(id).mouseleave(function(){
				$(id).slideUp({duration:300 , easing: 'easeInQuad'});
			});
		} else{
			$(id).slideUp({duration:300 , easing: 'easeInQuad'});
		}
	}	


$(document).ready(function(){
	
	/* 메인(공지사항,q&A) 탭 */
	$(".board_Box").find("div").hide().eq(0).show();
	$(".board_Box").find(">h2 > a").eq(0).addClass("active").siblings().removeClass("active");

	$(".board_Box > h2 > a").click(function(){
		if($(this).hasClass("active")){
			return;
		}
		$(this).parent().parent().find("a").removeClass("active");
		$(this).parent().parent().find("div").hide();
		$(this).addClass("active");
		$(this).parent().next().show();
		return false;
	});
});


// IE6 PNG IMAGE SET

function setPng24(obj) {

    obj.width=obj.height=1;

    obj.className=obj.className.replace(/\bpng24\b/i,'');

    obj.style.filter ="progid:DXImageTransform.Microsoft.AlphaImageLoader(src='"+ obj.src +"',sizingMethod='image');"

    obj.src='';

    return '';

}



//<!-- 플래쉬 -->

function flash(c,d,e,f) {

	var flash_tag = "";

	flash_tag = '<embed src="'+e+'" quality="high" pluginspage="http://www.macromedia.com/go/getflashplayer" ';

	flash_tag +='type="application/x-shockwave-flash" wmode="transparent" title="'+f+'" width="'+c+'" height="'+d+'"></embed>'



	document.write(flash_tag);



}




//flash
function swfView(width, height, url,title){
	document.write("<object classid='clsid:d27cdb6e-ae6d-11cf-96b8-444553540000' title='"+title+"'");
	document.write("codebase='http://fpdownload.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=8,0,0,0' ");
	document.write("width='"+width+"' height='"+height+"' align='middle'>");
	document.write("<param name='allowScriptAccess' value='always' /> ");
	document.write("<param name='movie'				value='"+url+"' /> ");
	document.write("<param name='quality'			value='high' /> ");
	document.write("<param name='wmode'				value='transparent'> ");
	document.write("<embed src='"+url+"' wmode='transparent' quality='high' width='"+width+"' height='"+height+"' align='middle' ");
	document.write("allowScriptAccess='sameDomain' type='application/x-shockwave-flash' ");
	document.write("pluginspage='http://www.macromedia.com/go/getflashplayer' />");
	document.write("</object>");

}


/**= img over set2:start =**/

function setOverImg(id,idx) {

	if (!document.getElementById(id)) {

		return false;

	}



	var obj = document.getElementById(id);

	var objChild = obj.getElementsByTagName("div");

	var objChildCount = objChild.length;



	for ( i = 0; i < objChildCount; i++ ) {

		var aTag = objChild[i].getElementsByTagName("a");



				aTag[idx].onmouseover = function () {

					var imgTag = this.getElementsByTagName("img");

					var oldImg = imgTag[0].getAttribute("src");

					imgTag[0].src = oldImg.replace("_off.gif", "_on.gif");



					return false;

				}



				aTag[idx].onmouseout = function () {

					var imgTag = this.getElementsByTagName("img");

					var oldImg = imgTag[0].getAttribute("src");

					imgTag[0].src = oldImg.replace("_on.gif", "_off.gif");



					return false;

				}

	}

}



//-- 탭 over, out :start

function tabOver(tname,_objnum){

	document.getElementById(tname+"s"+_objnum).src="/images/main/"+tname+"0"+_objnum+"_on.gif";

}

function tabOut(tname, _objnum){

	document.getElementById(tname+"s"+_objnum).src="/images/main/"+tname+"0"+_objnum+".gif";

}



function initNavigation(seq) {

	 nav = document.getElementById("topul");

	 nav.menu = new Array(); 

	 nav.current = null;

	 nav.menuseq = 0;

	 navLen = nav.childNodes.length;	

	

	 allA = nav.getElementsByTagName("a") // 1Depth 메뉴 담기

	 //alert(allI);

	 for(k = 0; k < allA.length; k++) {  // allA(1Depth갯수)

 

				allA.item(k).onmouseover = allA.item(k).onfocus = function () { //1Depth에 포커스가 왔을때 해당 1Depth에 onmouseover 준다

					nav.isOver = true;  //isOver = 마우스의 위치를 감지하는 필드 > 마우스 포인터가 어느 위치 위에 놓였을 때 true 값 발생							

				}

				allA.item(k).onmouseout = allA.item(k).onblur = function () { //1Depth에서 마우스가 벗어났을 때 1Depth에 onmouseout 준다

					nav.isOver = false; //마우스 포인터가 해당 위치 위가 아니기 때문에 false	

					setTimeout(function () {



						if (nav.isOver == false) {

							if (nav.menu[seq])

								nav.menu[seq].onmouseover();

							else if(nav.current) {						

								if (nav.current.submenu)

									nav.current.submenu.style.display = "none";

								nav.current = null;

							}

						}

					}, 500);

				} // allA.item(k)

					

	} //for



	for (i = 0; i < navLen; i++) { 

		navItem = nav.childNodes.item(i);

		

		if (navItem.tagName != "LI") continue;

		navAnchor = navItem.getElementsByTagName("a").item(0);  

		navAnchor.submenu = navItem.getElementsByTagName("ul").item(0);  				

   

		navAnchor.onmouseover = navAnchor.onfocus = function () { 

			if (nav.current) {

				if (nav.current.submenu)	nav.current.submenu.style.display = "none";

				nav.current = null;

			}

			if (nav.current != this) {

				if (this.submenu)	this.submenu.style.display = "block";

				nav.current = this;

			}

			nav.isOver = true;

		}

		nav.menuseq++;

		nav.menu[nav.menuseq] = navAnchor;

	}

	if (nav.menu[seq])	

		nav.menu[seq].onmouseover(); 

		

	if (seq != '0' && seq != '8' && seq != '9' && seq != '10'){

		document.getElementById("tmon"+seq).src="/images/common/t_menu"+seq+"_on.gif"; 

		document.getElementById("tm"+seq).className = "tmon";

	}

} 





var Mona="";

function msinit(Mnum){

	document.getElementById("tmon"+Mnum).src="/images/common/t_menu"+Mnum+"_on.gif";

	Mona=Mnum;

}

function msover(num){

if(num!=Mona){

	document.getElementById("tmon"+num).src="/images/common/t_menu"+num+"_on.gif";

	}

}

function msout(num){

if(num!=Mona){

	document.getElementById("tmon"+num).src="/images/common/t_menu"+num+".gif";

	}

}





function popData(src,target,alt,imgpath){

 	this.src = src;

  	this.target = target;

  	this.alt = alt;

  	this.imgpath = imgpath;

}



var popAniCnt = 0 ;

var iv = null;

var popAniInterval = 10000;  // ·

var imgData = new Array();

function showPopImages(num) {


  var popLink = document.getElementById("popLink");

  var popImages = document.getElementById("popImg");

  popLink.href=imgData[num].src;

  popLink.target=imgData[num].target;

  popImages.src= "/upload/POPUP/"+imgData[num].imgpath;

  popImages.alt=imgData[num].alt

  for(i=0;i<imgData.length;i++) {

  var btn = document.getElementById("popNum" + (i+1));

    if(i == num) {

//      btn.src="images/main/btn_zone"+(i+1)+"_on.gif";
      btn.src="images/new_main/nm_no0"+(i+1)+"on.gif";

    }

    else {

//      btn.src="images/main/btn_zone"+(i+1)+"_off.gif";

		btn.src="images/new_main/nm_no0"+(i+1)+".gif";
    }


  }

}



function animatePopup(){

  popAniCnt = 0;

  if(iv) window.clearInterval(iv);

  iv = window.setInterval("showAnimate()",popAniInterval);

}

function showAnimate() {

  showPopImages((popAniCnt++)%imgData.length);

}

function stopAnimatePopup(){

  if(iv) window.clearInterval(iv);

}


//--오른쪽마우스 막기	
//document.oncontextmenu = function(e){
//	if(e){
//		e.preventDefault();
//	}else{
//		event.keyCode = 0;
//		event.returnValue = false;
//	}
//}


//--상태표시줄 URL감추기
//function hidestatus(){ 
// window.status='' 
//  return true 
//  } 

//  if (document.layers) 
//  document.captureEvents(Event.MOUSEOVER | Event.MOUSEOUT) 

//  document.onmouseover=hidestatus 
// document.onmouseout=hidestatus 


//--셀렉트 이동
//--관련회사사이트
function goselect_11(f){
	if(f.gourl_select_1[f.gourl_select_1.selectedIndex].value != ""){
		var gourl_select_1 = f.gourl_select_1.options[f.gourl_select_1.selectedIndex].value;
		if(gourl_select_1.substring(0,7).toLowerCase() == "http://") {
			window.open(gourl_select_1);
		}else { 
			window.open("http://"+gourl_select_1); 
		} 
	} 
	return false; 
} 

//--국내석유관련기관
function goselect_22(f){
	if(f.gourl_select_2[f.gourl_select_2.selectedIndex].value != ""){
		var gourl_select_2 = f.gourl_select_2.options[f.gourl_select_2.selectedIndex].value;
		if(gourl_select_2.substring(0,7).toLowerCase() == "http://") {
			window.open(gourl_select);
		}else { 
			window.open("http://"+gourl_select_2); 
		} 
	} 
	return false; 
} 

//--국내석유관련협회
function goselect_33(f){
	if(f.gourl_select_3[f.gourl_select_3.selectedIndex].value != ""){
		var gourl_select_3 = f.gourl_select_3.options[f.gourl_select_3.selectedIndex].value;
		if(gourl_select_3.substring(0,7).toLowerCase() == "http://") {
			window.open(gourl_select_3);
		}else { 
			window.open("http://"+gourl_select_3); 
		} 
	} 
	return false; 
} 

//--국외석유관련협회
function goselect_44(f){
	if(f.gourl_select_4[f.gourl_select_4.selectedIndex].value != ""){
		var gourl_select_4 = f.gourl_select_4.options[f.gourl_select_4.selectedIndex].value;
		if(gourl_select_4.substring(0,7).toLowerCase() == "http://") {
			window.open(gourl_select_4);
		}else { 
			window.open("http://"+gourl_select_4); 
		} 
	} 
	return false; 
} 


//--인덱스 광구 (셀프페이지로)
function goselect2(f){
	if(f.gourl_select[f.gourl_select.selectedIndex].value != ""){
		var gourl_select = f.gourl_select.options[f.gourl_select.selectedIndex].value;
		if(gourl_select.substring(0,7).toLowerCase() == "http://") {
			location.href = gourl_select;
		}else { 
			location.href = "http://"+gourl_select; 
		} 
	} 
	return false; 
} 





/* 탭 변환 */

function tabchange(img,divid){

	var tabarea=img.parentNode.parentNode;

	var imgs=tabarea.getElementsByTagName('img');

	var obj;



	for(var i=0; i<imgs.length; i++){

		obj=eval(document.getElementById(divid+(i+1)));



		if(imgs[i].src.indexOf('_on.gif')!=-1) imgs[i].src=imgs[i].src.replace('_on.gif','.gif');

		if(obj) obj.style.display='none';

	}



	for(var i=0; i<imgs.length; i++){

		obj=eval(document.getElementById(divid+(i+1)));

		if(img==imgs[i]){

			if(img.src.indexOf('_on.gif')==-1) img.src=img.src.replace('.gif','_on.gif');

			if(obj) obj.style.display='';



		}

	}

}



var oldObj = "";

var oldImgObj = "";

function newsChange(name, objid){

	var obj = document.getElementById(name);

	var imgObj = document.getElementById(objid);

	if(oldObj == ""){

		oldObj = document.getElementById('noticendata1');

		oldImgObj = document.getElementById('tab_01');

	}

	if(obj != oldObj){

		oldImgObj.src = oldImgObj.src.replace('_on.gif', '.gif');

		imgObj.src = imgObj.src.replace('.gif', '_on.gif');

		oldObj.style.display = "none";

		obj.style.display = "block";

		oldObj = obj;

		oldImgObj = imgObj;

	}

}



var oldObj2 = "";

var oldImgObj2 = "";

function korChange(name, objid){

	var obj = document.getElementById(name);

	var imgObj = document.getElementById(objid);

	

	if(oldObj2 == ""){

		oldObj2 = document.getElementById('kortab1');

		oldImgObj2 = document.getElementById('kor_01');

	}

	if(obj != oldObj2){

		oldImgObj2.src = oldImgObj2.src.replace('_on.gif', '.gif');

		imgObj.src = imgObj.src.replace('.gif', '_on.gif');

		oldObj2.style.display = "none";

		obj.style.display = "block";

		oldObj2 = obj;

		oldImgObj2 = imgObj;

	}

}





var oldObj3 = "";

var oldImgObj3 = "";

function worldChange(name, objid){

	var obj = document.getElementById(name);

	var imgObj = document.getElementById(objid);

	

	if(oldObj3 == ""){

		oldObj3 = document.getElementById('worldtab1');

		oldImgObj3 = document.getElementById('world_01');

	}

	if(obj != oldObj3){

		oldImgObj3.src = oldImgObj3.src.replace('_on.gif', '.gif');

		imgObj.src = imgObj.src.replace('.gif', '_on.gif');

		oldObj3.style.display = "none";

		obj.style.display = "block";

		oldObj3 = obj;

		oldImgObj3 = imgObj;

	}

}

//Element ID 불러쓰기
function dEI(elementID){
	return document.getElementById(elementID);
}


// 메인공지사항
		      function tabOn(tabid,a) {
					for (i=1;i<=10;i++) {
						if(i<10){inn="0"+i;} else {inn=""+i;}
						tabMenu = document.getElementById("tab"+tabid+"m"+i);
						tabContent = document.getElementById("tab"+tabid+"c"+i);
						if (tabMenu) { //객체가존재하면
							if (tabMenu.tagName=="IMG") { tabMenu.src = tabMenu.src.replace("on0" + i + ".gif", "off0" + i + ".gif"); } //이미지일때
							if (tabMenu.tagName=="A") { tabMenu.className=""; } //앵커일때
						}
						if (tabContent) { tabContent.style.display="none"; }
					}
					if(a<10){ann="0"+a;} else {ann=""+a;}
					tabMenu = document.getElementById("tab"+tabid+"m"+a);
					tabContent = document.getElementById("tab"+tabid+"c"+a);
					//alert(tabMenu.tagName);
					if (tabMenu) { //객체가존재하면
						if (tabMenu.tagName=="IMG") { tabMenu.src = tabMenu.src.replace("off0" + a + ".gif", "on0" + a + ".gif"); } //이미지일때
						if (tabMenu.tagName=="A") { tabMenu.className="on"; } //앵커일때
					}
					if (tabContent) { tabContent.style.display="block"; }
					tabMore = document.getElementById("tab"+tabid+"more");
					}

		
	


/* IE6 Flicker Bug를 execCommand문으로 해결하는 방법 */
try {document.execCommand('BackgroundImageCache', false, true);} catch(e) {}


//<!-- DO NOT MODIFY -->
//<!-- cwlogger logging script -->

  var _cw_logger_id = 1;
  var _cw_logger_domain = "www.dsc.ac.kr";
  var _cw_logger_url = "http://211.39.127.21/cms/cwlogger/logger.jsp";

  function _cw_setcookie(name, value, expiredays) {
    var todayDate = new Date();
    todayDate.setDate(todayDate.getDate() + expiredays);
    document.cookie = name + "=" + escape(value) + "; path=/; expires=" + todayDate.toGMTString() + ";"
    return;
  }
  function _cw_getcookie(name) {
    var nameOfCookie = name + "=";
    var x = 0;
    while (x <= document.cookie.length) {
      var y = (x + nameOfCookie.length);
      if (document.cookie.substring(x, y) == nameOfCookie) {
        if ((endOfCookie=document.cookie.indexOf(";", y)) == -1) endOfCookie = document.cookie.length;
        return unescape(document.cookie.substring(y, endOfCookie ));
      }
      x = document.cookie.indexOf(" ", x) + 1;
      if (x == 0) break;
    }
    return null;
  }
  function _cw_delcookie(name) {
    var now = new Date();
    document.cookie = name + "=;exprires=" + now + ";path=/";
    return;
  }
  function _cw_trim(str) {                                    
    index = 0;                                                
    while (str.charAt(index) == " ") {                        
      index = index + 1;                                      
    }
    str = str.substring(index, (str.length));                 
    index = str.length -1;                                    
    while (str.charAt(index) == " ") {                        
      index = index -1;                                       
    }                                                         
    str = str.substring(0, index +1 );                        
    return str;                                               
  }
  function replaceAll(str, src, tgt) {
    try {
      while (str.indexOf("^^") != -1) {
        str = str.replace(src, tgt);
      }
      return str;
    } catch(e) {
      return str;
    }
  }

  var _cw_uri = location.href;
  var _cw_split_domain = _cw_logger_domain.split(",");
  var _cw_href_flag = false;
  for (i = 0; i < _cw_split_domain.length; i++) {
    if(_cw_uri.indexOf("http://" + _cw_trim(_cw_split_domain[i])) != -1) {
      _cw_href_flag = true;
      break;
    }
  }

  if (_cw_href_flag) {

    _cw_uri = _cw_uri.substring(7, _cw_uri.length);
    if (_cw_uri.indexOf("?") != -1) {
      while((ch = _cw_uri.indexOf("&")) > 0) {
        _cw_uri = _cw_uri.substr(0, ch) + "%26" + _cw_uri.substr(ch + 1, _cw_uri.length);
      }
    }
    _cw_uri = replaceAll(_cw_uri.substring(_cw_uri.indexOf("/"), _cw_uri.length), "^^", "--");
    
    var _cw_title;
    try {
      _cw_title = document.cwlogger.title.value;
      if (_cw_title == null) {
        _cw_title = document.title;
      }
    } catch(e) {
      _cw_title = document.title;
    }
    if (_cw_title == "") {
      _cw_title = "No Title";
    }
    _cw_title = replaceAll(_cw_title, "^^", "--");
    //_cw_title = encodeURI(_cw_title);
    
    var _cw_directory;
    try {
      _cw_directory = document.cwlogger.directory.value;
      if (_cw_directory == null) {
        _cw_directory = "";
      }
    } catch(e) {
      _cw_directory = "";
    }
    _cw_directory = replaceAll(_cw_directory, "^^", "--");
    //_cw_directory = encodeURI(_cw_directory);

    var _cw_referrer;
    try {
      _cw_referrer = document.cwlogger.referrer.value;
    } catch (e) {
      _cw_referrer = document.referrer;
    }
    if (_cw_referrer == "") {
      _cw_referrer = "-";
    } else {
      while((ch = _cw_referrer.indexOf("&")) > 0) {
        _cw_referrer = _cw_referrer.substr(0, ch) + "%26" + _cw_referrer.substr(ch + 1, _cw_referrer.length);
      }
    }
    _cw_referrer = replaceAll(_cw_referrer, "^^", "--");
    //_cw_referrer = encodeURI(_cw_referrer);

    var _cw_cookie = "Y";
    _cw_setcookie("cwlogger_temp_cookie", "1", 1);
    if (_cw_getcookie("cwlogger_temp_cookie") == null) {
      _cw_cookie = "N";
    }
    _cw_delcookie("cwlogger_temp_cookie");
    var _cw_java = navigator.javaEnabled()?"Y":"N";
    var _cw_screen_size = "unknown";
    var _cw_color_depth = "unknown";
    if (window.screen.width) {
      _cw_screen_size = window.screen.width + 'x' + window.screen.height;
    }
    if (window.screen.colorDepth) {
      _cw_color_depth = window.screen.colorDepth;
    }
    var _cw_language = "unknown";
    if (navigator.language) {
      _cw_language = navigator.language.substring(0,2);
    } else if (navigator.userLanguage) {
      _cw_language = navigator.userLanguage.substring(0,2);
    }
    var _cw_cpu = "unknown";
    if (navigator.cpuClass) {
      _cw_cpu = navigator.cpuClass;
    }
    var _cw_os = "unknown";
    var _cw_browser = "unknown";
    var _cw_pf = navigator.platform;
    var _cw_av = navigator.appVersion;
    var _cw_an = navigator.appName;
    var _cw_ua = navigator.userAgent;
    if (_cw_pf) {
      if(_cw_pf.indexOf('Win32') != -1){
        if(_cw_av.indexOf('95') != -1) _cw_os = 'Windows 95';
        else if(_cw_av.indexOf('98') != -1) _cw_os = 'Windows 98';
        else if(_cw_av.indexOf('Me') != -1) _cw_os = 'Windows Me';
        else if(_cw_av.indexOf('NT 5.0') != -1) _cw_os = 'Windows 2000';
        else if(_cw_av.indexOf('NT 5.1') != -1) _cw_os = 'Windows XP';
        else if(_cw_av.indexOf('NT 5.2') != -1) _cw_os = 'Windows Server 2003';
        else if(_cw_av.indexOf('NT') != -1) _cw_os = 'Windows NT';
        else _cw_os = 'Windows';
      } else if(_cw_pf.indexOf('Linux') != -1) {
        _cw_os = 'Linux';
      } else if(_cw_pf.indexOf('Sun') != -1) {
        _cw_os = 'SunOS';
      } else if(_cw_pf.indexOf('Mac') != -1) {
        _cw_os = 'Mac';
      } else if(_cw_pf.indexOf('AIX') != -1) {
        _cw_os = 'AIX';
      } else if(_cw_pf.indexOf('Free') != -1) {
        _cw_os = 'FreeBSD';
      }
    }
    if (_cw_ua) {
      if (_cw_ua.indexOf('Opera') != -1) {
        _cw_browser = "Opera";
      } else if (_cw_ua.indexOf('MSIE') != -1) {
        temp = _cw_ua.split(';')[1].split(' ');
        _cw_browser = "Internet Explorer " + parseInt(temp[2]) + ".X";
      } else if (_cw_ua.indexOf('Firefox') != -1) {
        _cw_browser = "Firefox";
      } else if (_cw_ua.indexOf('Mozilla') != -1) {
        _cw_browser = "Mozilla";
      } else if (_cw_an.indexOf('Netscape') != -1) {
        _cw_browser = "Netscape";
      } else if (_cw_an) {
        _cw_browser = _cw_an;
      }
    }

    var _cw_params = "?id=" + _cw_logger_id + "&title=" + _cw_title + "&directory=" + _cw_directory + "&uri=" + _cw_uri + "&referrer=" + _cw_referrer 
                    + "&cookie=" + _cw_cookie + "&java=" + _cw_java + "&screen=" + _cw_screen_size + "&color=" + _cw_color_depth 
                    + "&lang=" + _cw_language + "&cpu=" + _cw_cpu + "&os=" + _cw_os + "&browser=" + _cw_browser; 

    var _cw_browser_ie = (document.all)?true:false;
    var _cw_js12 = (window.screen)?true:false;
    if (_cw_js12) {
      var _cw_logger_img = new Image();
      if(_cw_browser_ie) {
        _cw_logger_img.src = _cw_logger_url + _cw_params;
      } else {
        setTimeout("_cw_logger_img.src = _cw_logger_url + _cw_params;", 1);
      }
    } else {
      if(_cw_browser_ie) document.write('<div style=\"display: none\">');
      document.write('<img src=\"' + _cw_logger_url + _cw_params + '\" height=\"0\" width=\"0\">');
      if(_cw_browser_ie) document.write('</div>');
    }

  }

/*========================================
js_rolling.js

#간단설명
<div><img /><img /></div>
라고 했을 경우 div안의 img를 위,오른쪽,아래,왼쪽으로 롤링 시킨다.




# 사용법
<script type="text/javascript" charset='utf-8' src="js_rolling.js"></script> 
//JS스크립트 로드

<div id='div1'><img /><img /><img /><img /><img /></div>
//처럼 구성후 div의 너비와 높이는 꼭 정해주기 바랍니다.
<div>
	<div>1<img />etc</div>
	<div>2</div>
	<div>3</div>
	<div>4</div>

</div>
이렇게 구성할 경우 방향은 위,아래로만 가능합니다


var roll = new js_rolling('rolling');
or
var roll = new js_rolling(document.getElementById('rolling'));
// id이름을 적던지, 직접 대상을 지목해서 롤링 클래스로 객체를 만듬

roll.set_direction(4); // 방향을 바꿈. 1: top, 2:right, 3:bottom 4:left 그외의 경우 동작안함
roll.move_gap = 1;	//움직이는 픽셀단위
roll.time_dealy = 10; //움직이는 타임딜레이
roll.time_dealy_pause = 5000;//하나의 대상이 새로 시작할 때 멈추는 시간, 0 이면 적용 안함
roll.start(); //롤링 동작

roll.move_up(); //위로 한번 롤링 (방향이 top,botton일때만 동작)
roll.move_right(); //오른쪽으로 한번 롤링(방향이 right,left일때만 동작)
roll.move_down(); //아래로 한번 롤링(방향이 top,botton일때만 동작)
roll.move_left(); //왼쪽으로 한번 롤링(방향이 right,left일때만 동작)

roll.direction = {방향숫자} //사용시 주의 : 초기화를 시키지 않고 방향만 바꾸는 것으로 left:right , top:bottom 으로만 짝을 이뤄 써야한다
roll.mouseover_pause = true , false //true면 마우스오버 시 멈춤(기본값), false 면 마우스오버에서도 계속 롤링함

#주의
방향이 top,bottom일 경우 내부 태그는 block요소(div)로
방향이 left,right일 경우 내부태그는 inline요소(a,span)으로 해주세요.
FF에서 top,bottom의 경우 inline요소일 경우 offsetHeight를 잘못알아옵니다.
이미지가 끝 부분에서 갑자기 나타나는 현상이 있을 경우 내부 이미지들의 수를 2배로 늘려주세요.(1,2,3 이면 1,2,3,1,2,3 처럼 보이도록)


#사용제약
사용시 "공대여자는 예쁘다"를 나타내셔야합니다.

만든날 : 2007-06-07
수정일 : 2007-08-11
수정일 : 2008-08-08
만든이 : mins01,mins,공대여자
홈페이지 : http://www.mins01.com 
NateOn&MSN : mins01(at)lycos.co.kr
========================================*/
var js_rolling = function(box){
	// 시간단위는 ms로 1000이 1초
	if(box.nodeType==1){
		this.box = box;
	}else{
		this.box = document.getElementById(box);
	}
	this.is_rolling = false;
	this.mouseover_pause = true;
	this.direction = 1; //1:top, 2:right, 3:bottom, 4:left (시계방향) // 1번과 4번만 됨
	this.children =	null;
	this.move_gap = 1;	//움직이는 픽셀단위
	this.time_dealy = 40; //10; //움직이는 타임딜레이
	this.time_dealy_pause = 3000; //2000;//하나의 대상이 새로 시작할 때 멈추는 시간, 0 이면 적용 안함
	this.time_timer=null;
	this.time_timer_pause=null;
	this.mouseover=false;
	this.init();
	this.set_direction(this.direction);
	this.start();
}
js_rolling.prototype.init = function(){
	this.box.style.position='relative';
	this.box.style.overflow='hidden';
	var children = this.box.childNodes;
	for(var i=(children.length-1);0<=i;i--){
		if(children[i].nodeType==1){
			children[i].style.position='relative';
		}else{
			this.box.removeChild(children[i]);
		}
	}
	var thisC=this;

	this.box.onmouseover=function(){
		if(!thisC.mouseover_pause){	return;	}
		thisC.mouseover=true;
		if(!thisC.time_timer_pause){
			thisC.pause();
		}
	}
	this.box.onmouseout=function(){
		if(!thisC.mouseover_pause){return;}
		thisC.mouseover=false;
		if(!thisC.time_timer_pause){
			thisC.resume();
		}
	}	
}
js_rolling.prototype.set_direction = function(direction){
	this.direction=direction;
	if(this.direction==2 ||this.direction==4){
		this.box.style.whiteSpace='nowrap';
	}else{
		this.box.style.whiteSpace='normal';
	}
	var children = this.box.childNodes;
	for(var i=(children.length-1);0<=i;i--){
			if(this.direction==1){
				children[i].style.display='block';
			}else if(this.direction==2){
				children[i].style.textlign='right';
				children[i].style.display='inline';
			}else if(this.direction==3){
				children[i].style.display='block';
			}else if(this.direction==4){
				children[i].style.display='inline';
			}
	}
	this.init_element_children();	
}
js_rolling.prototype.init_element_children = function(){
	var children = this.box.childNodes;
	this.children = children;
	for(var i=(children.length-1);0<=i;i--){
			if(this.direction==1){
				children[i].style.top='0px';
			}else if(this.direction==2){
				children[i].style.left='-'+this.box.firstChild.offsetWidth+'px';
			}else if(this.direction==3){
				children[i].style.top='-'+this.box.firstChild.offsetHeight+'px';
			}else if(this.direction==4){
				children[i].style.left='0px';
			}
	}
}
js_rolling.prototype.act_move_up = function(){
	for(var i = 0,m=this.children.length;i<m;i++){
		var child = this.children[i];
		child.style.top=(parseInt(child.style.top)-this.move_gap)+'px';
	}
	if((this.children[0].offsetHeight+parseInt(this.children[0].style.top))<=0){
		this.box.appendChild(this.children[0]);
		this.init_element_children();
		this.pause_act();		
	}
}
js_rolling.prototype.move_up = function(){
	if(this.direction!=1&&this.direction!=3){return false;}
	this.box.appendChild(this.children[0]);
	this.init_element_children();
	this.pause_act();	
}
js_rolling.prototype.act_move_down = function(){
	for(var i = 0,m=this.children.length;i<m;i++){
		var child = this.children[i];
		child.style.top=(parseInt(child.style.top)+this.move_gap)+'px';
	}
	if(parseInt(this.children[0].style.top)>=0){
		this.box.insertBefore(this.box.lastChild,this.box.firstChild);
		this.init_element_children();
		this.pause_act();	
	}
}
js_rolling.prototype.move_down = function(){
	if(this.direction!=1&&this.direction!=3){return false;}	
	this.box.insertBefore(this.box.lastChild,this.box.firstChild);
	this.init_element_children();
	this.pause_act();
}
js_rolling.prototype.act_move_left = function(){
	for(var i = 0,m=this.children.length;i<m;i++){
		var child = this.children[i];
		child.style.left=(parseInt(child.style.left)-this.move_gap)+'px';
	}
	if((this.children[0].offsetWidth+parseInt(this.children[0].style.left))<=0){
		this.box.appendChild(this.box.firstChild);
		this.init_element_children();
		this.pause_act();		
	}
}
js_rolling.prototype.move_left = function(){
	if(this.direction!=2&&this.direction!=4){return false;}	
	roll.set_direction(4);
	this.box.appendChild(this.box.firstChild);
	this.init_element_children();
	this.pause_act();		
}
js_rolling.prototype.act_move_right = function(){
	for(var i = 0,m=this.children.length;i<m;i++){
		var child = this.children[i];
		child.style.left=(parseInt(child.style.left)+this.move_gap)+'px';
	}
	
	if(parseInt(this.box.lastChild.style.left)>=0){
		this.box.insertBefore(this.box.lastChild,this.box.firstChild);
		this.init_element_children();
		this.pause_act();		
	}
}
js_rolling.prototype.move_right = function(){
	if(this.direction!=2&&this.direction!=4){return false;}	
	roll.set_direction(2);
	this.box.insertBefore(this.box.lastChild,this.box.firstChild);
	this.init_element_children();
	this.pause_act();
}
js_rolling.prototype.start = function(){ //롤링 시작
	var thisC = this;
	this.stop();
	this.is_rolling = true;
	var act = function(){
		if(thisC.is_rolling){
			if(thisC.direction==1){thisC.act_move_up();}
			else if(thisC.direction==2){thisC.act_move_right();}
			else if(thisC.direction==3){thisC.act_move_down();}
			else if(thisC.direction==4){thisC.act_move_left();}
		}
	}
	this.time_timer = setInterval(act,this.time_dealy);
}
js_rolling.prototype.pause_act = function(){ //일시 동작
	if(this.time_dealy_pause){
		var thisC = this;
		var act = function(){thisC.resume();thisC.time_timer_pause=null;}
		if(this.time_timer_pause){clearTimeout(this.time_timer_pause);}
		this.time_timer_pause = setTimeout(act,this.time_dealy_pause);
		this.pause();
	}
}
js_rolling.prototype.pause = function(){ //일시 멈춤
	this.is_rolling = false;
}
js_rolling.prototype.resume = function(){ //일시 멈춤 해제
	if(!this.mouseover){
		this.is_rolling = true;
	}
}
js_rolling.prototype.stop = function(){ //롤링을 끝냄
	this.is_rolling = false;
	if(!this.time_timer){
		clearInterval(this.time_timer);
	}
	this.time_timer = null
}



