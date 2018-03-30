<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","09");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>             
<%@include file="/include/comheader.jsp"%>


	<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

<script type="text/javascript">
//<![CDATA[
           
	function tabCtrl(tNo){
		$J("div.tab-grp").hide();
		if(tNo == 1){
			$J("div.tab-grp:first").show();
			$J("img.tab-img:first").attr("src", "/images/new_sub/tab1_on.gif");
			$J("img.tab-img:eq(1)").attr("src", "/images/new_sub/tab2_off.gif");
			
		}else if(tNo == 2){
			$J("div.tab-grp:eq(1)").show();
			$J("img.tab-img:first").attr("src", "/images/new_sub/tab1_off.gif");
			$J("img.tab-img:eq(1)").attr("src", "/images/new_sub/tab2_on.gif");
		}
	}
           
//]]>
</script>

	<div id="contents">
    	<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
		
		<div id="rightarea">
			<div id="subcnts">
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span class="locanow">ã�ƿ��ô±�</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-15 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_9.gif" alt="��������� ã�ƿ��ô±�" /></h3>
				</div>
				<!-- 
				<div style="height:24px; margin:40px 20px 0 20px;">					
					<ul class="tab">
						<li><a href="#" onclick="tabCtrl(1); return false;" title="������"><img class="tab-img" src="/images/new_sub/tab1_on.gif" alt="�Ⱦ�" /></a></li> 
						<li><a href="#" onclick="tabCtrl(2); return false;" title="�� �μ� �ֿ����"><img class="tab-img" src="/images/new_sub/tab2_off.gif" alt="���Ż��" /></a></li>
					</ul>				
				</div>
				-->
				<div class="map tab-grp" style="display:none;">
					<div>
						<img src="/images/directors/sub08_6-1.gif" alt="��������� ã�ƿ��ô±�(�ڼ��� ������ �Ʒ� �� ����)" />
					</div>

					<h4>����ö �̿��</h4>
					<p>4ȣ�� ���̿� 2�� �ⱸ �� �̸�Ʈ��Ÿ� �� SK������ �� 250M ���� �� �ѱ��������� (������ 5��)</p>
					
					<h4>���� �̿��</h4>
					<ol>
						<li>
							<strong>�� �ó����� 301��</strong><br /><p class="pl20 pt05">���� �� ������ �� �����Ÿ� �� �Ⱦ米��û ���� �� �ѱ��������� (������ 5��)</p>
						</li>
						<li>
							<strong>�� �¼����� 303��</strong><br />
							<p class="pl20 pt05">�д�(������) �� ������ �� �δ��� �� ���̵����� ���� �� �ѱ��������� (������ 5��)</p>
						</li>
						<li>
							<strong>�� �¼����� 1303��</strong><br />
							<p class="pl20 pt05">�ѱ��ܴ� �� ���� �� �д�(������) �� ������ �� �δ��� �� ���̵����� ���� �� �ѱ��������� (������ 5��)</p>
						</li>
						<li>
							<strong>�� �¼����� 333��</strong><br />
							<p class="pl20 pt05">���� �� ����� �� �ܰ���ȯ��ӵ��� �� ����깰���� �� �Ⱦ��û ���� �� �ѱ��������� (������ 10��)</p>
						</li>
						<li>
							<strong>�� �¼����� 3330��</strong><br />
							<p class="pl20 pt05">�д� �� �ܰ���ȯ��ӵ��� �� ����깰���� �� �Ⱦ��û ���� �� �ѱ��������� (������ 10��)</p>
						</li>
						<li>
							<strong>�� �������� 5-1��</strong><br />
							<p class="pl20 pt05">�Ⱦ翪 �� ���迪 �� �ѱ���������</p>
						</li>
						<li>
							<strong>�� �������� 6-1��</strong><br />
							<p class="pl20 pt05">���迪 �� ���ȱ�û �� �ѱ���������</p>
						</li>
					</ol>					

					<h4>�ڰ��� �̿��</h4>
					<ol>
						<li>
							<strong>�� ����(����) ��鿡�� ���� ��</strong><br /><p class="pl20 pt05">���/���� �� ��õ �� ��������û�� �� �δ�����Ÿ� �� 500m ���� �� �δ��������� ��ȸ�� �� 1,000m ���� �� �̸�Ʈ ��Ÿ� (SK������)���� ��ȸ�� �� �ѱ���������</p>
						</li>
						<li>
							<strong>�� ���￡�� ���������θ� �̿��Ͽ� ���� ��</strong><br />
							<p class="pl20 pt05">����IC �� �븲���� �� ����Ÿ� �� ���迪 ��Ÿ����� ��ȸ�� (* ����IC�κ��� ���迪 ��Ÿ� �Ÿ��� �� 5,500m) �� 1,600m ���� (�Ⱦ��û ����) �� �̸�Ʈ ��Ÿ� (SK������)���� ��ȸ�� �� �ѱ���������</p>
						</li>
						<li>
							<strong>�� ��ΰ�ӵ��θ� �̿��Ͽ� ���� ��</strong><br />
							<p class="pl20 pt05">�Ǳ�IC �� (����ܰ���ȯ��ӵ���) ����IC �� ����IC �� 200m ���� �� ��Ÿ� �� �Ⱦ��û ����ǥ �������� 1,800m ���� (�Ѹ��뼺�ɺ��� ����) �� �Ⱦ米��û���� ��ȸ�� �� 250m ���� �� �ѱ���������</p>
						</li>
						<li>
							<strong>�� �ϻ�, �������� ��鿡�� ���� ��</strong><br />
							<p class="pl20 pt05">(����ܰ���ȯ��ӵ���) �꺻IC �� ����IC �� 11�� �������� 500m ���� �� ��Ÿ� ��  �Ⱦ��û ����ǥ �������� 1,800m ���� (�Ѹ��뼺�ɺ��� ����) �� �Ⱦ米��û���� ��ȸ�� �� 250m ���� �� �ѱ���������</p>
						</li>
					</ol>
					<p class="address">�ּ� : ��⵵ �Ⱦ�� ���ȱ� ����� 212���� 57 (��:431-711) TEL : 031) 380-2114 / FAX : 031) 387-9323</p>
				</div>
				
				<div class="map tab-grp" >
					<div>
						<img src="/images/new_sub/new_map.gif" alt="��������� ã�ƿ��ô±�(�ڼ��� ������ �Ʒ� �� ����)" />
					</div>
					
					<h4>KTX��꿪 ���</h4>
					<ol>
						<li>
							<strong>������ ����</strong><br />
                            <p class="pl20 pt05">- 5005 : �ѱ��������� ����</p>
						</li>
						<li>
							<strong>�ڰ���</strong><br />
							<p class="pl20 pt05">- ��꿪 -> �Ϻμ�ȯ���� -> ��걳��û���� ��ȸ�� -> �����ξ��ũ ���� ��ȸ�� �� ����</p>
						</li>
					</ol>					

					<h4>������ ���</h4>
					<ol>
						<li>
							<strong>������ ����</strong><br />
                            <p class="pl20 pt05">- 5005 : �ѱ��������� ����</p>
						</li>
					</ol>	

					<h4>���ó� ���</h4>
					<ol>
						<li>
							<strong>�ó� ����</strong><br />
                            <p class="pl20 pt05">- 257, 431, 824, 827 : �ѱ��������� ����</p>
						</li>
					</ol>	

				
				
				
				<h4>�ּ�</h4>
					<ol>
						<li>
							<strong>��� �߱� ������ 305 (��:44538) <br/>
							TEL : 052) 216 - 2114	<br/> FAX : 052) 216 - 5900</strong> <br />
                          
						</li>
					</ol>	

					<!--p class="address">�ּ� : ��⵵ �Ⱦ�� ���ȱ� ����� 212���� 57 (��:431-711) TEL : 031) 380-2114 / FAX : 031) 387-9323</p-->
				</div>

			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ȫ���� </td>
						<td class="contact_user"><strong>����� : </strong>�ۼ���</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2114</td>
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