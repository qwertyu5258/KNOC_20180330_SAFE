<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","11");
	application.setAttribute("gNavMenuDepth3","01");
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
			<!-- contents -->
            <div id="subcnts">
                <%@include file="/include/subtop_05.jsp"%>
                <div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt; <span>��������</span> &gt; <span class="locanow">��������û��</span>
                </div>
                <div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/n_img_sub5/ttl_sub05_2.gif" alt="��������û��" /></h3>
				</div>
				<div class="officer">
					<ul class="tab">
						<li><a href="/sub05/sub05_13_2_1.jsp" ><img src="/images/business/tab_sub04_9_3_1.gif" alt="�¶���û��"/></a></li>
						<li><a href="/sub05/sub05_13_2_2.jsp" ><img src="/images/business/tab_sub04_9_3_2on.gif" alt="��������û��" /></a></li>
					</ul>
					<div style="width:256px; float:right; margin-top:-30px ">
						<a href="http://www.open.go.kr" target="_blank"><img src="/images/business/btn_sub04_9_1_1.gif" alt="�������������ý��� �ٷΰ���" /></a>
						<a href="http://www.gov30.go.kr/gov30/int/intro.do" target="_blank"><img src="/images/business/btn_sub04_9_1.gif" alt="����3.0 �̶� �󼼺���" /></a>
					</div>
				</div>
				<div class="business" >
					<img src="/images/business/img_ttl_sub04_9_3_1_01.gif" alt="�������� ��������û��"/>
					<h5>�¶������� û���ϱ� ������ �е��� �����湮, ����, �ѽ�, ��ȭ�� �̿��Ͽ� û���Ͻ� �� �ֽ��ϴ�.</h5>
					<ul>
						<li>�Ʒ� ������ ���� �޾� û���� ������ �������� ����Ͽ� �湮�� ����, �Ǵ� �Ʒ� �ּҷ� �ۺ��Ͽ� �ֽñ� �ٶ��ϴ�.</li>
					</ul>
					<h5>������ ��</h5>
					<span>�ּ� : ��걤���� �߱� ������ 305</span>
					<ul>
						<li>��ȭ��ȣ : 052-216-2607</li>
						<li>�ѽ���ȣ : 052-261-2900</li>
					</ul>
					<h5>��������û������ </h5>
					<span> �������� ��û�� ���� û�������Դϴ�.</span>
					<h5>���ǽ�û���� </h5>	
					<span> ��������(�����)������ ���� ���ǰ� ���� �� ����ϴ� �����Դϴ�.</span>
				</div>
				<div style="float:left; margin:30px 0px 20px 100px;">
					<a href="/filedown.jsp?fileno=17&amp;filepath=/upload/form_download/" title="��������û������ download" ><img src="/images/business/info_form_download.gif" alt="��������û������ download" /></a>
				</div>
				<div style="float:left; margin:30px 0px 20px 20px;">
					<a href="/filedown.jsp?fileno=18&amp;filepath=/upload/form_download/" title="���ǽ�û����download"><img src="/images/business/object_form_download.gif" alt="���ǽ�û����  download" /></a>
				</div>
            </div>
			<!-- //contents -->
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
						<td><strong>���μ� : </strong>�ѹ�����ó �ѹ���</td>
						<td><strong>����ó : </strong>052-216-2607</td>
						<td>&nbsp;</td>
					</tr>
				</tbody>
				</table>
			</div>
		</div>
    </div>
	<!--// footer: start //-->
	<%@include file="/include/comfooter.jsp"%>
	<!--// footer: end //-->
</div>
</body>
</html>