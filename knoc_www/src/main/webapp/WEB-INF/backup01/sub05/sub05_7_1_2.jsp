<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","07");
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
			<div id="subcnts">
				<%@include file="/include/subtop_05.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
					&gt; <span>��������</span> &gt; <span class="locanow">���û���Ʈ</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-24 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/ttl_sub05_7_1.gif" alt="���û���Ʈ" /></h3>
				</div>
				
				<div class="information">
				
					<ul class="tab">
	                   	<li><a href="sub05_7_1.jsp"><img src="/images/information/site_tab01.gif" alt="���� ������� �� ��������"/></a></li>
						<li><a href="sub05_7_1_1.jsp"><img src="/images/information/site_tab02.gif" alt="��������ȸ��, ��ü"/></a></li>
						<li><a href="sub05_7_1_2.jsp"><img src="/images/information/site_tab03on.gif" alt="�ؿܼ���ȸ��, ��ü"/></a></li>
					</ul>
					<div style="clear:both ; height:30px ;"></div>
				
                	<div class="link mT0">
                    	<h5>�ؿ� �ֿ伮��ȸ��</h5>
						<ul>
							<li> <a href="http://www.adnoc.com" target="_blank" title="ADNOC(UAE) Ȩ�������� �̵�(��â)">ADNOC(UAE)</a></li>
							<li> <a href="http://www.bpamoco.com" target="_blank" title="BP Amoco(����) Ȩ�������� �̵�(��â)">BP Amoco(����)</a></li>
							<li> <a href="http://www.chevron.com" target="_blank" title="Chevron Texaco(�̱�) Ȩ�������� �̵�(��â)">Chevron Texaco(�̱�)</a></li>
							<li> <a href="http://www.conoco.com" target="_blank" title="Conoco Phillips(�̱�) Ȩ�������� �̵�(��â)">Conoco Phillips(�̱�)</a></li>
							<li> <a href="http://www.egpc.com.eg" target="_blank" title="EGPC(����Ʈ) Ȩ�������� �̵�(��â)">EGPC(����Ʈ)</a></li>
							<li> <a href="http://www.eni.it" target="_blank" title="ENI(���¸�) Ȩ�������� �̵�(��â)">ENI(���¸�)</a></li>
							<li> <a href="http://www.exxon.mobil.com/corporate/" target="_blank" title="Exxon-Mobil(�̱�) Ȩ�������� �̵�(��â)">Exxon-Mobil(�̱�)</a></li>
							<li> <a href="http://www.gazprom.ru/" target="_blank" title="Gazprom(���þ�) Ȩ�������� �̵�(��â)">Gazprom(���þ�)</a></li>
							<li> <a href="http://www.kpc.com.kw/" target="_blank" title="KPC(�����Ʈ) Ȩ�������� �̵�(��â)">KPC(�����Ʈ)</a></li>
							<li> <a href="http://www.lukoil.com/" target="_blank" title="LUKOIL(���þ�) Ȩ�������� �̵�(��â)">LUKOIL(���þ�)</a></li>
							<li> <a href="http://www.marathon.com/" target="_blank" title="Marathon(�̱�) Ȩ�������� �̵�(��â)">Marathon(�̱�)</a></li>
							<li> <a href="http://www.ongcindia.com/default.asp" target="_blank" title="ONGC(�ε�) Ȩ�������� �̵�(��â)">ONGC(�ε�)</a></li>
							<li> <a href="http://www.pdv.com/" target="_blank" title="PDV(���׼�����) Ȩ�������� �̵�(��â)">PDV(���׼�����)</a></li>
							<li> <a href="http://www.pemex.com/" target="_blank" title="PEMEX(�߽���) Ȩ�������� �̵�(��â)">PEMEX(�߽���)</a></li>
							<li> <a href="http://www.pertamina.com/" target="_blank" title="Pertamina(�ε��׽þ�) Ȩ�������� �̵�(��â)">Pertamina(�ε��׽þ�)</a></li>
							<li> <a href="http://www.petrochina.com.cn/" target="_blank" title="PetroChina(�߱� Ȩ�������� �̵�(��â)">PetroChina(�߱�)</a></li>
							<li> <a href="http://www.petronas.com.my/" target="_blank" title="PETRONAS(�����̽þ�) Ȩ�������� �̵�(��â)">PETRONAS(�����̽þ�)</a></li>
							<li> <a href="http://www.shell.com/" target="_blank" title="R/D Shell(����/�׵�����) Ȩ�������� �̵�(��â)">R/D Shell(����/�׵�����)</a></li>
							<li> <a href="http://www.repsol.es/" target="_blank" title="Repsol-YPF(������) Ȩ�������� �̵�(��â)">Repsol-YPF(������)</a></li>
							<li> <a href="http://www.saudiaramco.com/" target="_blank" title="Saudi Aramco(����) Ȩ�������� �̵�(��â)">Saudi Aramco(����)</a></li>
							<li> <a href="http://www.sinopec.com.cn/" target="_blank" title="SINOPEC(�߱�) Ȩ�������� �̵�(��â)">SINOPEC(�߱�)</a></li>
							<li> <a href="http://www.statoil.com/" target="_blank" title="Statoil(�븣����) Ȩ�������� �̵�(��â)">Statoil(�븣����)</a></li>
							<li> <a href="http://www.surgutneftegas.ru/" target="_blank" title="Surgutneftegaz(���þ�) Ȩ�������� �̵�(��â)">Surgutneftegaz(���þ�)</a></li>
							<li> <a href="http://www.tnk.ru/" target="_blank" title="Tyumen Oil(���þ�) Ȩ�������� �̵�(��â)">Tyumen Oil(���þ�)</a></li>
							<li> <a href="http://www.totalfinaelf.com/" target="_blank" title="TotalFinaElf(������) Ȩ�������� �̵�(��â)">TotalFinaElf(������)</a></li>
						</ul>
                    </div>
					<div class="information">
					<div class="link mT0">
						<h5>�ؿ� ��������Ʈ</h5>
						<ul>
							<li> <a href="http://www.petroleum-economist.com/" target="_blank" title="Petroleum Economist Ȩ�������� �̵�(��â)">Petroleum Economist</a></li>
							<li> <a href="http://www.woodmac.com/" target="_blank" title="Wood Mackenzie Consultants Ȩ�������� �̵�(��â)">Wood Mackenzie Consultants</a></li>
							<li> <a href="http://www.ieds.com/" target="_blank" title="IHS Energs Ȩ�������� �̵�(��â)">IHS Energs</a></li>
							<li> <a href="http://www.piwpubs.com/" target="_blank" title="PIW PUBLICATIONS Ȩ�������� �̵�(��â)">PIW PUBLICATIONS</a></li>
							<li> <a href="http://www.bloomberg.com/energy/" target="_blank" title="Bloomberg Energy Ȩ�������� �̵�(��â)">Bloomberg Energy</a></li>
							<li> <a href="http://www.platts.com/" target="_blank" title="Platt's Ȩ�������� �̵�(��â)">Platt's</a></li>
							<li> <a href="http://www.iea.org/" target="_blank" title="International Energy Agency Ȩ�������� �̵�(��â)">International Energy Agency</a></li>
							<li> <a href="http://www.eia.doe.gov/" target="_blank" title="Energy Information Administration Ȩ�������� �̵�(��â)">Energy Information Administration</a></li>
						</ul>
                    </div>


					
                    <div style="clear:both;"></div>
                </div>
            </div>
            
            <div class="new_officer" style="margin-left:0 ;">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<colgroup>
					<col width="auto" />
					<col width="22%" />
					<col width="22%" />
				</colgroup>
				<tbody>
					<tr>
						<td><strong>���μ� : </strong>�濵������ ȫ����</td>
						<td><strong>����ó : </strong>052-216-2229</td>
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