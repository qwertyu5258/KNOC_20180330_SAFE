<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>
<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","04");
	application.setAttribute("gNavMenuDepth2","11");
	application.setAttribute("gNavMenuDepth3","00");
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
				<%@include file="/include/subtop_04.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>������</span>
					&gt; <span class="locanow">�����ü� �̿�ȳ�</span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/customer/ttl_sub04_11.gif" alt="�����ü� �̿�ȳ�" /></h3>
				</div>
				<div class="customer">
					<h4 class="mT0 pb10"><img src="../images/customer/img_sub04_11_01.gif" alt="�����ü� �̿�ȳ�" /></h4>
					<div class="declaration pb05">
					<ul>
						<li><strong>�̿��� : ��걤���� ���� ���� �� ��ü</strong></li>
						<li><strong>����ü� : �״Ͻ���Ʈ 2��</strong></li>
                        <li><strong>����ð� : ���� �� ������ 06:00 ~ 18:00</strong></li>
                        <li><strong>���� : 5,000��(��Ʈ 1���, 3�ð� ����)</strong></li>
                        <li>
                        	<strong>��û���</strong>
                            <ul>
                            <li>- ����û�� �ۼ� ����(��û�� �ٿ�ε�)
                            	<ul style="padding-bottom:5px">
                                <li>�� ��û�Ⱓ : ��뿹���� 7��~3���� 18:00����(������ ����)</li>
                                <li>�� ����ó : <span class="ce45108_b">tennis@knoc.co.kr</span>(������) �Ǵ� <span class="ce45108_b">052-216-5907</span>(�ѽ�)</li>
                                <li>�� ����ó : 052-216-3043(�ѹ�����ó �ü�������)</li>
                                </ul>
                            </li>
                            <li>- ���� �Ա�(��뿹���� 2���� 18:00����,������ ����)
                            	<ul style="padding-bottom:5px">
                                <li>�� �Աݰ��� : ����û�� ���� �� ��ȭ����</li>
                                </ul>
                            </li>
                            <li>- ������ �뺸 �� �ü��̿�</li>
                            </ul>
                        </li>
                        <li>
                        	<strong>���ǻ���</strong>
                            <ul>
                            <li>- ���� �� �系 ��ȣȸ ��� �� �̿뿡 ������ ���� �� �ֽ��ϴ�.</li>
                            <li>- ���� ���� �� ���Ա� �� ������ ��ҵ˴ϴ�.</li>
                            </ul>
                        </li>
					</ul>
				</div>

                <div class="declaration">
                    <ul>
                        <li>�ѱ���������� ������Ÿ� �̿����� �� ������ȣ � ���� ������ ����������ȣ�� �� �������� ���� ������ �ؼ��ϸ�, ��������ó����ħ�� ���Ͽ� ������ ���� ���������� �����Ͽ� ó������ �˷��帳�ϴ�.<br><br>
                            <ul>
                                <li style="text-align:center;">
                                    <strong>- �� �� -</strong>
                                </li>

                                <li>
                                    <strong>1. �����ϴ� �������� �׸�</strong><br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;����� ������ ���� �׸���� �����Ͽ� ó���մϴ�.<br>
                                    &nbsp;&nbsp;&nbsp;&nbsp;-����, ��й�ȣ, ��ȭ��ȣ, �̸���

                                </li>

                                <li><strong>2. ���������� �������̿� ����</strong> <br>
                                &nbsp;&nbsp;&nbsp;&nbsp;-�����ü� �̿����</li>
                                <!-- <li>�� ���� ���� ����<br />
                                    ���� : ȫ���� <span class="ce45108_b">(�� 031-380-2158)</span><br />
                                    ���� : �� ���� ("<a href="/sub01/sub01_5.jsp" title="���� �� �ο� �������� �̵�"><span class="ce45108_b">����Ұ� > ���� �� �ο� > ����ó</span></a>" ����)
                                </li>
                                -->

                                <li><strong>3. ���������� ���� �� �̿�Ⱓ</strong><br>
                                &nbsp;&nbsp;&nbsp;&nbsp;-���� �Ⱓ :  ��û �� 1�Ⱓ Ȥ�� �Խù� ���� ��û ��<br>
                                &nbsp;&nbsp;&nbsp;&nbsp;-���� �ٰ� : ���� ���� ��ħ
                                </li>

                            </ul>
                        </li>

                    </ul>
                </div>
                
                <div class="pt30" align="center"><a href="/upload/data/sub04/welfare.HWP" title="�����ü� ����û��"><img src="../images/customer/btn_wel_req.gif" alt="�����ü� ����û��" /></a></div>


				<!-- new_officer -->
				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
					<tr>
						<td class="write_day"><strong>�ۼ������� : </strong>2016-04-05</td>
						<td class="contact_team"><strong>���μ� : </strong>�ѹ�����ó �ü�������</td>
						<td class="contact_user"><strong>����� : </strong>������</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-3043</td>
					</tr>
					</tbody>
					</table>
				</div>
				<!-- new_officer -->
			</div>
		</div>
	</div>

	</div>
    
        <!--// footer: start //-->
		<%@include file="/include/comfooter.jsp"%>
		<!--// footer: end //-->
    </div>
    
</body>
</html>