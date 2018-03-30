<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@page import="java.util.Calendar"%>
<%@ page import="kr.co.knoc.domestic.xml.OilDateXmlParser"%>
<%@ page import="java.util.HashMap"%>
<%@ page import="java.util.List"%>
<%@ page import="kr.co.knoc.mgr.MgrSession"%>
<%@ page import="kr.co.knoc.content.MenuBean" %>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.ArrayList"%> 
<%@ page import="kr.co.knoc.term.WebzineBean"%>
<%@ page import = "java.sql.Connection"%>
<%@ page import = "java.sql.PreparedStatement"%>
<%@ page import = "java.sql.ResultSet"%>
<%@ page import = "java.sql.Statement"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.etc.*"%>
<%@ page import = "kr.co.knoc.popup.*"%>
<%@ page import = "kr.co.knoc.jdbc.DBUtil"%>
<%@ page import = "kr.co.knoc.petronet.*"%>
<jsp:useBean id="PopNewMa" scope="page" class="kr.co.knoc.popup.PopupNewManager" />
<jsp:useBean id="PopMa" scope="page" class="kr.co.knoc.popup.PopupManager" />
<jsp:useBean id="BoardMa" scope="page" class="kr.co.knoc.etc.BoardLimit" />
<jsp:useBean id="MainMa" scope="page" class="kr.co.knoc.etc.MainCountManager" />
<jsp:useBean id="PetronetMa" scope="page" class="kr.co.knoc.petronet.PetronetManager" />
<jsp:useBean id="PetronetMa2" scope="page" class="kr.co.knoc.petronet.PetronetManager2" />
<jsp:useBean id="TermMa" scope="page" class="kr.co.knoc.term.WebzineManager" />
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="MenuMa" scope="page" class="kr.co.knoc.content.MenuManager" />
<%@ page import = "kr.co.knoc.koroil.*"%>
<jsp:useBean id="KoilMa" scope="page" class="kr.co.knoc.koroil.KoilManager" />
<jsp:useBean id="BannerMa" scope="page" class="kr.co.knoc.banner.BannerManager" />
<%@ page import = "kr.co.knoc.banner.*"%>

<%!
	public String getNewArticle(java.util.Date writeday,String contextRoot){
		java.util.Date today = new java.util.Date();
		String newImg=""; 
		if (today.getTime()-writeday.getTime() < (1000*60*60*24*1)){
			newImg = "<img src='"+contextRoot+"' border='0' alt='new' />" ;
		}
		return newImg;
	}  
%>

<%

String nowpage = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("page")),"8859_1");
pp.setPage(nowpage);
pp.setPageSize("10");
pp.setPageUrl("");

ArrayList al = TermMa.getTermList(pp.getNPage(), pp.getNPageSize());	
WebzineBean pb3 = new WebzineBean();

///////////////����,�� ���� ////////////////////////////////

// ���ó�¥
Calendar oCalendar = Calendar.getInstance();  
int year = oCalendar.get(Calendar.YEAR);
int month = oCalendar.get(Calendar.MONTH) + 1;
int day = oCalendar.get(Calendar.DAY_OF_MONTH);
int hour = oCalendar.get(Calendar.HOUR_OF_DAY);
int minute = oCalendar.get(Calendar.MINUTE);
 

Calendar petrobCalendar = Calendar.getInstance();  
 
petrobCalendar.add(Calendar.DAY_OF_MONTH,-1);// ������¥�� ���� ������ �Ŀ� ��¥ ���� 
int petrobyear = petrobCalendar.get(Calendar.YEAR);
int petrobday =petrobCalendar.get(Calendar.DAY_OF_MONTH);
int petrobmonth = petrobCalendar.get(Calendar.MONTH) + 1;
int petrobhour = petrobCalendar.get(Calendar.HOUR_OF_DAY);


String currentDate = Integer.toString(year) + String.format("%02d", month) + String.format("%02d", day);

String petrobcurrentDate = Integer.toString(petrobyear) + String.format("%02d", petrobmonth) + String.format("%02d", petrobday);
 

String[] weekDay={"SUN","MON","TUE","WED","THU","FRI","SAT"};
 
/**
* ������ : 2015.03.27
* ������ : ����� (milgam12@inplusweb.com)
* ��  �� : ���������� �Ľ� ������ �Ϸ� 1������ ���÷� ����(without DB)
// ���� ���� DB�� ���� ��¥ ������ �ִ��� Ȯ�� 
KoilManager koil = new KoilManager();
HashMap hash = koil.getKoroilView();
KoroilBean korb = null;
 
if(hash.containsKey("korBean")){
	 korb = (KoroilBean)hash.get("korBean");	
}

if(!currentDate.equals(korb.getAccess_date())){
	KorInsert.updateKor(); //access_date ����(�������� DB�� �������� ���ϴ��� ���̻� ȣ����� �ʵ��� �ϱ� ����)
	KoroilBean kb = KoilMa.getKoroil();   //�������� DB�� ��� 
	hash = koil.getKoroilView();
	korb = (KoroilBean)hash.get("korBean");
}
*/
KoroilBean korb = KoilMa.getKoroil2();   //�������� DB�� ��� 


// ���� ���� 
PetronetManager2 petronet = new PetronetManager2();
PetronetBean petrob = null;
HashMap hash2 = petronet.getPetroView();
if(hash2.containsKey("petroBean")){
	  petrob = (PetronetBean)hash2.get("petroBean");	
}  
 

String toWeekDay=weekDay[oCalendar.get(Calendar.DAY_OF_WEEK)-1];
String sMinute = String.valueOf(hour)+String.valueOf(minute);

/**
* �ܱ��� ���� ���� ���� �� ��찡 ������ ����¥�� ������ ���� �Ϸ翡 �ѹ��� �����ͼ� update�ϴ� �ɷ� ��ġ
*/
if("TUE".equals(toWeekDay) || "WED".equals(toWeekDay) || "THU".equals(toWeekDay) ||"FRI".equals(toWeekDay)
		|| "SAT".equals(toWeekDay)){ // ���� ȭ~�� ���� 9�� �������� 1ȸ�� 
	 if("SAT".equals(toWeekDay) && Integer.parseInt(sMinute) > 1229 && !petrob.getRegi_date().equals(currentDate)){
			PetronetInsert.updatePetronet(); //access_date ����(�������� DB�� �������� ���ϴ��� ���̻� ȣ����� �ʵ��� �ϱ� ����)
			PetronetBean pb = PetronetMa2.getPetronet();  //�������� DB�� ���
			hash2 = petronet.getPetroView();
			petrob = (PetronetBean)hash2.get("petroBean");
	 }
	 else if(!"SAT".equals(toWeekDay) && Integer.parseInt(sMinute) > 900 && !petrob.getRegi_date().equals(currentDate)){
			 
			PetronetInsert.updatePetronet(); //access_date ����(�������� DB�� �������� ���ϴ��� ���̻� ȣ����� �ʵ��� �ϱ� ����)
			PetronetBean pb = PetronetMa2.getPetronet();  //�������� DB�� ���
			hash2 = petronet.getPetroView();
			petrob = (PetronetBean)hash2.get("petroBean");
	 }

}
 
//////////////////////////////////////////////////////////



Iterator iter2 = al.iterator();

String path = "";
String url = "";
while(iter2.hasNext()){
	pb3 = (WebzineBean)iter2.next();
	url = pb3.getLink_url() ;
	path = pb3.getImg_path(); 																													
	
}

%>


<% request.setCharacterEncoding("euc-kr"); %>    
<% 
/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
' Page Navigator section
'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","00");
	application.setAttribute("gNavMenuDepth2","00");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/


if(MainMa.getTodayAccessCount("/index.jsp") > 0){
	MainMa.updateAccessCount("/index.jsp");
}else{
	MainMa.insertAccessCount("/index.jsp");
}

String gets = "";
if(request.getQueryString() != null){
		gets = "?"+request.getQueryString();
}
String currentPage = request.getRequestURL()+gets; 
if (currentPage == null || currentPage.equals("")) {
	currentPage = "/";
}
/*	����Ʈ��� �Ķ����
StringBuffer sb = new StringBuffer();
for (Enumeration en = request.getParameterNames(); en.hasMoreElements();) {
	String key = (String)en.nextElement();
	sb.append(key+"="+request.getParameter(key)+"&");
}
String paramStr = sb.toString();
paramStr = paramStr.substring(0, paramStr.length()-1);
*/

MgrSession ses = (MgrSession)session.getAttribute("USERSESSION");
String uid = "";
String userlevel = "9";
if (ses != null) {
	uid = ses.getUserID();
	userlevel = ses.getUserLevel();
}
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml"  lang="ko">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR" />
<meta http-equiv="X-UA-Compatible" content="IE=10,chrome=1" />
<title>�ѱ���������</title>

<link href="/share/css/import.css" rel="stylesheet" type="text/css" />
<!-- script type="text/javascript" src="/share/js/jquery-1.8.3.min.js"></script-->
<script type="text/javascript" src="https://code.jquery.com/jquery-1.8.3.min.js"></script>
<!-- script type='text/javascript' src="/share/js/jcarousellite-1.8.7.min.js"></script-->
<script type='text/javascript' src="http://kswedberg.github.io/jquery-carousel-lite/src/jquery.jcarousellite.js"></script>

<script type="text/javascript" src="/share/js/jquery.fadeVisual-0.3.min.js"></script>
<script type="text/javascript" src="/share/js/jquery.smenu-0.1.1.min.js"></script>
<script type="text/javascript" src="/include/js/java.js"></script>
<script type="text/javascript" src="/share/js/comm.js"></script>




<!--[if IE 6]>
<script src="/include/js/DD_belatedPNG_0.0.8a-min.js" type="text/javascript"></script>
<script type="text/javascript">
//<![CDATA[
    DD_belatedPNG.fix('img');
//]]>    
 </script>
<![endif]-->
<script type="text/javascript">
$(function(){

	/*�����ڷ�/��������*/
	$(".main_board button").each(function(){
		$(this).click(function(){
			$(".main_board>ul>li").removeClass("on");
			$(this).parent().addClass("on");
			
			$(".main_board").removeClass("tab01").removeClass("tab02");
			$(".main_board").addClass("tab0"+($(this).parent().index()+1));
		});
	});
	
	/*��������/��������*/
	$(".main_oil>ul>li>button").each(function(){
		$(this).click(function(){
			$(".main_oil>ul>li").removeClass("on");
			$(this).parent().addClass("on");
			
			$(".main_oil").removeClass("tab01").removeClass("tab02");
			$(".main_oil").addClass("tab0"+($(this).parent().index()+1));
		});
	});
	
	$(".depth2>li>a").each(function(){
		if($(this).attr("href")=="#this"){
			$(this).click(function(){
				$(this).parent().parent().find("li").removeClass("on");
				$(this).parent().addClass("on");
			});
		}
	});
	
	/*���κ��־�
	$(".main_visual").fadeVisual({
		visual_class	: "fade-visual",
		//indicator_class	: "fade-indicator",

		flag_pause		: false,
		flag_use_numbering	: true,
		active_number_class	: "cur_num",
		total_number_class	: "tot_num",

		pause_class		: "fade-pause",
		resume_class	: "fade-resume",
		//toggle_class	: "fade-toggle",
		prev_class		: "fade-prev",
		next_class		: "fade-next",

		hidden_class	: "fade-hidden",

		loop_speed		: 2,
		fade_speed		: 0.6
	});
	*/

	var obj_popupzone = $("#popupzone");
	var obj_roll = $("div.main_banner04_area", obj_popupzone);
	obj_roll.jCarouselLite({
		auto: true,
		speed:500,          
		btnNext:".banner_next",
		btnPrev:  ".banner_prev",
		visible: 1,

		afterEnd: function(a){		
			var obj_li = $("> ul > li", obj_roll);
			var cnt_li = obj_li.length - 2;
			var idx = obj_li.index(a) * 1;
			var no = idx;			
			if(no > cnt_li) { no = no - cnt_li; }
			else if(no == 0){ no = cnt_li; }
		
			$(".roll_control > p > span.cur_num").text(no);				
			main_banner04=0;
		}
	});

	$("button.banner_pause", obj_popupzone).on("click", function(e){ 
		obj_roll.trigger("pauseCarousel");
	});

	$("button.banner_play", obj_popupzone).on("click", function(e){ 
		obj_roll.trigger("resumeCarousel"); 
	});		
	

	/* ����Ұ� */
	var obj_pr_link = $("div.main_banner05 > ul > li > a");
	obj_pr_link.on("mouseenter focusin", function(e) {
		var idx = obj_pr_link.index(this);
		obj_pr_link.parent("li").not(":eq(" + idx + ")").removeClass("on").end().eq(idx).addClass("on");
	});		

	$("div.main_banner05").on("mouseleave focusout", function(e) {
		$(this).find("li").not(":eq(1)").removeClass("on").end().eq(1).addClass("on");

	});

});
</script>

 
<%
try{
	if(!request.getParameter("mobileCheck").equals("Y")){ 
		
%>	
<script type="text/javascript">
//<![CDATA[
var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson', 'Symbian', 'Opera');
for (var word in mobileKeyWords){
	
    if (navigator.userAgent.match(mobileKeyWords[word]) != null){
        location.href = "http://m.knoc.co.kr";
        break;
    }

}
//]]>
</script>
<%
		
	} 
}catch (Exception e){
%>	
	<script type="text/javascript">
	//<![CDATA[
	var mobileKeyWords = new Array('iPhone', 'iPod', 'BlackBerry', 'Android', 'Windows CE', 'LG', 'MOT', 'SAMSUNG', 'SonyEricsson', 'Symbian', 'Opera');
	for (var word in mobileKeyWords){
		
	    if (navigator.userAgent.match(mobileKeyWords[word]) != null){
	        location.href = "http://m.knoc.co.kr";
	        break;
	    }

	}
	//]]>
	</script>
<%	
}
%>

<script type="text/javascript">

//<![CDATA[
function getCookie( name )
{
	var nameOfCookie = name + "=";
	var x = 0;
	while ( x <= document.cookie.length )
	{
		var y = (x+nameOfCookie.length);
		if ( document.cookie.substring( x, y ) == nameOfCookie )
		{
			if ( (endOfCookie=document.cookie.indexOf( ";", y )) == -1 )
				endOfCookie = document.cookie.length;
			return unescape( document.cookie.substring( y, endOfCookie ) );
		}
		x = document.cookie.indexOf( " ", x ) + 1;
		if ( x == 0 )
			break;
	}
	return "";
}
 

function setCookie( name, value, expiredays )
{
	var todayDate = new Date();

	todayDate.setDate( todayDate.getDate() + expiredays );

	document.cookie = name + "=" + escape( value ) + "; path=/; domain=knoc.co.kr; expires=" + todayDate.toGMTString() +";" 

}


<%
		ArrayList popN_al = PopNewMa.getPopupNew();
		String cookie_date = "";
		String scroll = "";
		Iterator popNiter = popN_al.iterator();
		while(popNiter.hasNext()){
			PopupNewBean pnb = (PopupNewBean)popNiter.next();
			cookie_date = pnb.getRegDateString("yyyyMMddhhmmss");
		if (pnb.getScroll().equals("Y")) {
			scroll = "yes";
		} else {
			scroll = "no";
		}
	%>
	if (getCookie("<%=cookie_date%>") != "close<%=cookie_date%>")
	{
		var popup = window.open("/Popup/popup.jsp?no=<%=pnb.getNo()%>","<%=cookie_date%>","toolbar=no,status=no,top=0,left=0,width=<%=pnb.getWidth()%>,height=<%=pnb.getHeight()%>,scrollbars=<%=scroll%>");		
	}
	<%
	}
%>

<%
	SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMdd");
	String currentDt = sdf.format(new Date());
%>
	var currentDt = '<%=currentDt %>';
	if(currentDt >= '20140523' && currentDt <= '20140524'){
		if(getCookie("pop20140523") != "closepop20140523-2"){
			window.open("/Popup/popup_20140523.jsp", "pop20140523", "toolbar=no,status=no,top=0,left=0,width=538,height=330,scrollbars=no");
		}
	}

//]]>
</script>


<!--   twitter and facebook  -->
<script type="text/javascript">
//<![CDATA[
	$(document).ready(function(){
		
		$("#sns_tab01").hide();
		$("#sns_tab02").hide();
		
		// ���� ����  title cut
	
	});
	function facebook(){
		$("#sns_tab01").hide();
		$("#sns_tab02").show();
	}
	function twiter(){
		$("#sns_tab02").hide();
		$("#sns_tab01").show(); 
	}
	
	
	function viewNotice(b_code){
		document.mainForm.login.value = "yes";
		document.mainForm.flag.value = "banner";
		document.mainForm.mainUrl.value = escape("/supplier/bid/bid_detail_view_notice.jsp?is_gongo=true&b_code="+b_code);
		
		document.mainForm.action = "http://ebid.knoc.co.kr/supplier/index.jsp";
		document.mainForm.target = "_blank";
		document.mainForm.submit();
	}
	
	function viewNoticeManual(b_code){
		document.mainForm.login.value = "yes";
		document.mainForm.flag.value = "banner";
		document.mainForm.mainUrl.value = escape("/supplier/bid/bid_detail_view_noticemanual.jsp?is_gongo=true&b_code="+b_code);
		
		document.mainForm.action = "http://ebid.knoc.co.kr/supplier/index.jsp";
		document.mainForm.target = "_blank";
		document.mainForm.submit();
	}
	
	function viewNoticeOff(b_code){
		document.mainForm.login.value = "yes";
		document.mainForm.flag.value = "banner";
		document.mainForm.mainUrl.value = escape("/supplier/bid/bid_detail_view_offbid.jsp?b_code="+b_code);
		
		document.mainForm.action = "http://ebid.knoc.co.kr/supplier/index.jsp";
		document.mainForm.target = "_blank";
		document.mainForm.submit();
	}
	
	function popview(){  
		$("#popupLayer").html("");
		var pophtml = new Array();
		pophtml.push('<p class="mb10">');
		pophtml.push('<img src="/images/2013/layer_tit.png" alt="KBS1 �������� �ѱ�, �̶�ũ �Ƹ����� �̴޺��� ���� ���� (2014�� 4��2��)" /></p>');
		pophtml.push('<object>');
		pophtml.push('<param name="wmode" value="opaque"></param>');
		pophtml.push('<param name="allowscriptaccess" value="always"></param>');
		pophtml.push('<embed src="/upload/POPUP/20140402_kbs1news.wmv" class="aaa" WindowlessVideo="1"   wmode="opaque" volume=0  hidden="ture" loop="off" style="width:620px; height:360px; z-index:10;"    />');
		pophtml.push('</object>');
		pophtml.push('<div class="today_closed" style="position:absolute; top: 430px; left:585px; ">');
		pophtml.push('<a href="#close" onclick="DivTodayClose();"><img src="/images/2013/btn_close.gif" alt="â�ݱ�" class="vm" /></a>');
		pophtml.push('</div>');
		
		$("#popupLayer").html(pophtml.join(""));
		$("#popupLayer").show();
		$("#popupLayer02").hide();
	}
	
	function DivTodayClose(){ 
		$("#popupLayer").html("");
		var pophtml = new Array();
		pophtml.push('<p class="mb10">');
		pophtml.push('<img src="/images/2013/layer_tit.png" alt="KBS1 �������� �ѱ�, �̶�ũ �Ƹ����� �̴޺��� ���� ���� (2014�� 4��2��)" /></p>');
		pophtml.push('<object>');
		pophtml.push('<param name="wmode" value="opaque"></param>');
		pophtml.push('<param name="allowscriptaccess" value="always"></param>');
		pophtml.push('<embed src="/upload/POPUP/20140402_kbs1news.wmv" class="aaa" WindowlessVideo="1"   wmode="opaque" mute=true  hidden="ture" loop="off" style="width:620px; height:360px; z-index:10;"    />');
		pophtml.push('</object>');
		pophtml.push('<div class="today_closed" style="position:absolute; top: 430px; left:585px; ">');
		pophtml.push('<a href="#close" onclick="DivTodayClose();"><img src="/images/2013/btn_close.gif" alt="â�ݱ�" class="vm" /></a>');
		pophtml.push('</div>');
		
		$("#popupLayer").html(pophtml.join(""));
		$("#popupLayer").hide();
	}	
	
	function DivTodayClose02(){ 
		var popupLayerDiv = document.getElementById("popupLayer02"); // popupLayer; ���̾� �˾� ID ����
		popupLayerDiv.style.display="none";
	}	
			

function MM_showHideLayers() { //v9.0
  var i,p,v,obj,args=MM_showHideLayers.arguments;
  for (i=0; i<(args.length-2); i+=3) 
  with (document) if (getElementById && ((obj=getElementById(args[i]))!=null)) { v=args[i+2];
    if (obj.style) { obj=obj.style; v=(v=='show')?'visible':(v=='hide')?'hidden':v; }
    obj.visibility=v; }
}
function MM_preloadImages() { //v3.0
  var d=document; if(d.images){ if(!d.MM_p) d.MM_p=new Array();
    var i,j=d.MM_p.length,a=MM_preloadImages.arguments; for(i=0; i<a.length; i++)
    if (a[i].indexOf("#")!=0){ d.MM_p[j]=new Image; d.MM_p[j++].src=a[i];}}
}

function MM_swapImgRestore() { //v3.0
  var i,x,a=document.MM_sr; for(i=0;a&&i<a.length&&(x=a[i])&&x.oSrc;i++) x.src=x.oSrc;
}

function MM_findObj(n, d) { //v4.01
  var p,i,x;  if(!d) d=document; if((p=n.indexOf("?"))>0&&parent.frames.length) {
    d=parent.frames[n.substring(p+1)].document; n=n.substring(0,p);}
  if(!(x=d[n])&&d.all) x=d.all[n]; for (i=0;!x&&i<d.forms.length;i++) x=d.forms[i][n];
  for(i=0;!x&&d.layers&&i<d.layers.length;i++) x=MM_findObj(n,d.layers[i].document);
  if(!x && d.getElementById) x=d.getElementById(n); return x;
}

function MM_swapImage() { //v3.0
  var i,j=0,x,a=MM_swapImage.arguments; document.MM_sr=new Array; for(i=0;i<(a.length-2);i+=3)
   if ((x=MM_findObj(a[i]))!=null){document.MM_sr[j++]=x; if(!x.oSrc) x.oSrc=x.src; x.src=a[i+2];}
}


function movieView(){
	//window.open("/upload/movie/20141204_jtbc.wmv", "movieView", "toolbar=no,status=no,top=0,left=0,width=850,height=1140,scrollbars=no");
	window.open("movie.jsp", "movieView", "toolbar=no,status=no,top=0,left=0,width=620,height=360,scrollbars=no");
}

<%--
var currentDt = '<%=currentDt %>';
if(currentDt >= '20141204' && currentDt <= '20141215'){
	window.open("20141127_pop.jsp", "pop_141204", "toolbar=no,status=no,top=0,left=0, width=365,height=266,scrollbars=no");
}
--%>
//]]>
</script>
<style>
#popupLayer {
	left:0px;
	top:0px;
	position:absolute; 
	background:#fff; 
	border:5px solid #d5d5d5; 
	padding:15px 15px;   
	display:none; 
	width:620px; 
	height:439px; 
	z-index:100;	
}
#popupLayer02 {
	left:0px;
	top:0px;
	position:absolute; 
	background:#fff; 
	border:5px solid #d5d5d5;
	padding-bottom:36px; 
	display:block; 
	width:650px; 
	height:450x;  
	z-index:500;	
}
</style>
</head>


<body class="font_size1">
<!-- wrap -->
<div id="wrap" class="main">
	<!-- header -->
	<div id="header">
		<!-- top_area -->
    	<div class="top_area">
			<!-- top_util -->
        	<ul class="top_util">
            	<li><a href="#container" class="skipnavi"><span class="bline">�����ٷΰ���</span></li>
                <li>
                	<div class="font_size">
                    	<span class="bline">����ũ��</span>
                        <button class="zoom_in"><span class="bline">����ũ�� ũ��</span></button>
                        <button class="zoom_out"><span class="bline">����ũ�� �۰�</span></button>
                    </div>
                </li>
                <li><button class="btn_print"><span class="bline">�μ�</span></button></li>
            </ul>
            <!-- //top_util -->
			<!-- top_quick_menu -->
            <p class="top_quick_menu">
                <a href="/">Ȩ</a>
                <span class="arrow">I</span>
                <%if(ses != null && ses.getId() != null && ses.getId().length() > 0){ %>
                <a href="./member/logout.jsp">�α׾ƿ�</a>
                <%}else{ %>
                <a href="./member/login.jsp">�α���</a>
                <%} %>
                
                <span class="arrow">I</span>
                <a href="/member/sitemap.jsp">����Ʈ��/��Ÿ����</a>                
            </p>
            <!-- //top_quick_menu -->
			<!-- language -->
            <div class="language">
                <select id="langs" name="langs" class="langs" title="��� ����">
                    <option value="">Language</option>
                    <option value="/ENG/main.jsp">English</option>
                </select>
                <a href="#this" onclick="javascript:goSite(1);" title="��â" class="btn_go_site"><span class="hidden">����</span></a>
            </div>
			<!-- //language -->
        </div>
        <!-- //top_area -->
        
		<!-- core_area -->
        <div class="core_area">
        	<h1><a href="/"><img src="./img/common/logo.png" alt="�ѱ���������" title="�ѱ���������" /></a></h1>
			<!-- search_area -->
            <div class="search_area">
                <form  name="tsearchForm" id="tsearchForm" method="post" action="/search/list.jsp">
                    <div>
                        <fieldset>
                            <legend>���հ˻�</legend>
                            <input type="text" title="�˻��� �Է�" id="nsearch" name="search" class="search_input" style="background: url(/img/bg/search_txt.png) 0% 50% no-repeat;" onfocus="this.style.backgroundImage=''" onblur="if (this.value=='') this.style.backgroundImage='url(/img/bg/search_txt.png)';" />
                            <input type="image" src="/img/btn/btn_search.png" alt="�˻�" class="btn_search" />
                        </fieldset>
                    </div>
                </form>
            </div>
			<!-- //search_area -->
            <p class="core_txt"><a href="http://www.gov30.go.kr" target="_blank"><img src="/img/common/top_banner.png" alt="�ູ�� ���ѹα��� ���� ���� 3.0" title="�ູ�� ���ѹα��� ���� ���� 3.0" /></a></p>
        </div>
		<!-- //core_area -->        

        <!-- gnb -->
        <div id="gnb">
            <span class="bg">
            	<span></span>
            </span>
            <button class="btn_gnb_close"><span class="bline">�ݱ�</span></button>
            <ul>          
                <li>
                    <a href="/sub05/submain.jsp" class="gnb01"><span class="bline">����3.0��������</span></a>
                    <ul class="gnb_depth">
					<%
						ArrayList al05 = MenuMa.getMenuList("05","Y");	
						Iterator titer = al05.iterator();
						while(titer.hasNext()){		
							MenuBean mb = (MenuBean)titer.next();
							if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
								
					%>						
								<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
					<%				
							}
						}
					%>
                    </ul>    
                </li>		        

                <li>
                    <a href="/sub01/submain.jsp" class="gnb02"><span class="bline">����Ұ�</span></a>
                    <ul>
					<%
						ArrayList al01 = MenuMa.getMenuList("01","Y");	
						titer = al01.iterator();
						while(titer.hasNext()){		
							MenuBean mb = (MenuBean)titer.next();
							if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) { //0111 0112 mb.getMCode()
					%>						
								<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=("0111".equals(mb.getMCode().substring(0,4)) || "0112".equals(mb.getMCode().substring(0,4)))?mb.getName().substring(0,4)+"<br />"+mb.getName().substring(4,mb.getName().length()):mb.getName() %></a></li>
					<%				
							}
						}
					%>	
                    </ul>    
                </li>
                
                <li>
                    <a href="/sub03/submain.jsp" class="gnb03"><span class="bline">����Ұ�</span></a>
                    <ul>
					<%
						ArrayList al03 = MenuMa.getMenuList("03","Y");	
						titer = al03.iterator();
						while(titer.hasNext()){		 
							MenuBean mb = (MenuBean)titer.next();
							if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
					%>						
								<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=("0304".equals(mb.getMCode().substring(0,4)))?mb.getName().substring(0,6)+"<br />"+mb.getName().substring(6,mb.getName().length()):mb.getName() %></a></li>
					<%				
							}
						}
					%>
                    </ul>    
                </li>
                
                <li>
                    <a href="/sub02/submain.jsp" class="gnb04"><span class="bline">�����濵</span></a>
                    <ul>
					<%
						ArrayList al02 = MenuMa.getMenuList("02","Y");
						titer = al02.iterator();
						while(titer.hasNext()){		
							MenuBean mb = (MenuBean)titer.next();
							if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
					%>						
								<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
					<%				
							}
						}
					%>
                    </ul>    
                </li>
                
                <li>
                    <a href="/sub11/submain.jsp" class="gnb05"><span class="bline">���̹�ȫ����</span></a>
                    <ul>
					<%
						ArrayList al11 = MenuMa.getMenuList("11","Y");
						titer = al11.iterator();
						while(titer.hasNext()){		
							MenuBean mb = (MenuBean)titer.next();
							if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
					%>						
								<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
					<%				
							}
						}
					%>
                    </ul>    
                </li>
                
                <li>
                    <a href="/sub04/submain.jsp" class="gnb06"><span class="bline">������</span></a>
                    <ul>
					<%
						ArrayList al04 = MenuMa.getMenuList("04","Y");
						titer = al04.iterator();
						while(titer.hasNext()){		
							MenuBean mb = (MenuBean)titer.next();
							if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
					%>						
								<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
					<%				
							}
						}
					%>
                    </ul>    
                </li>                                                                
	
                <li>
                    <a href="/sub12/sub12_1_1.jsp" class="gnb07"><span class="bline">���簳�߼���</span></a>
                    <ul>
					<%
						ArrayList al07 = MenuMa.getMenuList("12","Y");
						titer = al07.iterator();
						while(titer.hasNext()){		
							MenuBean mb = (MenuBean)titer.next();
							if (mb.getMCode() != null && mb.getMCode().substring(4,8).equals("0000")) {
					%>						
								<li><a href="<%=mb.getUrl() %>" title="<%=mb.getName() %> �������� �̵�"><%=mb.getName() %></a></li>
					<%				
							}
						}
					%>
                    </ul>    
                </li>                	
            </ul>        	
        </div>
		<!-- //gnb -->
    </div>
    <!-- //header -->

    <div id="container">
    	<h2 class="bline">��������</h2>
    	<!-- main_contents -->
    	<div class="main_contents">
        	<!-- main_board -->
            <div class="main_board tab01">
             	<ul>
                	<li class="on">
                    	<button>�����ڷ�</button>
                        <ul>
                        	<%
							ArrayList boardlimit = BoardMa.getNeoBoard("NEOBOARD_NEWS",3,"");
							Iterator iter = boardlimit.iterator();
							if (boardlimit.size() == 0) {
							%>
							<li>��ϵ� �ڷᰡ �����ϴ�.</li>
							<%
							} else {	
							while(iter.hasNext()){
							BoardBean bb = (BoardBean)iter.next();
							%>
							<li><a href="/sub11/sub11_1.jsp?num=<%=bb.getNo() %>&amp;mode=view&amp;bid=NEWS"><%=EtcUtil.getTitleLimit(bb.getSubject(), 70)%></a></li>							      
							<%		
								}
							}	
							%>
                        </ul>
                        <a href="/sub11/sub11_1.jsp" class="btn_more"><span class="bline">������</span></a>
                    </li>           
					<li>
                    	<button>��������</button>
                        <ul>
							<iframe src="http://ebid.knoc.co.kr/supplier/noticeEx141102.jsp" scrolling="no" frameborder="0" id="Ex" width="230" height="120" title="��������">
      								<a href="http://ebid.knoc.co.kr/supplier/noticeEx120703.jsp" target="_blank">�ֱ� �������� �ٷΰ���(��â)</a>
      						</iframe>  
                        </ul>
                        <a href="http://ebid.knoc.co.kr/supplier/index.jsp" class="btn_more" target="_blank" title="��â"><span class="bline">������</span></a>
                    </li>
                </ul>
            </div>
            <!-- //main_board -->                    

			<!-- main_oil -->
            <div class="main_oil tab01">
            	<ul>
                	<li class="on">
                    	<button>��������</button>
                        <div>
                        	<ul class="depth2">
                                <li class="on">
                                    <a href="#this">�������Ǹ�</a>
                                    <div>
                                    	<p><%=korb.getRecentdt().substring(0,4)+"."+korb.getRecentdt().substring(4,6)+"."+korb.getRecentdt().substring(6,8) %> (��/����)</p>
                                    	<table border="0" cellspacing="0" cellpadding="0" class="tbl_domestic" summary="���������� �ֿ���Ǹſ� ���� ǥ">
                                            <caption>�������Ǹ�</caption>
                                            <colgroup>
                                                <col width="50%" />  
                                                <col width="25%" />  
                                                <col width="25%" />  
                                            </colgroup>							  			      
                                            <tbody>  
                                                <tr>    
													<th scope="row"><a href="http://www.opinet.co.kr/" target="_blank" title="��â"><%=korb.getGas_name()!=null?korb.getGas_name():"" %></a></th>
													<td><%=korb.getGas_num()!=null?korb.getGas_num():"" %></td>
													<td>
													<%if(korb.getGas_rate() != null){ %>
													<%
													if(korb.getGas_rate().indexOf("+")!=-1){
													%>												
													<div class="oil_up"><span class="hidden">���</span></div><%=korb.getGas_rate()!=null &&  (korb.getGas_rate()).length()>1 ? (korb.getGas_rate()).substring(1,(korb.getGas_rate()).length()):"" %>
													<%
													}else{
													%>
													<div class="oil_down"><span class="hidden">�϶�</span></div><%=korb.getGas_rate()!=null &&  (korb.getGas_rate()).length()>1 ? (korb.getGas_rate()).substring(1,(korb.getGas_rate()).length()):"" %>
													<%	
													} 
													%>
													<%} %>
													</td>	                                                											 
                                                </tr>
                                                <tr>
													<th scope="row"><a href="http://www.opinet.co.kr/" target="_blank" title="��â"><%=korb.getVia_name()!=null?korb.getVia_name():"" %></a></th>
													<td><%=korb.getVia_num()!=null?korb.getVia_num():"" %></td>
													<td>
													<%if(korb.getVia_rate() != null){ %>
													<%
													if(korb.getVia_rate().indexOf("+")!=-1){
													%>												
													<div class="oil_up"><span class="hidden">���</span></div><%=korb.getVia_rate()!=null &&  (korb.getVia_rate()).length()>1 ? (korb.getVia_rate()).substring(1,(korb.getVia_rate()).length()):"" %>
													<%
													}else{
													%>
													<div class="oil_down"><span class="hidden">�϶�</span></div><%=korb.getVia_rate()!=null &&  (korb.getVia_rate()).length()>1 ? (korb.getVia_rate()).substring(1,(korb.getVia_rate()).length()):"" %>
													<%	
													} 
													%>
													<%} %>
													</td>	
                                                </tr>
                                                <tr>
													<th scope="row"><a href="http://www.opinet.co.kr/" target="_blank" title="��â"><%=korb.getButane_name()!=null?korb.getButane_name():"" %></a></th>
													<td><%=korb.getButain_num()!=null?korb.getButain_num():"" %></td>
													<td>
													<%if(korb.getButain_rate() != null){ %>
													<%
													if(korb.getButain_rate().indexOf("+")!=-1){
													%>												
													<div class="oil_up"><span class="hidden">���</span></div><%=korb.getButain_rate()!=null &&  (korb.getButain_rate()).length()>1 ? (korb.getButain_rate()).substring(1,(korb.getButain_rate()).length()):"" %>
													<%
													}else{
													%>
													<div class="oil_down"><span class="hidden">�϶�</span></div><%=korb.getButain_rate()!=null &&  (korb.getButain_rate()).length()>1 ? (korb.getButain_rate()).substring(1,(korb.getButain_rate()).length()):"" %>
													<%	
													} 
													%>
													<%} %>
													</td>	
                                                </tr>	
                                            </tbody>
                                        </table>
                                    </div>
                                </li>
                                <li>
                                    <a href="http://www.opinet.co.kr/user/dopospdrg/dopOsPdrgSelect.do" target="_blank" title="��â">����ǸŰ���</a>
                                </li>
                            </ul>
                        </div>
                        <a href="http://www.petronet.co.kr/v3/index.jsp" target="_blank" title="��â" class="btn_more"><span class="bline">������</span></a>
                    </li>
                    
                    <li>
                    	<button>��������</button>
                        <div>
                        	<ul class="depth2">
                                <li class="on">
                                    <a href="#this">��������</a>
                                    <div>
                                    	<p><% if (petrob.getRecentDt() != null && !petrob.getRecentDt().equals("")) { %><%=petrob.getRecentDt().substring(0,4) %>.<%=petrob.getRecentDt().substring(4,6) %>.<%=petrob.getRecentDt().substring(6,8) %><% } %> ($/bbl)</p>
                                    	<table border="0" cellspacing="0" cellpadding="0" class="tbl_domestic" summary="���������� �ֿ���Ǹſ� ���� ǥ">
                                        <caption>��������</caption>
                                        <colgroup>
                                            <col width="50%" />
                                            <col width="25%" />
                                            <col width="25%" />
                                        </colgroup>										  
                                        <tbody>                                           
                                        <tr>
                                             <th scope="row" class="left"><a href="http://www.petronet.co.kr/" target="_blank" title="��â"><%=petrob.getOil1Name() %></a></th>
                                             <td><%=petrob.getOil1Num() %></td>
                                             <td><%=petrob.getOil1Img() %></td>
                                        </tr>
                                        <tr>
                                             <th scope="row" class="left"><a href="http://www.petronet.co.kr/" target="_blank" title="��â"><%=petrob.getOils1Name() %></a></th>
                                             <td><%=petrob.getOils1Num() %></td>
                                             <td><%=petrob.getOils1Img() %></td>
                                        </tr>
                                        <tr>
                                            <th scope="row" class="left"><a href="http://www.petronet.co.kr/" target="_blank" title="��â"><%=petrob.getOils2Name() %></a></th>
											<td><%=petrob.getOils2Num() %></td>
											<td><%=petrob.getOils2Img() %></td>
                                        </tr>										 
                                        </tbody>
                                        </table>
                                    </div>
                                </li>
                                <li>
                                    <a href="#this">������ǰ</a>
                                    <div>
                                    	<p><% if (petrob.getRecentDt() != null && !petrob.getRecentDt().equals("")) { %><%=petrob.getRecentDt().substring(0,4) %>.<%=petrob.getRecentDt().substring(4,6) %>.<%=petrob.getRecentDt().substring(6,8) %><% } %> ($/bbl)</p>
                                    	<table border="0" cellspacing="0" cellpadding="0" class="tbl_domestic" summary="���������� �ֿ���Ǹſ� ���� ǥ">
                                        <caption>�ֿ���Ǹ�</caption>
                                        <colgroup>
                                        <col width="50%" />
                                        <col width="25%" />
                                        <col width="25%" />
                                        </colgroup>										  
                                        <tbody>
										<tr>
											<td scope="row"><a href="http://www.petronet.co.kr/" target="_blank" title="��â"><%=petrob.getOilp1Name() %></a></td>
											<td><%=petrob.getOilp1Num() %></td>
											<td><%=petrob.getOilp1Img() %></td>
										</tr>
										<tr>
											<td scope="row"><a href="http://www.petronet.co.kr/" target="_blank" title="��â"><%=petrob.getOilp2Name() %></a></td>
											<td><%=petrob.getOilp2Num() %></td>
											<td><%=petrob.getOilp2Img() %></td>
										</tr>
										<tr>
											<td scope="row"><a href="http://www.petronet.co.kr/" target="_blank" title="��â"><%=petrob.getOilp3Name() %></a></td>
											<td><%=petrob.getOilp3Num() %></td>
											<td><%=petrob.getOilp3Img() %></td>
										</tr>   
                                        </tbody>
                                        </table>
                                    </div>
                                </li>
                            </ul>
                        </div>
                        <a href="http://www.petronet.co.kr/v3/index.jsp" target="_blank" title="��â" class="btn_more"><span class="bline">������</span></a>
                    </li>
                </ul>
            </div>
            <!-- //main_oil -->
            
			<!-- main_mining -->
            <div class="main_mining">
            	<h3>�ؿܱ�����</h3>
                <div>
                	<select class="main_minings" id="main_minings" name="main_minings" title="������ �����ϼ���">
                        <option value="">������ �����ϼ���</option>
                        <option value="/sub03/sub03_2_2.jsp">����������Ȳ�� ��ü����</option>                      
                        
						<option value="/sub03/sub03_2_2_nigeria_321_323.jsp">���������� OPL321 &amp; ���������� OPL323</option>
						<option value="/sub03/sub03_2_2_libya.jsp">����� Elephant</option>
						<option value="/sub03/sub03_2_2_ankor_sea_product.jsp">�̱� Ankor</option>
						<option value="/sub03/sub03_2_2_eagle_ford.jsp">�̱� Eagle Ford</option>
						<option value="/sub03/sub03_2_2_ep_energy.jsp">�̱� EP energy</option>
						<option value="/sub03/sub03_2_2_venezuela.jsp">���׼����� Onado</option>
						<option value="/sub03/sub03_2_2_vietnam_11_2.jsp">��Ʈ�� 11-2</option>
						<option value="/sub03/sub03_2_2_vietnam_15_1.jsp">��Ʈ�� 15-1</option>
						<option value="/sub03/sub03_2_2_dana.jsp">���� Dana</option>
						<option value="/sub03/sub03_2_2_yemen_70.jsp">���� 70</option>
						<option value="/sub03/sub03_2_2_marib.jsp">���� LNG</option>
						<option value="/sub03/sub03_2_2_uznew.jsp">���Ű��ź West Fergana&amp;Chinabad</option>
						<option value="/sub03/sub03_2_2_hawlerarea.jsp">�̶�ũ Hawler</option>
						<option value="/sub03/sub03_2_2_ada.jsp">ī���彺ź Ada</option>
						<option value="/sub03/sub03_2_2_altius.jsp">ī���彺ź Altius</option>
						<option value="/sub03/sub03_2_2_KNOCCaspian.jsp">ī���彺ź KNOC Caspian </option>
						<option value="/sub03/sub03_2_2_harvest.jsp">ĳ���� Harvest</option>
						<option value="/sub03/sub03_2_2_peru_8.jsp">��� 8</option>
						<option value="/sub03/sub03_2_2_peru_tech.jsp">��� Savia Peru</option>
						<option value="/sub03/sub03_2_2_uae.jsp">U.A.E. �ƺδٺ� 3������ (Area 1,2,3)</option>
						                        
                    </select><a href="#this" onclick="javascript:goSite(2);" class="btn_go_link"><span class="hidden">�ٷΰ���</span></a>
                </div>
            </div>
            <!-- //main_mining -->            
            
            
            <div class="main_visual">
            	<div class="fade-visual">
                    <ul>
                    	<!--li><img src="/img/main/main_visual01.png" alt="" /></li-->
                        <li><img src="/img/main/main_visual02.png" alt="�����̹��� - �ٽ� ���! ��ġ�ִ� ����! Begin a New Journey, Embrace Valuable Challenges" /></li>
                        <!--li><img src="/img/main/main_visual03.png" alt="" /></li-->
                    </ul>
                </div>
                <div class="fade-indicator">
                    <!--button type="button"><span class="bline">1</span></button>
                    <button type="button"><span class="bline">2</span></button>
                    <button type="button"><span class="bline">3</span></button-->
                </div>
            
                <div class="fade-control">
                	<!--button type="button" class="fade-prev"><span class="bline">����</span></button>
                    <p><span class="cur_num">1</span>/<span class="tot_num">3</span></p>
                    <button type="button" class="fade-pause"><span class="bline">����</span></button>
                    <button type="button" class="fade-resume"><span class="bline">���</span></button>
                    <button type="button" class="fade-next"><span class="bline">����</span></button-->
                    <!--<button type="button" class="fade-prev">Prev</button>
                    <button type="button" class="fade-next">Next</button>
                    <button type="button" class="fade-toggle">Toggle</button>-->
                </div>
            </div>
            <!-- //main_visual -->
            
            <!-- main_banner01 -->
            <div class="main_banner01">
            	<a href="/sub11/sub11_9.jsp"><img src="/img/main/banner03.png" alt="��� �����鿡�� �ڿ������� ������ �ƴ� �ʼ�!" /></a>
            </div>
            <!-- //main_banner01 -->
            
            <!-- main_banner02 -->
            <!--div class="main_banner02">
            	<a href="/sub11/sub11_9.jsp"><img src="/img/main/banner02.png" alt="��� �����鿡�� �ڿ������� ������ �ƴ� �ʼ�!" /></a>
            </div-->
            <!-- //main_banner02 -->
            
            <!-- main_banner03 -->
            <div class="main_banner03">
            	<ul>
                	<li class="bg01"><a href="http://ebid.knoc.co.kr/supplier/index.jsp" target="_blank" title="��â">�������޽ý���</a></li>
                    <li class="bg02"><a href="http://www.opinet.co.kr/user/main/mainView.do" target="_blank" title="��â">���ǳ�</a></li>
                    <li class="bg03"><a href="http://www.petronet.co.kr/v3/index.jsp" target="_blank" title="��â">��Ʈ�γ�</a></li>
                    <li class="bg04"><a href="https://www.facebook.com/KNOC.PR" target="_blank" title="��â">���̽���</a></li>
                    <li class="bg05"><a href="http://blog.naver.com/knoc3" target="_blank" title="��â">��α�</a></li>
                    <li class="none"></li>
                </ul>
            </div>
            <!-- //main_banner03 -->           
           
            <!-- main_banner04 -->
            <div id="popupzone" class="main_banner04">
            	<h3>�˾���</h3>
            	<div class="main_banner04_area">
                    <ul>
<%
				ArrayList pop_al = PopMa.getPopup();
				if (pop_al.size() > 0) {
					Iterator popiter = pop_al.iterator();
					int p = 0;
					String imgName = "";
					while(popiter.hasNext()){
						String title = "";
						String linkUrl = "";
						String linkType = "";
						String altText = "";
						String popImage = "";
						PopupBean pb2 = (PopupBean)popiter.next();
	
						title = pb2.getTitle();
						linkUrl = pb2.getLinkUrl();
						linkType = pb2.getLinkType();
						altText = pb2.getAlttext();
						popImage = pb2.getNewFilename();
						p++;
						
						if(p == 1){
							imgName = "/images/2013/pop_no0"+p+"_on.gif";
						}else{
							imgName = "/images/2013/pop_no0"+p+"_off.gif";
						}
						
						boolean notUseLink = false;
						
						if(linkUrl == null || "".equals(linkUrl) || "null".equals(linkUrl) //linkUrl�� ���� ��� ��ũ��� ����
								|| pb2.getNo() == 118){ //8���˾���(2013 ������ȣ�� ��)�� ���ؼ� ��ũ��� ����
							notUseLink = true;
						}
						
						if(!notUseLink && linkUrl.indexOf("http://") == -1 && linkUrl.indexOf("https://") == -1){
							linkUrl = "http://" + linkUrl;
						}
			%>
				<li>
					<%if(notUseLink){ %>
					<img src="http://www.knoc.co.kr/upload/POPUP/<%=popImage %>" alt="<%=title %>" width="268px" height="110px" /></a>
					<%}else{ %>
						<a href="<%=linkUrl %>"  title="<%=title %> ��â���� �̵�" target="<%=linkType %>"><img src="http://www.knoc.co.kr/upload/POPUP/<%=popImage %>" alt="<%=title %>" width="268px" height="128px" /></a>
					<%} %>
				</li>
				<%
					}
				}
				%>			
                    </ul>
                    
                </div>
                <div class="roll_control">
                    <button class="banner_prev"><span class="bline">����</span></button>
                    <p><span class="cur_num">1</span>/<span class="tot_num"><%=pop_al.size()%></span></p>
                    <button class="banner_next"><span class="bline">����</span></button>
                    <button class="banner_pause"><span class="bline">����</span></button>
					<button class="banner_play"><span class="bline">���</span></button>
                </div>

				<div class="bg_popupzone"></div>
            </div>
            <!-- //main_banner04 -->            
            

            <!-- main_banner05 -->
            <div class="main_banner05">
            	<ul>
                	<li class="img01">
                    	<a href="/sub03/sub03_1_1.jsp">
                        	<span class="img_area"></span>
                            ��������� ���
                        </a>
                    </li>
                    <li class="img02 on">
                    	<a href="/sub03/sub03_2_1.jsp">
                        	<span class="img_area"></span>
                            �ؿܻ��
                        </a>
                    </li>
                    <li class="img03">
                    	<a href="/sub03/sub03_4_1_1.jsp">
                        	<span class="img_area"></span>
                            ���������� ��<br />���뱸������
                        </a>
                    </li>
                    <li class="img04">
                    	<a href="/sub03/sub03_5_1.jsp">
                        	<span class="img_area"></span>
                            ���߼����
                        </a>
                    </li>
                    <li class="img05">
                    	<a href="/sub03/sub03_3_1.jsp">
                        	<span class="img_area"></span>
                            �Ǽ����
                        </a>
                    </li>
                    <li class="img06">
                    	<a href="/sub03/sub03_6_1.jsp">
                        	<span class="img_area"></span>
                            ��������
                        </a>
                    </li>
                    <li class="img07">
                    	<a href="/sub03/sub03_7_1.jsp">
                        	<span class="img_area"></span>
                            ��Ưȸ��
                        </a>
                    </li>
                </ul>
            </div>
            <!-- //main_banner05 -->
            
            <!-- main_banner06 -->
            <div class="main_banner06">
            	<ul>
                	<li class="bg01">
                    	<a href="/sub11/sub11_2.jsp">
                        	<span></span>
                            ���䴺��
                        </a>
                    </li>
                    <li class="bg02">
                    	<a href="/sub11/sub11_3.jsp">
                        	<span></span>
                            ȫ��������
                        </a>
                    </li>
                    <li class="bg03">
                    	<a href="/sub11/sub11_5_4.jsp">
                        	<span></span>
                            �纸
                        </a>
                    </li>
                    <li class="bg04">
                    	<a href="/sub05/sub05_12.jsp">
                        	<span></span>
                            ����������ǥ
                        </a>
                    </li>
                    <li class="bg05">
                    	<a href="/sub04/sub04_8_1.jsp">
                        	<span></span>
                            �˶�������
                        </a>
                    </li>
                    <li class="bg06">
                    	<a href="/sub04/sub04_2.jsp">
                        	<span></span>
                            ������
                        </a>
                    </li>
                    <li class="bg07">
                    	<a href="/sub04/sub04_3.jsp">
                        	<span></span>
                            ������/����
                        </a>
                    </li>
                    <li class="bg08">
                    	<a href="/sub04/sub04_5.jsp">
                        	<span></span>
                            ���ο�/�Ű�
                        </a>
                    </li>
                    <li class="bg09">
                    	<a href="/sub02/sub02_2_1_7.jsp">
                        	<span></span>
                            ���
                        </a>
                    </li>
                    <li class="bg10">
                    	<a href="/sub02/sub02_2_1_8_list.jsp">
                        	<span></span>
                            ��.��������
                        </a>
                    </li>
                    <li class="bg11">
                    	<a href="/sub02/sub02_2_6_10_4.jsp">
                        	<span></span>
                            ����������
                        </a>
                    </li>
                    <li class="bg12">
                    	<a href="http://www.alio.go.kr/popSusi.do?apbaId=C0214&reportFormRootNo=43006" target="_blank" title="��â">
                        	<span></span>
                            ��ü������
                        </a>
                    </li>
                    <li class="bg13">
                    	<a href="http://ebid.knoc.co.kr/supplier/contents/optcont/cnts_list_optcont_frm.jsp" target="_blank" title="��â">
                        	<span></span>
                            ���ǰ����������
                        </a>
                    </li>
                    <li class="none"></li>
                </ul>
            </div>
            <!-- //main_banner06 -->
					
        </div>
        <!-- //main_contents -->
    </div>
	<!-- footer -->
    <div id="footer">
		<!-- footer_banner -->
    	<div class="footer_banner">
        	<div class="footer_banner_area">
                <ul>
                   	<%
						ArrayList bannerList = BannerMa.getBanner("KOR");
						Iterator bannerIt = bannerList.iterator();
						while(bannerIt.hasNext()){
							BannerBean bb = (BannerBean)bannerIt.next();
					%>
						<li><a href="<%=bb.getLinkUrl()%>" target="<%=bb.getLinkType()%>" title="<%=bb.getAlttext()%>"><img src="/upload/BANNER/<%=bb.getNewFilename()%>" width="112" height="30" alt="<%=bb.getAlttext()%>" /></a></li>
					<%} %>
                </ul>
            </div>
            <div class="roll_control">
                <button class="footer_banner_prev"><span class="bline">����</span></button>
                <button class="footer_banner_next"><span class="bline">����</span></button>
            </div>
            
        </div>
		<!-- //footer_banner -->
        <!-- footer_wrap -->
        <div class="footer_wrap">
        	<p class="footer_qm">
            	<a href="/member/privacy.jsp">��������ó����ħ</a>
                <span class="arrow">I</span>
                <a href="/member/mail.jsp">�̸��Ϲ��ܼ����ź�</a>
                <span class="arrow">I</span>
                <a href="/sub01/sub01_9.jsp">ã�ƿ��ô±�</a>
            </p>
            <p class="addr">
            	��� �Ż�� �ּ� : (�� : 44538) ��걤���� �߱� ������ 305 �ѱ���������<span class="arrow">I</span><span class="tel">��ǥ��ȭ 052-216-2114</span><span class="arrow">I</span>�ѽ� 052-216-5900
            </p>
            <p class="copy">
            	COPYRIGHT (C) BY KOREA NATIONAL OIL CORPORATION. ALL RIGHTS RESERVED.
            </p>
            <div class="qr"><img src="/img/common/qr.png" alt="qr�ڵ�" /></div>
        </div>
		<!-- //footer_wrap -->
    </div>
	<!-- //footer -->
</div>
<!-- //wrap -->
</body>
</html>