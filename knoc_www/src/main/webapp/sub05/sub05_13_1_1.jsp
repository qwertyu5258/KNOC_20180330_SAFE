<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","15");
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
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a> &gt; <span>��������</span> &gt; <span>������������</span> &gt; <span class="locanow">�������������ȳ�</span>
                </div>
                <div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/n_img_sub5/ttl_sub05_1_1.gif" alt="������������ �ȳ�" /></h3>
				</div>
                 <div class="information">
					<h4 class="mT0"><img src="../images/information/img_ttl_sub05_4_1_01.gif" alt="��������������?" /></h4>
					<p>������������������ ��������� ������ �ۼ� �Ǵ� ����Ͽ� �����ϰ� �ִ� ������ �������� ������ û���� ���Ͽ� �������纻������ ���� ���·� û���ο��� ����(û������)�ϰų�, ��������� �ڹ������� �Ǵ� ���� ���� ������ ���Ͽ� �����ϰ� �ִ� ������ ���� �Ǵ� ��ǥ ���� ���·� ����(��������)�ϴ� ������ ���մϴ�.</p>
                    <dl>
						<dt>��������</dt>
						<dd>û������ : ��������� ������ �ۼ� �Ǵ� ����Ͽ� �����ϰ� �ִ� ������ û������ û���� ���Ͽ� �����ϴ� ����<br/>
						<span class="mL60">(�� : ���ΰ������� ����������û�� ��)</span></dd>
						<dd>�������� : ������ ������ ��������� �ڹ������� �Ǵ� ���ɻ� �ǹ������� ������ �����ϴ� ���� <br/>
						<span class="mL60">(�� : ���ͳ��� ���� ��������, ���๰�� ���� ��) </span></dd>
					</dl>
					<dl>
						<dt>���������� û������</dt>
						<dd>��� ���� : ��� ������ û���� ���� �Ǵ� �� �븮���� ���Ͽ� ��������� ���������� û���� �Ǹ��� ������ �ֽ��ϴ�.</dd>
						<dd>���Τ���ü : ���ΰ� ��ü�� ���� ��ǥ���� ���Ƿ� ��������� ���������� û���� �Ǹ��� ������ �ֽ��ϴ�.</dd>
						<dd>�ܱ��� : û������ �����Ǵ� �ܱ����� ������ ������ �����ϴ�.<br/>
						<span class="mL47">- ������ ������ �ּҸ� �ΰ� �����ϴ� ��</span><br/>
						<span class="mL47">- �м��������� ���Ͽ� �Ͻ������� ü���ϴ� ��</span><br/>
						<span class="mL47">- ������ �繫�Ҹ� �ΰ� �ִ� ���� �Ǵ� ��ü</span></dd>
					</dl>
					<!--p class="download">������������ ���� ���������������� <a href="/upload/data/sub02/2010_oper_guide.hwp"><img src="../images/information/btn_download.gif" alt="������������ ���� �ٿ�ε�" class="vMid" /></a></p-->
				</div>
			</div>
			<!-- contents -->
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-05-12</td>
						<td class="contact_team"><strong>���μ� : </strong>�ѹ�����ó ���������</td>
						<td class="contact_user"><strong>����� : </strong>������</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2607</td>
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