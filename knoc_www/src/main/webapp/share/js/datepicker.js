$(function(){
	// �޷� ��ũ��Ʈ ����
	$.datepicker.regional["ko"] = {
		closeText: "�ݱ�",
		prevText: "������",
		nextText: "������",
		currentText: "����",
		changeMonth: true,
		changeYear: true,
		showButtonPanel: false,
		yearRange: "c-99:c+99",
		maxDate: "+"+365*10+"d",
		minDate: "-"+365*10+"d",
		monthNames: ["1��","2��","3��","4��","5��","6��",
		"7��","8��","9��","10��","11��","12��"],
		monthNamesShort: ["1��","2��","3��","4��","5��","6��",
		"7��","8��","9��","10��","11��","12��"],
		dayNames: ["�Ͽ���","������","ȭ����","������","�����","�ݿ���","�����"],
		dayNamesShort: ["��","��","ȭ","��","��","��","��"],
		dayNamesMin: ["��","��","ȭ","��","��","��","��"],
		weekHeader: "Wk",
		dateFormat: "yy-mm-dd",
		firstDay: 0,
		isRTL: false,
		showMonthAfterYear: true,
		yearSuffix: "",
		showOn: "button",
		buttonImage: "/share/js/jquery-ui-1.11.1.custom/images/ico_calendar.gif",
		buttonImageOnly: true,
		buttonText: "Select date"
	};
	$.datepicker.setDefaults($.datepicker.regional["ko"]);
	 
	$("input.date").datepicker(); 
});