<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","06");
	application.setAttribute("gNavMenuDepth4","04");
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
                    &gt; <span>�濵����</span>
					&gt; <span>��Ÿ����</span>
                    &gt; <span class="locanow">ǰ�� �� �������</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_6.gif" alt="��Ÿ����" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_6_7_ta.gif" alt="ǰ�� �� �������"/></h4>
					<h5>�������� ���α�� ����</h5>
					<!--ǥ-->
					<table class="chart2" summary="�������� ���α�� ������Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					
					<caption>�������� ���α�� ����</caption>
					<col width="150px" />
					<col width="550px" />
					<thead>
					<tr>
					<th scope="col" class="first">�������</th>
					<th scope="col">���û</th>
					</tr>
					</thead>
					<tbody>
					<tr>
					<td class="first">�����о�</td>
					<td class="tdleft">������ �������, ������ǰ���� ����</td>
					</tr>
					<tr>
					<td class="first">����ȿ��</td>
					<td class="tdleft">���ν������� �ڷ��ǥ �� ���û�� ������ ���� �� ��ǥ�ؾ��ϳ�, ���簡 ��ǥ�ϴ� ���� ���� �� �������� �������Ǹ� ���� �������ν�, ���� ���� ����� �ŷڵ� ����</td>
					</tr>
					</tbody>
					</table>
					<!--//ǥ-->
					<h5>Ư��� ���� ��Ȳ</h5>
					<!--ǥ-->
					<table class="chart1" summary="�ѱ��������� Ư��� ���� ��Ȳ�� �����Ī, �о� �� ���뺰�� Ȯ���� �� �ֽ��ϴ�.">
					
					<caption>�ѱ��������� Ư��� ���� ��Ȳ</caption>
					<col width="300px" />
					<col width="300px" />
					<col width="100px" />
					<thead>
					<tr>
					<th scope="col" class="first">�����Ī</th>
					<th scope="col">�о� �� ����</th>
					<th scope="col">���</th>
					</tr>
					</thead>
					<tbody>
					
					
					<tr>
					<td class="first">���� �帧�� 2�� �˸� ������ġ�� �̿��� �ռ������� �Ǽ�Ʈ�ӽ� �������� �׻��� źȭ���� ȥ�չ� ���� ���</td>
					<td>GTL�� ���� ����� FT����� �˸� ������ġ Ư�� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
		
					<tr>
					<td class="first">�°��� ����ȭ ���� ������ ���� �ȶ��/�˷�̳� ������� �˸�, ���� ���� ��� �� �̸� �̿��� ���̺긮���Ǽ�-Ʈ�ӽ� �ռ��������� �߰� �������� �������</td>
					<td>GTL�� ���� ����� FT����� �˸� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">��ǥ���� ���ɳ� ������ ����ũ�� ������ ������ yMgO(1-y)Al2O3�� ����ũ��� ������ ���̰� �����˸� �� �̸� �̿��� ������-�̻�ȭź�� ���հ����� ���� õ�������κ��� �ռ������� �������</td>
					<td>GTL�� ���� ����� FT����� �˸� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�ڿ������� ���� õ�������κ��� �Ǽ�-Ʈ�ӽ� ��ȭ������ �ռ����������� ���Ǵ� �����˸� �� �� ��������� �̸� �̿��� �Ǽ�Ʈ�ӽ� ��ȭ������ �ռ������� �������</td>
					<td>GTL�� ���� ����� �ռ����� ���� ����� �˸� �� ���� ���� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� ��ȭ������ �ռ����� ���������� ���Ǵ� ��ź �ڿ����� �˸� �� �̸� �̿��� �޽��� �˸���, �׸��� �̸� �̿��� �Ǽ�-Ʈ�ӽ��� �ռ����� �������</td>
					<td>GTL�� ���� ����� �ռ����� ���� ����� �˸� �� ���� ���� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�����ڴϾ�-�˷�̳� ��ü�� �̿��� �Ǽ�-Ʈ�ӽ� ������ �˸� �� �̸� �̿��� �ռ������κ��� ��üźȭ������ ���� ���</td>
					<td>GTL�� ���� ����� FT ����� �˸� �� ���� ���� ��� </td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�˷�̳�-�Ǹ�ī ��ü��, �̸� ������ �˸� �� ��� �˸Ÿ� �̿��� �ռ������κ��� ��üźȭ���� �������</td>
					<td>GTL�� ���� ����� FT����� �˸� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� �ռ��� �ڹ�Ʈ/��-�˷�̳� �˸ſ� ���� �������</td>
					<td>GTL�� ���� ����� FT����� �˸� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">��-�� ������ ���� �Ǽ�-Ʈ�ӽ� �ռ��� ��-�˷�̳� ����ü�� ������� �� �̸� �̿��� �˸�(��Ͻ� ��Ī : "�Ǽ�-Ʈ�ӽ� �ռ��� �ڹ�Ʈ/��-�˷�̳� �˸ſ� ���� �������")</td>
					<td>GTL�� ���� ����� FT����� �˸� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� �ռ������� ��ü�˸ſ� �������� ���� �и����� ��ġ �� ���</td>
					<td>GTL�� ���� ����� FT����� �˸� �� ���� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� �ռ��� �ڹ�Ʈ/�����ڴ�-��/�Ǹ�ī �˸ſ� �����������</td>
					<td>GTL�� ���� ����� FT����� �˸� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� �ռ��� �ڹ�Ʈ�� �˸� �� ���� �������</td>
					<td>GTL�� ���� ����� FT����� �˸� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">���� ����Ʈ �� ������ȭ�� �̿��� �Ǽ�-Ʈ�ӽ� �ռ� ���� ��ġ �� ���</td>
					<td>GTL�� ���� ����� FT����� ���� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� �ռ������� ���� ������ġ</td>
					<td>GTL�� ���� ����� FT����� ���� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� �ռ��� ������ ������ ���� ��ü źȭ���� ȭ�չ��� �������</td>
					<td>GTL�� ���� ����� FT����� �˸� �� ���� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�°��� ����ȭ ���ع����� ���� ���� ����� �ȶ��-�˷�̳� �˸�, �� ������� �� �̸� �̿��� ���̺긮�� �Ǽ�-Ʈ�ӽ� �ռ����� ���� �߰� ������ ���� ���</td>
					<td>GTL�� ���� ����� FT����� �˸� �� �������</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�ռ����� ���� ������ �� �ռ����� �������</td>
					<td>GTL�� ���� ����� �ռ����� ���� ����� �˸� �� ���� ���� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� ��ȭ������ �ռ����� ������ ���� �˸��� �� �� �������, �� �˸����� �̿��� ������ġ</td>
					<td>GTL�� ���� ����� FT����� �˸� �� �������</td>
					<td class="tdcen">Ư���</td>
					</tr>
					
					<tr>
					<td class="first">������ ��������ý���</td>
					<td>����� �ͳ� �Ϻ� ������ Double Plug�� ��ġ�Ͽ� ������������ Ȱ���� �����ϵ��� �ű�� ����</td>
					<td class="tdcen">Ư���</td>
					</tr>

					<tr>
					<td class="first">���� �� ���� ���߰� �ڸ���� ������ġ</td>
					<td>���� �� ��� ���߰������� ������ ������ �ڸ��� ���� �� ���߰����� ������ �����ϵ��� ������ġ ����</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">���ϵ��� ������ ���� ���°��� ���</td>
					<td>���� ���忡 ���� ���а��� �������� Ư�����б�(�ڵ����п� �ܱǺ��б�)�� �̿��Ͽ� ���°���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">���� ���� ��������� �������� ��Ŀ</td>
					<td>���� ���ٸ�����ƿ ���������� PE������ �����Ͽ� �ð���, ȭ���� ������,�������� ���</td>
					<td class="tdcen">�ǿ� �žȱ�</td>
					</tr>
					<tr>
					<td class="first">����ó���� ������ �������� ���Ĺ��</td>
					<td>�� ���� õ���� �߽ɵ����� �߽����� �Ϲ��� �����Ҷ���, ���� ó���� ������ �������� ���Ĺ���� ����</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">������ �������</td>
					<td>�������� �����ð����� ������ ������ �� �������� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">�Ǽ�-Ʈ�ӽ� ��ȭ������ �ռ����� ������ ���� �ڿ����� �˸����� �ݼӱ���ü, �ݼӱ���ü�� ������� �� �ݼӱ���ü �˸�</td>
					<td>GTL�� ���� ����� FT����� �˸� �� �������</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">���Ͽ� ����� ���ϼ����� ȸ�� ���� ��� ��ġ</td>
					<td>�ǽð� ���ϼ����� ������ ���� ������ �������� Ư���� ȿ������ ��縦 �������ϰ�, �������� �� �������� ȸ������ Ư�� ������ ȿ������ ����</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">���ܼ� �б��м��� �̿��� ���ϻ��峻�� ���Ե� ���� �Է� �������</td>
					<td>���ϻ���, Ÿ������ �Ǵ� ���ϼ��� ���ο� ������ ���ϼ����� �������� �����ϴ� ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
					<tr>
					<td class="first">��ȥ���� ������ �������� �̿��� ������ �� ���� ��� �ð� ���� ��ġ</td>
					<td>���� ����ü� �� ����ȭ�� �÷�Ʈ�� ���߼� ������ �����ϴ� ��� ���� ����</td>
					<td class="tdcen">Ư���</td>
					</tr>
                    <tr>
					<td class="first">���ϼ� ������ �������</td>
					<td>���Ϻ������ �ֺ� ���ϼ��� ��ȭ�� �ܰ躰 ���� �� ��ó ���</td>
					<td class="tdcen">Ư���</td>
					</tr>
                    <tr>
					<td class="first">CCS�� ���� ź���� Ž�� �������� ��� �� �ý���</td>
					<td>SEGY ���Ͽ��� ��ȯ�� ���� ���ϰ� �̹��� ������ �̿��Ͽ� CCS�� ����-���-���� �ܰ��� ���������� ���� �⺻�ڷ� ������ ���� �����ͺ��̽� ����</td>
					<td class="tdcen">Ư���</td>
					</tr>
                    <tr>
					<td class="first">������ Ŀ����</td>
					<td>���ϼ��� ���������� ���̺� ��������� ����ɷ� �� �������� ����Ų �ɹ���� ������ Ŀ����</td>
					<td class="tdcen">Ư���</td>
					</tr>
					
					</tbody>
					</table>
					<!--//ǥ-->
					<h5>����/ȯ�� ������ �԰� ���� ����</h5>
					<!--ǥ-->
					<table class="chart4" summary="�ѱ��������� ����/ȯ�� ������ �԰� ���� ���� ��Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					
					<caption>�ѱ��������� ����/ȯ�� ������ �԰� ���� ����</caption>
					<col width="200px" />
					<col width="500px" />
					<tr>
					<th scope="row">1998�� 7��</th>
					<td>����, ����, �Ǽ� �ι� ISO 9001(ǰ��) / 14001(ȯ��)</td>
					</tr>
					<tr>
					<th scope="row">1998�� 10�� / 2004�� 6��</th>
					<td>���߼� �ι� ISM(���ھ���) / ISPS(���ں���)</td>
					</tr>
					<tr>
					<th scope="row">2001�� 6��</th>
					<td>�������� KOSHA 18001(����.����)</td>
					</tr>
					</table>
					<!--//ǥ-->
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
							<td><strong>���μ� : </strong>������ȹ�� ������</td>
							<td><strong>����ó : </strong>052-216-2346</td>
							<td><strong>������ : </strong>2015-09-30</td>
						</tr>
					</tbody>
					</table>
				</div><!-- new_officer end -->					
				
				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>				  
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>