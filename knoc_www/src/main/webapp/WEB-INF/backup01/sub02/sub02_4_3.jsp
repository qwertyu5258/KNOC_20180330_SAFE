<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","04");
	application.setAttribute("gNavMenuDepth3","03");
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
					 &gt; <span class="locanow">ȯ��濵Ȱ��</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_4_2.gif" alt="ȯ��濵��Ȳ" /></h3>
				</div>				
				
				<!--����-->				
				<div class="environment02">
					<div>
						<ul class="tab">
							<li ><a href="sub02_4_3.jsp" title="ȯ������ �� ����" ><img src="/images/management/tab_sub02_4_3_1r.gif" alt="ȯ������ �� ����" border="0"  /></a></li>
							<li><a href="sub02_4_3_1.jsp" title="ȯ����� ����Ȱ��" ><img src="/images/management/tab_sub02_4_3_2.gif" alt="ȯ����� ����Ȱ��" border="0"  /></a></li>
						</ul>
						<h4><img src="/images/management/sub02_4_3_ta1_1.gif" alt="ȯ������" /></h4>
						<p>ȯ�濡 ���� ������ ������ ��ŭ ������ ȯ�濡 ���� ���ڵ� �����ϰ� �ֽ��ϴ�. ȯ�溸ȣ�� ���� �ü� �� ��� ���� ���ڿ� ���/���ĺ�ȣ. ���, ��⹰, ���, ���� �� ����, ���� �پ缺 ��  �ڿ���� ��ȣ, ��������, ȯ�溸ȣ Ȱ�� � ���� ������� ���� �����ϰ� �ֽ��ϴ�. ȯ����� ������ ���� �űԼ���ġ�� ���������� �����ϰ� ������ ��06�⿡�� ���� ������ ó������ ���� �� ����ó������ ��ġ(18��), ��07�� ���� ���ó������ ����(38��), ��08�� ���� ������ ó������(164��), '09�� ��� ���ó������(40��) ���� �����Ͽ����ϴ�.  ������ ����� � �� �߻��Ǵ� �½ǰ����� ���������� �����ϰ� �̸� �ֱ������� ������ �� �ֵ��� ������ ȯ�� �о߿� ���� ������ ��ȹ�Դϴ�.</p>
						<h4><img src="/images/management/sub02_4_3_ta1_2.gif" alt="ȯ�汳��" /></h4>
						<p>ȯ�� ���� �� ��Ģ, ȯ�� ��ħ�� ���õ� �Ϲ����� ������ �⺻���� ���. ���. ����. ���°�, ��⹰, ������ ������ ���� ������ �ֱ������� �ǽ��ϰ� �ֽ��ϴ�. ���庰 ȯ�������� �ְ����� ���� ȯ�� ������ȹ �� ���ȹ�� HSE ���ɺо߸� �߽����� ���屳���� �ǽ��ϰ� ������, �Ǽ������� ȯ�� �ǽ� ����� ���� �ð����� ȯ��濵Ȱ���� �ֱ������� ����͸��ϰ� �ֽ��ϴ�. ���庰 ������� �� ȯ���� ����� �Ʒ� �ó������� ��ġ�Ͽ� �ݺ����� �Ʒ��� ���� ������� �ɷ��� ������ ������ �ֽ��ϴ�. ������ �� ���߼� �оߴ� HSE �������࿡ �ʿ��� ����, �Ʒ� �� �ڰ��� �ݿ��� ����/�Ʒ� ��Ʈ������ �����ϰ� �־� �ο� ������ ���� ȯ����� ���鿡 ����ϰ� �ֽ��ϴ�. ���� ��������� �����Ҹ� ȿ�������� �߱��ϰ� �����ϱ� ���� �������簣 ȯ����� ���� �� ������ ��ȯ�ϰ� �ֽ��ϴ�.</p>
					</div>
				</div>
				<!--//��-->
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<colgroup>
					<col width="auto" />
					<col width="22%" />
					<col width="22%" />
				</colgroup>
				<tbody>
					<tr>
						<td><strong>���μ� : </strong>HSE�� ȯ����</td>
						<td><strong>����ó : </strong>031-380-2636</td>
						<td><strong>������ : </strong>2015-09-30</td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>