<%@page import="java.util.HashMap"%>
<%@page import="kr.co.knoc.sinmungo.SinmungoUserManager"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	
%>   

 
<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
<script type="text/javascript" src="/share/js/jquery-1.8.3.min.js"></script>
<script type="text/javascript" src="/include/js/jquery.easing.1.3.js"></script>	
<div id="contents">
<%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->

	<script type="text/javascript">
	var $j =jQuery.noConflict();
	$j(function(){
		$j(document).ready(function() {
		
			$j(".gubn").on("click",function(e){
				if($j(this).attr("href") == "form.jsp"){// �� �Խ��ϱ�
					document.bform.gubn.value = "form";
					document.bform.submit();
				}
				if($j(this).attr("href") == "list.jsp"){// ���� �� �ۺ���
					document.bform.gubn.value = "list";
					document.bform.submit();
				}				
				e.preventDefault();
			});
		
		});
	});
	</script>

<form name="bform" method="post" action="/sinmungo/main.jsp"  onsubmit="do_search(this); return false;">
	<input type="hidden" name="gubn" value="" />
</form>

	<div id="rightarea">
		<div id="subcnts">	
			<!-- �������� ������û[start] -->
			<%@include file="/include/subtop_04.jsp"%>
			<!-- �������� ������û[end] -->
			
			<!--// location: start //-->
			<div class="locadv">
				<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
				&gt; <span>������</span>&gt; <span>ûŹ���</span><!-- &gt; <span class="locanow"></span>  -->
			</div>
			<!--// location: end //-->
			<div class="pagetle">
				<h3><img src="/images/customer/ttl_sub04_8_1.gif" alt="�λ� ûŹ&bull;�˼� �Ź���" /></h3>
			</div>
			<div class="customer">
			<h4 class="mT0 pb10"><img src="../images/customer/sinmungo_01_tit.gif" alt="'�ȳ��� �λ�ûŹ,�˼� �Ź���'�� �λ� ûŹ,�˼����� ���� �������� �����ο� �ǰ߰����� �����Ͽ� ���� �� �λ� �Ұ��������� �����ϱ� ���Ͽ� ��Ǵ� ���Դϴ�." /></h4>
			<h4 class="mT0 pb10"><img src="../images/customer/sinmungo_02_tit.gif" alt="'ûŹ�� �޴� �������� ûŹ����� ������ ûŹ�� �ź��� �� �ִ� ��   ���� ���� �ǰ�, ûŹ������ ����� ��쿡�� ûŹ�źη� �����Ͽ� �������� ���������� �������� �⺻������ �����ϰ� ûŹ ���� ���� �߻��� ¡����� �� ������ �������� ��ȣ�ϴµ� �� ������ �ֽ��ϴ�.
" /></h4>
<h4 class="mT0 pb10"><img src="../images/customer/sinmungo_03_tit.gif" alt="'ûŹ�� �޴� �������� ûŹ����� ������ ûŹ�� �ź��� �� �ִ� ��   ���� ���� �ǰ�, ûŹ������ ����� ��쿡�� ûŹ�źη� �����Ͽ� �������� ���������� �������� �⺻������ �����ϰ� ûŹ ���� ���� �߻��� ¡����� �� ������ �������� ��ȣ�ϴµ� �� ������ �ֽ��ϴ�.
" /></h4>
<h5 class="mT0 pb10"><img src="../images/customer/sinmungo_03_1_tit.gif" alt="'ûŹ�� �޴� �������� ûŹ����� ������ ûŹ�� �ź��� �� �ִ� ��   ���� ���� �ǰ�, ûŹ������ ����� ��쿡�� ûŹ�źη� �����Ͽ� �������� ���������� �������� �⺻������ �����ϰ� ûŹ ���� ���� �߻��� ¡����� �� ������ �������� ��ȣ�ϴµ� �� ������ �ֽ��ϴ�.
" /></h5>	
			<div class="declaration" >						
				<ul>
					<li> ������� ���������� ��� �ż��� ����ó�� ��û </li>
					<li> ���, ���� �� ���� �λ翡 �־ ��롤Ư�� ��û </li>
					<li> ��� ����������κ����� Ư���� ����ó�� ��û �� </li>
					<li> �Ϲ� �ο��ΰ��� �ٸ��� ������ ���ǡ�Ư�� ���� �� ��� ��û</li>
					<li> �ܼӡ����� �� ������������ ��縦 ��Ȧ�� �ϵ��� ��û </li>
					<li> ���� ��������� ��ȭ��Ű���� ��û</li>
				</ul>						
			</div>
			
			<h5 class="mT0 pb10 pt20"><img src="../images/customer/sinmungo_03_2_tit.gif" alt="'ûŹ�� �޴� �������� ûŹ����� ������ ûŹ�� �ź��� �� �ִ� ��   ���� ���� �ǰ�, ûŹ������ ����� ��쿡�� ûŹ�źη� �����Ͽ� �������� ���������� �������� �⺻������ �����ϰ� ûŹ ���� ���� �߻��� ¡����� �� ������ �������� ��ȣ�ϴµ� �� ������ �ֽ��ϴ�.
" /></h5>
<h5 class="mT0 pb10"><img src="../images/customer/sinmungo_03_3_tit.gif" alt="'ûŹ�� �޴� �������� ûŹ����� ������ ûŹ�� �ź��� �� �ִ� ��   ���� ���� �ǰ�, ûŹ������ ����� ��쿡�� ûŹ�źη� �����Ͽ� �������� ���������� �������� �⺻������ �����ϰ� ûŹ ���� ���� �߻��� ¡����� �� ������ �������� ��ȣ�ϴµ� �� ������ �ֽ��ϴ�.
" /></h5>
<h4 class="mT0 pb10"><img src="../images/customer/sinmungo_04_tit.gif" alt="'ûŹ�� �޴� �������� ûŹ����� ������ ûŹ�� �ź��� �� �ִ� ��   ���� ���� �ǰ�, ûŹ������ ����� ��쿡�� ûŹ�źη� �����Ͽ� �������� ���������� �������� �⺻������ �����ϰ� ûŹ ���� ���� �߻��� ¡����� �� ������ �������� ��ȣ�ϴµ� �� ������ �ֽ��ϴ�.
" /></h4>
				
			<div class="btnsec" style="text-align: center; margin-top: 20px">
				<a class="gubn" href="form.jsp"><img src="/images/member/btn_write.gif" alt="�۰Խ��ϱ�" ></a>
				<a class="gubn" href="list.jsp"><img src="/images/member/btn_myarticle.gif" alt="�������ۺ���" ></a>								
			</div>
			</div>	
			
			<!-- new_officer -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
				<tr>
					<td class="write_day"></td>
					<td class="contact_team"><strong>���μ� : </strong>����� û�Ű濵������</td>
					<td class="contact_user"><strong>����� : </strong>Ȳ��ö</td>
					<td class="contact_tel"><strong>����ó : </strong>052-216-2124</td>
				</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer -->
		</div>
	</div>
</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->

</body>
</html>

