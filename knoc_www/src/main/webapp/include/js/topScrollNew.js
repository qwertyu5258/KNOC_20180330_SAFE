/*���޴� ��ũ��Ʈ*/
var viewstart; // ���� ���� (�޴��� ������ ''�ȼ� ������ ���� �������ϴ�) 
var viewscroll = 100; // ��ũ�ѽ� ������ ���ʰ� �������� �Ÿ�
var viewbottom = 80; // ��ũ�ѽ� ������ �ٴڰ�
var quickbase = 500; // ��ũ�� ������ġ
var activatespeed = 10; 
var scrollspeed = 20; 

var quicktimer;
var quick_obj;

var bottomlimitMax = 300;

function refresh_quick(){
	var quickstartpoint;
	var quickendpoint;
	bottomlimit = document.documentElement.scrollHeight - viewbottom;
	if(bottomlimit > bottomlimitMax) bottomlimit = bottomlimitMax;
	
	quickstartpoint = parseInt(quick_obj.style.top, 10);
	quickendpoint = Math.max(document.documentElement.scrollTop, document.body.scrollTop) + viewscroll;
	if (quickendpoint < viewstart){
		quickendpoint = viewstart;
	}
	if (quickendpoint > bottomlimit){
		quickendpoint = bottomlimit;
	}
	if (quickstartpoint != quickendpoint){
		stmnScrollAmount = Math.ceil( Math.abs( quickendpoint - quickstartpoint ) / 15 );
		quick_obj.style.top = parseInt(quick_obj.style.top, 10) + ( ( quickendpoint < quickstartpoint ) ? -stmnScrollAmount : stmnScrollAmount ) + 'px';
	}
	quicktimer = setTimeout("refresh_quick();", activatespeed);
}
function initializequick(obj,left,starttop,p_bottomlimitMax){
	quick_obj = document.getElementById(obj);
	viewstart = starttop;
	quick_obj.style.position = 'absolute';
	quick_obj.style.left = left + 'px';
	quick_obj.style.top = document.body.scrollTop + quickbase + 'px';
	bottomlimitMax = p_bottomlimitMax;
	refresh_quick();
}
function ScrollTop(){
	self.window.scroll(0,0);
}
