<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=euc-kr" />
<link rel="stylesheet" type="text/css" href="/survey/survey.css" />
<title>�ѱ��������� ����</title>
<script type="text/javascript" src="/include/jquery.js"></script>

<script type="text/javascript"> 
function checkInput(p_name){
	
	$('input:radio[name='+p_name+']').attr("checked", "");
	
}


function goSubmit(){
	//������
	var radioChecks = ['a1', 'a3', 'a5', 'a6', 'a7', 'c1', 'c2', 'c3', 'c4', 'c5', 'c6', 'c7', 'c8', 'c9'];	
	//�ְ���
	var inputChecks = ['b8', 'b9', 'b10'];
	
	//��,�ְ���
	var radioChecks2 = ['a2', 'a4'];
	var inputChecks2 = ['b2', 'b4'];
	
	if($('#user_id').val() == ''){
		alert('���̵� �Է��� �ּ���.');
		return;
	}
	
	
	for(var i=0; i<radioChecks.length; i++){

		if(!$(':input:radio[name='+radioChecks[i]+']:checked').val()) {
			alert('�������׿� ��� ���ϼž��մϴ�.');
			$('input:radio[name='+radioChecks[i]+']').focus();			
			return;
		}		
	}
	
	
	
	for(var i=0; i<inputChecks.length; i++){		
		if($('input:text[name='+inputChecks[i]+']').val() == ""){			
			alert('�������׿� ��� ���ϼž��մϴ�.');
			$('input:text[name='+inputChecks[i]+']').focus();			
			return;
		}
	}
	
	
	for(var i=0; i<inputChecks2.length; i++){		
		if($('input:text[name='+inputChecks2[i]+']').val() == "" && !$(':input:radio[name='+radioChecks2[i]+']:checked').val()){			
			alert('�������׿� ��� ���ϼž��մϴ�.');			
			$('input:text[name='+inputChecks2[i]+']').focus();			
			return;
		}
	}
	
	
	//a1
	if($(':input:radio[name=a1]:checked').val() == 1 || $(':input:radio[name=a1]:checked').val() == 2 || $(':input:radio[name=a1]:checked').val() == 3){
		$('input:text[name=b1_2]').attr("value", "");
		if($('input:text[name=b1_1]').val() == "" && !$(':input:radio[name=a1_1]:checked').val()){			
			alert('�������׿� ��� ���ϼž��մϴ�.');			
			$('input:text[name=b1_1]').focus();		
			
			return;
		}
	}else{
		$('input:radio[name=a1_1]').attr("checked", "");
		$('input:text[name=b1_1]').attr("value", "");
		if($('input:text[name=b1_2]').val() == ""){			
			alert('�������׿� ��� ���ϼž��մϴ�.');
			$('input:text[name=b1_2]').focus();			
			return;
		}
	}
	
	//c2
	if($(':input:radio[name=c2]:checked').val() == 1 || $(':input:radio[name=c2]:checked').val() == 2 || $(':input:radio[name=c2]:checked').val() == 3){
		$('input:radio[name=c2_2]').attr("checked", "");
		$('input:text[name=d2_2]').attr("value", "");
		if($('input:text[name=d2_1]').val() == "" && !$(':input:radio[name=c2_1]:checked').val()){			
			alert('�������׿� ��� ���ϼž��մϴ�.');			
			$('input:text[name=d2_1]').focus();		
			
			return;
		}
	}else{
		$('input:radio[name=c2_1]').attr("checked", "");
		$('input:text[name=d2_1]').attr("value", "");
		if($('input:text[name=d2_2]').val() == "" && !$(':input:radio[name=c2_2]:checked').val()){			
			alert('�������׿� ��� ���ϼž��մϴ�.');			
			$('input:text[name=d2_2]').focus();		
			
			return;
		}
	}
	//c3
	if($(':input:radio[name=c3]:checked').val() == 1 || $(':input:radio[name=c3]:checked').val() == 2 || $(':input:radio[name=c3]:checked').val() == 3){
		$('input:radio[name=c3_2]').attr("checked", "");
		$('input:text[name=d3_2]').attr("value", "");
		if($('input:text[name=d3_1]').val() == "" && !$(':input:radio[name=c3_1]:checked').val()){			
			alert('�������׿� ��� ���ϼž��մϴ�.');			
			$('input:text[name=d3_1]').focus();		
			
			return;
		}
	}else{
		$('input:radio[name=c3_1]').attr("checked", "");
		$('input:text[name=d3_1]').attr("value", "");
		if($('input:text[name=d3_2]').val() == "" && !$(':input:radio[name=c2_2]:checked').val()){			
			alert('�������׿� ��� ���ϼž��մϴ�.');			
			$('input:text[name=d3_2]').focus();		
			
			return;
		}
	}
	
	//c4
	if($(':input:radio[name=c4]:checked').val() == 1 || $(':input:radio[name=c4]:checked').val() == 2 ){
		if($('input:text[name=d4_1]').val() == "" && !$(':input:radio[name=c4_1]:checked').val()){			
			alert('�������׿� ��� ���ϼž��մϴ�.');			
			$('input:text[name=d4_1]').focus();		
			
			return;
		}
	}else{
		$('input:radio[name=c4_1]').attr("checked", "");
		$('input:text[name=d4_1]').attr("value", "");		
	}
	
	
	if($('#area').val() == ''){
		alert('�������׿� ��� ���ϼž��մϴ�.');			
		$('#area').focus();			
		return;
	}
	if(confirm("������ ���� �Ͻðڽ��ϱ�?")){
		$('#form01').submit();
	}
	
}


function checkRideo(p_id){
	$('input:text[name='+p_id+']').attr("value", "");
}

function questionView(p_no){
	if(p_no == 1){
		$("#question1").show();
		$("#question2").hide();
	}else{
		$("#question2").show();
		$("#question1").hide();
	}	
}

function questionView2(p_no){
	if(p_no == 1){
		$("#question_1_1").show();
		$("#question_1_2").hide();
	}else{
		$("#question_1_2").show();
		$("#question_1_1").hide();
	}	
}

function questionView3(p_no){
	if(p_no == 1){
		$("#question_2_1").show();
		$("#question_2_2").hide();
	}else{
		$("#question_2_2").show();
		$("#question_2_1").hide();
	}	
}

function questionView4(p_no){
	if(p_no == 1){
		$("#question_3_1").show();
		
	}else{
		$("#question_3_1").hide();
	}	
}
</script>
</head>
<body>
	
	<div id="wrap">		
		<div id="header">
			<div class="blind">
				<h1>���� ���信 �ռ�</h1>
				<p>
					�ȳ��Ͻʴϱ�? <br />
					�ѱ���������� ������ ������ ������ ���� ���ο��� ����� ������� �����ϴ� �������ڱ���Դϴ�.
					�� �������� �ѱ����������� ��ü���� �̹���, �����ȭ�� ���� �ǰ߼����� ���� �츮 ������ �����ȭ ���������� ����ϱ� ���� ������
					���Դϴ�. <br /><br />
					�ѱ��������� ȫ������
				</p>
			</div>
			<p>
				<img src="/survey/images/top_img.gif" alt="���� ���信 �ռ� �ȳ��Ͻʴϱ�? �ѱ���������� ������ ������ ������ ���� ���ο��� ����� ������� �����ϴ� �������ڱ���Դϴ�. 
					�� �������� �ѱ����������� ��ü���� �̹���, �����ȭ�� ���� �ǰ߼����� ���� �츮 ������ �����ȭ ���������� ����ϱ� ���� ������ ���Դϴ�.
					�������� �ǰ߰� ���̵� ������ ������ �߿��� ���� �ڷ�� Ȱ��˴ϴ�.
					�ƿ﷯ �� ������ ���뿡 ���� ������ �ﰡ�Ͽ� �ֽ� ���� ��ε帳�ϴ�.
					�����մϴ�.
					�ѱ��������� ȫ������" />
			</p>
		</div><!-- header end -->
		
		<hr />
<form action="/survey/surveyOk.jsp" id="form01" name="form01" method="post">		
		<div id="contents">
			<div class="user_id">
			<h3>���̵� Ȯ��</h3>
			<fieldset>
				<legend>���̵� Ȯ��</legend>
				
				<label for="user_id">
					���� �� ������ ī�� ���̵� ���� �ּ���<br />
					<span class="point">* �� ������ ���� ���� ������ Ȱ��� �������� ��Ȯ�� ������ �ֽñ� �ٶ��ϴ�.</span>
				</label>
				<p><input type="text" id="user_id" name="user_id" maxlength="30" title="���̵� �Է����ּ���" class="s_id" /></p> 
			</fieldset>
			</div><!-- user_id end -->
			
			<hr />
			
			<div class="brand_image">
			<h3>�̹������� - �ѱ���������</h3>
			<fieldset>
				<legend>�̹������� - �ѱ���������</legend>
				
				<h5>1. �ѱ� �������翡 ���� �� �˰� �ִ�.</h5>
				<p class="t_01">
					<input type="radio" name="a1" id="question_01_1" value="1" onclick="questionView(1)"/><label for="question_01_1">�� �˰� �ִ�.</label> 
					<input type="radio" name="a1" id="question_01_2" value="2" onclick="questionView(1)"/><label for="question_01_2">�˰� �ִ�.</label>
					<input type="radio" name="a1" id="question_01_3" value="3" onclick="questionView(1)"/><label for="question_01_3">�����̴�.</label>
					<input type="radio" name="a1" id="question_01_4" value="4" onclick="questionView(2)"/><label for="question_01_4">�𸥴�.</label>
					<input type="radio" name="a1" id="question_01_5" value="5" onclick="questionView(2)"/><label for="question_01_5">���� �𸥴�.</label>
				</p>
				<div id="question1" style="display: none">
				<h6>1_1. (�� ���׿��� 1-3�� ���� ��) � ��θ� ���� �˰� �Ǿ���</h6>
				<p class="t_02">
					<input type="radio" name="a1_1" id="news" value="1" onclick="checkRideo('b1_1');"/><label for="news">�ϰ��� �Ź�</label> 
					<input type="radio" name="a1_1" id="tv" value="2" onclick="checkRideo('b1_1');"/><label for="tv">TV</label>
					<input type="radio" name="a1_1" id="internet" value="3" onclick="checkRideo('b1_1');"/><label for="internet">���ͳ� ���</label>
					<input type="radio" name="a1_1" id="home" value="4" onclick="checkRideo('b1_1');"/><label for="home">���� Ȩ������</label>
					<input type="radio" name="a1_1" id="family" value="5" onclick="checkRideo('b1_1');"/><label for="family">���� �� ����</label><br />
					<span class="etc"><label for="etc_01">��Ÿ</label> <input type="text" id="etc_01" title="��Ÿ" maxlength="30" class="s_etc" name="b1_1" onkeypress="checkInput('a1_1');" onkeydown="checkInput('a1_1');"/></span>
				</p>
				</div>
				<div id="question2" style="display: none">
				<h6>
					1_2. (1�� ���׿��� 4-5�� ���� ��) �� �𸥴ٸ� ���ѱ��������硱 �ϸ� <br />
					���� ���� �������� �̹����� �������� ���� �ֽñ� �ٶ��ϴ�.<span class="ex">(Ex. ���߼�, ����, �縷, �±ر�, M&amp;A ��)</span>
				</h6>
				<p class="t_02"><input type="text" title="������ �����ּ���" maxlength="100" class="s_cont" name="b1_2"/></p>
				</div>
				
				
				<h5>2. �ѱ� ���������� �ֿ� ����оߴ� �����̶�� �ν��ϰ� �ִ���?</h5>
				<p class="t_01">
					<input type="radio" name="a2" id="re_01" value="1" onclick="checkRideo('b2')"/><label for="re_01">�������� ���</label> 
					<input type="radio" name="a2" id="re_02" value="2" onclick="checkRideo('b2')"/><label for="re_02">�������� ���</label>
					<input type="radio" name="a2" id="re_03" value="3" onclick="checkRideo('b2')"/><label for="re_03">�������� ����</label>
					<input type="radio" name="a2" id="re_04" value="4" onclick="checkRideo('b2')"/><label for="re_04">������ �ڱ� ����</label><br />
					<span class="etc"><label for="etc_02">��Ÿ</label> <input type="text" id="etc_02" title="��Ÿ" maxlength="30" class="s_etc" name="b2" onkeypress="checkInput('a2');" onkeydown="checkInput('a2');"/></span>
				</p>
				
				
				<h5>3. ������� �ѱ��������簡 ���� �ñ��ϰ� �ؾ� �� ���� �����̶�� �����ϴ���?</h5>
				<p class="t_01">
					<input type="radio" name="a3" id="urgent_01" value="1"/><label for="urgent_01">û��Ǿ� �ؼҿ� �⿩</label> 
					<input type="radio" name="a3" id="urgent_02" value="2"/><label for="urgent_02">�ΰ������ ���� ���� �߽��� �濵 ü�� ����</label><br />
					<input type="radio" name="a3" id="urgent_03" value="3"/><label for="urgent_03">�����濵�� �԰��� ��ȸ�� ���� �߱�</label>
					<input type="radio" name="a3" id="urgent_04" value="4"/><label for="urgent_04">��ȸ���� �� ��ȸ�� ���� ����</label>
				</p>
				
				<h5>4. �ѱ���������� �����ο��� ��� �޴� ������ ��������ȸ�硯���� ������ ���� �� �Դϴ�. �������� ������� ���߱� ���ؼ� ���� �켱������ �ؾ� �� ���� �������� �����ϴ���?</h5>
				<p class="t_01">
					<input type="radio" name="a4" id="growth_01" value="1" onclick="checkRideo('b4')"/><label for="growth_01">�����η� �� ����� Ȯ��</label> 
					<input type="radio" name="a4" id="growth_02" value="2" onclick="checkRideo('b4')"/><label for="growth_02">�μ��պ��� ���� ����ȭ</label><br />
					<input type="radio" name="a4" id="growth_03" value="3" onclick="checkRideo('b4')"/><label for="growth_03">������ ��������</label>
					<input type="radio" name="a4" id="growth_04" value="4" onclick="checkRideo('b4')"/><label for="growth_04">�����濵 �� ��ȸ����</label><br />
					<span class="etc"><label for="etc_03">��Ÿ</label> <input type="text" id="etc_03" title="��Ÿ" maxlength="30" class="s_etc" name="b4" onkeypress="checkInput('a4');" onkeydown="checkInput('a4');"/></span>
				</p>
				
				
				<h5>5. �ѱ����������� �ٽɰ�ġ�� ����, ������ ����, ���, ���� �Դϴ�. �� �߿����� ����� ���� �� �����Ѵٰ� �����ϴ� ��ġ��?</h5>
				<p class="t_01">
					<input type="radio" id="value_01" name="a5" value="1"/><label for="value_01">����</label> 
					<input type="radio" id="value_02" name="a5" value="2"/><label for="value_02">������ ����</label>
					<input type="radio" id="value_03" name="a5" value="3"/><label for="value_03">���</label>
					<input type="radio" id="value_04" name="a5" value="4"/><label for="value_04">����</label>
				</p>
				
				<h5>6. ��� ��ü�� ���� ������ �ѱ��������� �����鿡 ���� �̹�����?</h5>
				<p class="t_01">
					<input type="radio" name="a6" id="image_01" value="1"/><label for="image_01">�������̴�</label> 
					<input type="radio" name="a6" id="image_02" value="2"/><label for="image_02">�������̸� �������̴�</label><br />
					<input type="radio" name="a6" id="image_03" value="3"/><label for="image_03">�������̸� �������̴�</label>
					<input type="radio" name="a6" id="image_04" value="4"/><label for="image_04">���� ����� ���� ���̰� ���� �� �𸣰ڴ�</label>
				</p>
				
				<h5>7. �ѱ����������� �ɺ��� ����� ���̾Ƹ��� ���������� Ȯ��Ǵ� ���� ��¡�ϰ� ÷�� ������� ��Ÿ���� ������ ��������� ����� �ϰ� �ֽ��ϴ�. �Ϲ� ������ ������ �ɺ��� ���Ͽ� ���������� �ϴ� �κ���?</h5>
				<p class="simbol"><img src="/survey/images/knoc_logo.gif" alt="simbol" /></p>
				<p class="t_01_img">
					<input type="radio" name="a7" id="simbol_01" value="1"/><label for="simbol_01">������ ���Ƽ� ������ �ʿ䰡 ����</label> 
					<input type="radio" name="a7" id="simbol_02" value="2"/><label for="simbol_02">���� ����</label><br />
					<input type="radio" name="a7" id="simbol_03" value="3"/><label for="simbol_03">���̾Ƹ�� ���</label>
					<input type="radio" name="a7" id="simbol_04" value="4"/><label for="simbol_04">����/��� ���</label>
				</p>
				
				<h5>
					8. ���ϲ��� �����ϴ� �� �ѱ��������硱 �� �̹��� �߿��� �������̶� �ΰ��� �ʿ��� ���� �ִٸ� �����ֽñ� �ٶ��ϴ�.<br />
					<span class="ex">(Ex. ������ ���, ����������, ���ְ���, ������������, M&amp;A ��)</span>
				</h5>
				<p class="t_01"><input type="text" title="������ �����ּ���" maxlength="100" class="s_cont" name="b8"/></p>
				
				<h5>
					9. ���ϲ��� �����ϴ� �� �ѱ��������硱 �� �̹��� �߿��� �������̶� �ٲٰ� ���� ���� �ִٸ� �����ֽñ� �ٶ��ϴ�.<br />
					<span class="ex">(Ex.��������, ������, �ұԸ�, �������� ��)</span>
				</h5>
				<p class="t_01"><input type="text" title="������ �����ּ���" maxlength="100" class="s_cont" name="b9"/></p>
				
				<h5>
					10. �ѱ���������� ���� �� ��︮�� ĳġ�������� ���̵� �����ֽñ� �ٶ��ϴ�. *���� �Ǵ� ����� �����ֽñ� �ٶ��ϴ�.
				</h5>
				<p class="t_01"><input type="text" title="������ �����ּ���" maxlength="100" class="s_cont" name="b10"/></p>
				
			</fieldset>
			
			</div><!-- brand_image end -->
			
			<hr />
			
			<div class="preference">
				<h3>��ȣ������ - �ѱ���������</h3>
				<fieldset>
				<legend>��ȣ�� ���� - �ѱ� ��������</legend>
				
				<h5>1. ������ �б�(����б�, ���б�, ���п� etc) ������?</h5>
				<p class="t_01">
					<input type="radio" name="c1" id="major_01" value="1"/><label for="major_01">����/�ڿ���</label> 
					<input type="radio" name="c1" id="major_02" value="2"/><label for="major_02">����/���</label>
					<input type="radio" name="c1" id="major_03" value="3"/><label for="major_03">��迭</label>
					<input type="radio" name="c1" id="major_04" value="4"/><label for="major_04">��ü�� �� ��Ÿ</label>
				</p>
				
				<h5>2. �ѱ���������� ���� ����(ex. ����ȭ�б�� ��)��� ������ �� �����ϱ� ���� ���塯�̶�� �����Ѵ�.</h5>
				<p class="t_01">
					<input type="radio" name="c2" id="com_01" value="1" onclick="questionView2(1);"/><label for="com_01">�ſ� �׷���</label> 
					<input type="radio" name="c2" id="com_02" value="2" onclick="questionView2(1);"/><label for="com_02">�׷���</label>
					<input type="radio" name="c2" id="com_03" value="3" onclick="questionView2(1);"/><label for="com_03">�����̴�</label>
					<input type="radio" name="c2" id="com_04" value="4" onclick="questionView2(2);"/><label for="com_04">�׷��� �ʴ�</label>
					<input type="radio" name="c2" id="com_05" value="5" onclick="questionView2(2);"/><label for="com_05">�ſ� �׷��� �ʴ�</label>
				</p>
				<div style="display: none;" id="question_1_1">
				<h6>2-1. (�� ���׿��� 1~3�� ���ý�) �׷��ٰ� �����ϴ� ������?</h6>
				<p class="t_02">
					<input type="radio" name="c2_1" id="cause_01" value="1" onclick="checkRideo('d2_1')"/><label for="cause_01">���� ������</label> 
					<input type="radio" name="c2_1" id="cause_02" value="2" onclick="checkRideo('d2_1')"/><label for="cause_02">���� ���ɼ�</label><br />
					<input type="radio" name="c2_1" id="cause_03" value="3" onclick="checkRideo('d2_1')"/><label for="cause_03">�ֱ� ��� �߼��� ������̱� ������</label>
					<input type="radio" name="c2_1" id="cause_04" value="4" onclick="checkRideo('d2_1')"/><label for="cause_04">���� ��å�� �����ϴ� �ںν�</label><br />
					<span class="etc"><label for="etc_04">��Ÿ</label> <input type="text" id="etc_04" title="��Ÿ" maxlength="30" class="s_etc" name="d2_1"/></span>
				</p>
				</div>
				<div style="display: none;" id="question_1_2">
				<h6>2-2. (�� ���׿��� 4~5�� ���ý�) �׷��� ���� ������ ��������?</h6>
				<p class="t_02">
					<input type="radio" name="c2_2" id="cause1_01" value="1" onclick="checkRideo('d2_2')"/><label for="cause1_01">�������� ���Ƽ�</label> 
					<input type="radio" name="c2_2" id="cause1_02" value="2" onclick="checkRideo('d2_2')"/><label for="cause1_02">�ڿ����� ����� �����ؼ�</label><br />
					<input type="radio" name="c2_2" id="cause1_03" value="3" onclick="checkRideo('d2_2')"/><label for="cause1_03">���� ������ ���� �޿�/���� ������ ���� �� ���Ƽ�</label>
					<input type="radio" name="c2_2" id="cause1_04" value="4" onclick="checkRideo('d2_2')"/><label for="cause1_04">��������� ���������ϱ� ������</label><br />
					<span class="etc"><label for="etc_05">��Ÿ</label> <input type="text" id="etc_05" title="��Ÿ" maxlength="30" class="s_etc" name="d2_2"/></span>
				</p>
				</div>
				
				
				<h5>3. �ѱ���������� �ٸ� ������� ������ �� �����ϴ� ���� ���塯, ���Ի��ϰ� ���� ���塯 �̶�� �����Ѵ�.</h5>
				<p class="t_01">
					<input type="radio" name="c3" id="com1_01" value="1" onclick="questionView3(1);"/><label for="com1_01">�ſ� �׷���</label> 
					<input type="radio" name="c3" id="com1_02" value="2" onclick="questionView3(1);"/><label for="com1_02">�׷���</label>
					<input type="radio" name="c3" id="com1_03" value="3" onclick="questionView3(1);"/><label for="com1_03">�����̴�</label>
					<input type="radio" name="c3" id="com1_04" value="4" onclick="questionView3(2);"/><label for="com1_04">�׷��� �ʴ�</label>
					<input type="radio" name="c3" id="com1_05" value="5" onclick="questionView3(2);"/><label for="com1_05">�ſ� �׷��� �ʴ�</label>
				</p>
			
				
				
				<div style="display: none;" id="question_2_1">
				<h6>3-1. (�� ���׿��� 1~3�� ���ý�) � �������� �׷��ٰ� �����ϳ�?</h6>
				<p class="t_02">
					<input type="radio" name="c3_1" id="cause2_01" value="1" onclick="checkRideo('d3_1')"/><label for="cause2_01">�޿�/���������� ���� �� ���Ƽ�</label> 
					<input type="radio" name="c3_1" id="cause2_02" value="2" onclick="checkRideo('d3_1')"/><label for="cause2_02">�ؿܱٹ� ��ȸ�� ���Ƽ�</label>
					<input type="radio" name="c3_1" id="cause2_03" value="3" onclick="checkRideo('d3_1')"/><label for="cause2_03">�����ȭ�� ���� �� ���Ƽ�</label><br />
					<input type="radio" name="c3_1" id="cause2_04" value="4" onclick="checkRideo('d3_1')"/><label for="cause2_04">������ ���� �⿩���� ���Ƽ�</label>
					<input type="radio" name="c3_1" id="cause2_05" value="5" onclick="checkRideo('d3_1')"/><label for="cause2_05">�ɷ¸�ŭ ���޴� �������� ����� ���Ƽ�</label><br />
					<span class="etc"><label for="etc_06">��Ÿ</label> <input type="text" id="etc_06" name="d3_1" title="��Ÿ" maxlength="30" class="s_etc" onkeypress="checkInput('c3_1');" onkeydown="checkInput('c3_1');"/></span>
				</p>
				</div>
				
				<div style="display: none;" id="question_2_2">
				<h6>3-2. (�� ���׿��� 4~5�� ���ý�) �׷��� ���� ������?</h6>
				<p class="t_02">
					<input type="radio" name="c3_2" id="cause3_01" value="1" onclick="checkRideo('d3_2')"/><label for="cause3_01">�ڿ����� �� ���� �� ����� �����ؼ�</label> 
					<input type="radio" name="c3_2" id="cause3_02" value="2" onclick="checkRideo('d3_2')"/><label for="cause3_02">Ÿ ������� ���� �޿�/���� ������ ���Ƽ�</label><br />
					<input type="radio" name="c3_2" id="cause3_03" value="3" onclick="checkRideo('d3_2')"/><label for="cause3_03">�ؿܱٹ��� �Ⱦ</label>
					<input type="radio" name="c3_2" id="cause3_04" value="4" onclick="checkRideo('d3_2')"/><label for="cause3_04">�ɷ¸�ŭ ���޴� �������� ����� �ǰ��ؼ�</label><br />
					<span class="etc"><label for="etc_07">��Ÿ</label> <input name="d3_2" type="text" id="etc_07" title="��Ÿ" maxlength="30" class="s_etc" onkeypress="checkInput('c3_2');" onkeydown="checkInput('c3_2');"/></span>
				</p>
				</div>
				
				<h5>4. �ѱ���������� ������ �������ɼ��� ���� ����̶�� �����Ѵ�.</h5>
				<p class="t_01">
					<input type="radio" name="c4" id="com2_01" value="1" onclick="questionView4(1);"/><label for="com2_01">�ſ� �׷���</label> 
					<input type="radio" name="c4" id="com2_02" value="2" onclick="questionView4(1);"/><label for="com2_02">�׷���</label>
					<input type="radio" name="c4" id="com2_03" value="3" onclick="questionView4(2);"/><label for="com2_03">�����̴�</label>
					<input type="radio" name="c4" id="com2_04" value="4" onclick="questionView4(2);"/><label for="com2_04">�׷��� �ʴ�</label>
					<input type="radio" name="c4" id="com2_05" value="5" onclick="questionView4(2);"/><label for="com2_05">�ſ� �׷��� �ʴ�</label>
				</p>
				<div style="display: none;" id="question_3_1">
				<h6>4-1. (�� ���׿��� 1~2�� ���ý�) ���� ���ɼ��� ���� ����̶�� �����ϴ� ������?</h6>
				<p class="t_02">
					<input type="radio" name="c4_1" id="com3_01" value="1" onclick="checkRideo('d4_1')"/><label for="com3_01">�ؿ� ���� ����� �þ��</label> 
					<input type="radio" name="c4_1" id="com3_02" value="2" onclick="checkRideo('d4_1')"/><label for="com3_02">�ڿ������̶�� ���Ư�� ������</label><br />
					<input type="radio" name="c4_1" id="com3_03" value="3" onclick="checkRideo('d4_1')"/><label for="com3_03">�ؿ����� �� ������ȸ�� ���Ƽ�</label>
					<input type="radio" name="c4_1" id="com3_04" value="4" onclick="checkRideo('d4_1')"/><label for="com3_04">������ ����� ���� ������</label><br />
					<span class="etc"><label for="etc_08">��Ÿ</label> <input type="text" id="etc_08" title="��Ÿ" maxlength="30" class="s_etc" name="d4_1" onkeypress="checkInput('c4_1');" onkeydown="checkInput('c4_1');"/></span>
				</p>
				</div>
				
				<h5>5. �ѱ���������� ���� ������ �����ϱ� ���� �����̶�� �����Ѵ�.</h5>
				<p class="t_01">
					<input type="radio" name="c5" id="com4_01" value="1"/><label for="com4_01">�ſ� �׷���</label> 
					<input type="radio" name="c5" id="com4_02" value="2"/><label for="com4_02">�׷���</label>
					<input type="radio" name="c5" id="com4_03" value="3"/><label for="com4_03">�����̴�</label>
					<input type="radio" name="c5" id="com4_04" value="4"/><label for="com4_04">�׷��� �ʴ�</label>
					<input type="radio" name="c5" id="com4_05" value="5"/><label for="com4_05">�ſ� �׷��� �ʴ�</label>
				</p>
				
				<h5>6. �ѱ���������� �����鿡 ���� �ٹ�ȯ�� (�޿�, ���� ��)�� ���ٰ� �����Ѵ�.</h5>
				<p class="t_01">
					<input type="radio" name="c6" id="com5_01" value="1"/><label for="com5_01">�ſ� �׷���</label> 
					<input type="radio" name="c6" id="com5_02" value="2"/><label for="com5_02">�׷���</label>
					<input type="radio" name="c6" id="com5_03" value="3"/><label for="com5_03">�����̴�</label>
					<input type="radio" name="c6" id="com5_04" value="4"/><label for="com5_04">�׷��� �ʴ�</label>
					<input type="radio" name="c6" id="com5_05" value="5"/><label for="com5_05">�ſ� �׷��� �ʴ�</label>
				</p>
				
				<h5>7. �����������μ� �ѱ��������翡 �Ի����� ��� ȸ�簡 ������������ ����� �־����� �ϴ� �κ��� � �� �Դϱ�?</h5>
				<p class="t_01">
					<input type="radio" name="c7" id="com6_01" value="1" /><label for="com6_01">��� ���� ��ġ</label> 
					<input type="radio" name="c7" id="com6_02" value="2"/><label for="com6_02">�������� �����Ʒ�</label><br />
					<input type="radio" name="c7" id="com6_03" value="3"/><label for="com6_03">���� ������ ģ�а�</label>
					<input type="radio" name="c7" id="com6_04" value="4"/><label for="com6_04">���� ��Ȱ ���� �� �������� ��ġ ����</label>
				</p>
				
				<h5>8. ���ο����� �߾Ӱ� ������ �������� �����Ʒ� ������� ���������� ���� ���̸� �̿� ���� �ѱ���������� ���� ����걤���á��� �����Ͽ� ������ ���ο� �ô븦 �� ��ȹ�Դϴ�. �̿� ���ϴ� �츮������ �� ��߿� ������ �ǻ簡 �ִ���?</h5>
				<p class="t_01">
					<input type="radio" name="c8" id="com7_01" value="1"/><label for="com7_01">�ִ�</label> 
					<input type="radio" name="c8" id="com7_02" value="2"/><label for="com7_02">����</label>
					<input type="radio" name="c8" id="com7_03" value="3"/><label for="com7_03">�� �𸣰ڴ�</label>
				</p>
				
				<h5>9. �ѱ���������� ��������μ� ��ȸ�� å�� �ϼ��� ���� ���ҿ��̿� ���⡯, ��������ȸ ���塯, ���м���ȭ ���, ���ؿܻ�ȸ ���塯 �� ��ȸ���� 4�� �ٽɺо߷� �����Ͽ� ������ ����� �濵�� �����ϰ� �ֽ��ϴ�. �� �� �ѱ��������簡 ��������μ� �� �� ��ȭ�ؾ� �Ѵٰ� �����Ǵ� �κ��� �����?</h5>
				<p class="t_01">
					<input type="radio" name="c9" id="com8_01" value="1"/><label for="com8_01">�ҿ��̿� ����(���ų��� �� �ҿܰ��� ���� ��)</label> <br />
					<input type="radio" name="c9" id="com8_02" value="2"/><label for="com8_02">������ȸ ����(���� �ٹ�ȭ ���� ���� �� 1��1�� �ڸŰῬ ��)</label><br />
					<input type="radio" name="c9" id="com8_03" value="3"/><label for="com8_03">�м���ȭ ����(û�ҳ� ���б� ���� ��)</label><br />
					<input type="radio" name="c9" id="com8_04" value="4"/><label for="com8_04">�ؿܻ�ȸ ����(�ѱ����� ���� ��� �ļ� ���� �� �±ǵ� �ù� �ؿ� ���� ��)</label>
				</p>
				
				<h5>
					10. ���������� ���ѱ��������硱�� �ϰ� ���� �� �Ǵ� �ٶ�� �ٰ� �ִٸ� �����ֽñ� �ٶ��ϴ�.<br />
					<span class="ex">(Ex. ���ο� ��뿡 �����ϴ� Global ����ȸ��μ��� ������ ����մϴ�.)</span>
				</h5>
				<p class="t_01">
					<textarea id="area" rows="0" cols="0" class="area" name="d10"></textarea>
				</p>
				
				</fieldset>
			</div><!-- preference end -->
			
			<!-- ��ư[start] -->
			<div align="center">
				<img src="/survey/images/btn_submit.gif" alt="Ȯ��" style="cursor:pointer;" onclick="goSubmit();"/ />
			</div>
			<!-- ��ư[end] -->
		</div><!-- contents end -->
</form>
	</div><!-- wrap end -->
	
</body>
</html>