<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","04");
	application.setAttribute("gNavMenuDepth3","02");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>             
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>�����濵</span>
					&gt; <span>ȯ��濵</span>
					&gt; <span class="locanow">ȯ��濵��Ȳ</span>
				</div>
				<!--// location: end //-->

				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_4_2.gif" alt="ȯ��濵��Ȳ" /></h3>
				</div>				
				
				<!--����-->				
				<div class="environment02">
					<div>
						<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
						<ul class="tab">
							<li ><a href="sub02_4_4.jsp" title="�ֿ��ڿ� �� ������" ><img src="/images/management/tab_sub02_4_2_4.gif" alt="�ֿ��ڿ� �� ������" border="0"  /></a></li>
							<li><a href="sub02_4_5.jsp" title="ȯ����� �� ����" ><img src="/images/management/tab_sub02_4_2_5on.gif" alt="ȯ����� �� ����" border="0"  /></a></li>
							<li ><a href="sub02_4_6.jsp" title="���ĺ�ȭ����" ><img src="/images/management/tab_sub02_4_2_6.gif" alt="ȯ����� �� ����" border="0"  /></a></li>
						</ul>
						<h4><img src="/images/management/sub02_4_2_ta4_2.gif" alt="ȯ�����" /></h4>
						
						
						<h5>ȯ���ǥ����</h5>
						<p>�ְ��濵���� ȯ���ħ�� �� ������� ȯ�������� �ľ��ϰ� ȯ�濡 �ɰ��� ������ ��ġ�� ��ҿ� ���Ͽ� ȯ���ǥ�� ���θ�ǥ��
						 �����Ͽ� �̿� ���� ������ȹ���� ȯ�������ȹ�� �����Ͽ� �����ϰ� �ֽ��ϴ�.  </p>
						
						<h5>ȯ�濵����</h5>
						<p>������ �������߻�� ���� �� �������� �Ǽ������  �ش� ��� �������� ���� �ڿ� ȯ��, 
						��Ȱ �� ��ȸ ������ ȯ�濡 ��ġ�� �������� ������ ����, �м��Ͽ� ȯ�濵���� �ּ�ȭ�ϴ� ����� ���������� ������ ���� �ֽ��ϴ�. </p>
						
						<h4><img src="/images/management/sub02_4_2_ta4_3.gif" alt="ȯ�漺��" /></h4>
						<p style="padding-top:8px;padding-bottom:8px; padding-right:2px;">
						����� ��� ����忡�� �ü� �� ��� ȯ��ģȭ������ �����ϰ�, 
						����� ������ �߻��ϴ� ���������� �ּ�ȭ�ϴ� �� ���������� ȯ�����ڸ� Ȯ���Ͽ� ģȯ��濵�� ��õ�ϰ� �ֽ��ϴ�.
						 ����, ����κк� ȯ�桤���ǡ������� ���� å���� ��ȭ�Ͽ� ������<br/> ���������� �����ϰ� ������, ���� �������� Ȱ��, ������ ����, 
						 ������ �������ǿ� ���� �������� ���� �� �Ʒ��� ��ȭ�ϰ� �ֽ��ϴ�.</p>
						 
						<h5>���� �� �ؾ����</h5>
						<p>����� ������ ��� ����忡�� ����Ǵ� �������������� ���� ���Ҹ� ���� ���� ����ġ �Ǵ� ����������� ���� ��ȭ��<br/>
						��ü������ �����Ͽ� ��ϰ� ������ ���� �ؼ� ���θ� ����͸��ϰ� �ֽ��ϴ�. 
						���� 2012����� �ػ������� �͹̳� �ü���<br/> �������ؿ� ���� ���ϴ� ���ػ��͹̳� �������������������� ����,
						 ��Կ� ���� ���輱���� ��õ �����Ͽ� �ߴ� �ؾ����� �����ϴ� �� �������� ���濡 �ּ��� ���ϰ� �ֽ��ϴ�.</p>
						 
						<h5>������</h5>
						<p>���������� ��������� ��ȭ�ʿ� ���� �������翡���� ������ ���� ���ⷮ�� ���̰��� �ٰ������� ����ϰ� �ֽ��ϴ�.<br/>
						 �����Ⱑ ����� �� �ִ� ƴ��(Roof Seal, Column Well)�� ����, ������ �Ұ����� ó��ȿ�� ���, ������ȸ������ (VRU) ��ġ,
						  ���ó������ ��������ü� ��ġ ���� ���� ���������� ������ �ּ�ȭ ��Ű�� �ֽ��ϴ�. 
						  ���� ���� �����۾��� ���ڿ��� <br/>�����ؿ��� ������������ �������翡�� ȸ��ó����� ���� ���� �����Ͽ� ����� ���� �ο��� �ּ�ȭ�ϰ� �ֽ��ϴ�.</p> 
						  
						<h5>������</h5>
						<p>����� ���̹����� ��ġ�� ��ũ���� �� ������� ���� ��ȭ�� ���� �������� �����ϰ� ������, 
						�����ü��� ���� �������� �ּ�ȭ�� �� �ֵ��� ���� �ü��� ������ ������ħ���� ǥ��ȭ�Ͽ� �ϻ������� �ǽ��ϰ� �ֽ��ϴ�.
						 ���� 2013�� 3�� ȯ��ο� �������������� ���� �ڹ��� ���࡯�� ü���Ͽ� ������ ��� ���� ��å�� ���� �����ϰ� �ֽ��ϴ�. </p>   
						  
						<h5>��⹰ ����</h5>
						<p>����� ����庰�� �߻��ϴ� ��⹰�� �������� �������� �� ó���� ���� ü�������� �����ǰ� �ֽ��ϴ�.
						 ����, �߻��Ǵ�<br/> ��⹰�� ���� ���� ó����ü�� ���� ����, ó�� �Ǵ� ��Ȱ���ϰ� ������,
						  �������࿡�� �����ϰ� �ִ� ������⹰ �� ������� ��⹰ ���ο� ���� �����ϰ� ������,
						  ���� ����� ���� ��⹰ ó������ �� ���ù��Կ� ���� �����ϰ� �����ϰ� �ֽ��ϴ�.</p>  
						 
						 <h4><img src="/images/management/sub02_4_2_ta4_4.gif" alt="ȯ�汳��" /></h4>
	                   
						<p style="padding-top:8px;padding-bottom:8px; padding-right:2px;">ȯ�� �� ���Ǿ��� ���� ������ ��ȭ�ϱ� ���Ͽ� ���� �������� ���, ������ ����, ������ �������ǿ� ���� ������ �ֱ������� �ǽ��ϰ� �ֽ��ϴ�. 
						����庰 ȯ������ �ְ����� ���� ȯ�� ���� �� ���ȹ, HSE ���ɺо� ���� ������ ���屳���� �ǽ��ϰ� ������, 
						�Ǽ������� ȯ�� �ǽ� ����� ���� ����ȸ���� ȯ��濵Ȱ���� �ֱ������� ����͸��ϰ� �ֽ��ϴ�. 
						����-1 ���� ����<br/> ����� �� ���߼��� ���, ���� �������� HSE �������࿡ �ʿ��� ����, �Ʒ� �� �ڰݿ� ���Ͽ� HSE �������Ʒ� ��Ʈ������ �����Ͽ� ������� HSE ������ ü��������
						 �̷�������� �ϰ� �ֽ��ϴ�. ����, ��������� �����Ҹ� ȿ�������� �߱��ϰ� �����ϱ� ���� �������簣 ���� �� ȯ����� ���� �� ������ ��ȯ�ϰ� �ֽ��ϴ�.</p> 					 						 
					</div>
                </div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
							<td class="contact_team"><strong>���μ� : </strong>����ȯ��ó ȯ�溸����</td>
							<td class="contact_user"><strong>����� : </strong>������</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2942</td>
						</tr>
					</tbody>
				</table>
			</div>
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>