<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/neoboardtaglib.tld" prefix="neo" %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","13");
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
				<%@include file="/include/subtop_01.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>����Ұ�</span>
                    &gt; <span>�����ȭ</span>
                    &gt; <span class="locanow">CIP</span>
				</div>
				<!--// location: end //-->
<script type="text/javascript" src="/ebook/kor/common.js"></script>
<script type="text/javascript" src="/ebook/eng/common.js"></script>				
				
				<div class="pagetle">
					<h3><img src="/images/info/ttl_sub01_2_5.gif" alt="CIP" /></h3>
				</div>
								
				<div class="cip" style=";">
					
					<div class="cip_tab">
						<ul>
							<li><a href="/sub01/sub01_2_5.jsp"><img src="/images/cip/cip_tab01.gif" alt="identifier" /></a></li>
							<li><a href="/sub01/sub01_2_5_01.jsp"><img src="/images/cip/cip_tab02_on.gif" alt="signature" /></a></li>
							<li><a href="/sub01/sub01_2_5_02.jsp"><img src="/images/cip/cip_tab03.gif" alt="basic elements" /></a></li>
							<li><a href="/sub01/sub01_2_5_03.jsp"><img src="/images/cip/cip_tab04.gif" alt="application system" /></a></li>
						</ul>
						<div class="dummy"></div>
						<p class="ebook_kor"><a href="#kor" onclick="ecatalog('/ebook/kor/','','4','yes');"><img src="/images/cip/btn_ebook_kor.gif" alt="e-book����" /></a></p>
						<p class="ebook_eng"><a href="#eng" onclick="ecatalog('/ebook/eng/','','5','yes');"><img src="/images/cip/btn_ebook_en.gif" alt="e-book����" /></a></p>
					</div><!-- cip_tab end -->
					
					<div class="cip_down">
						<ul>
							<li>		
							<a href="/cip_down/signature/BS2_SIGNATURE_ai.zip"><img src="/images/cip/btn_ai_dw.gif" alt="AI �ٿ�ε�" /></a>
							</li>
							<li>
							<a href="/cip_down/signature/BS2_SIGNATURE_jpg.zip"><img src="/images/cip/btn_jpg_dw.gif" alt="JPG �ٿ�ε�" /></a>
							</li>
						</ul>	
					</div>
					
					<div class="cip_cont">
						
						<h4><img src="/images/cip/sig_tit02.gif" alt="�ñ״��� �� ����" /></h4>
						
						<div class="cip_box_top"></div>
						<div class="cip_box_mid">
							
							<p class="cip_txt">
								�ñ״���� ���帶ũ�� �ѱ��������� �ΰ�Ÿ���� ������ ��ʷ� ������ ������ �����Ȳ�� �´� ������ ���� Ȱ���� �� ������, 
								��� ������ ����� �Ŵ��� CD�� ��ǻ�� �����Ϳ� ���� ��ҡ�Ȯ���Ͽ� ����ϴ� ���� ��Ģ���� �Ѵ�.
							</p>
							<p class="cip_img"><img src="/images/cip/sig_img01.gif" alt="knoc �ñ״��� �� ���� �ѹ�" /></p>
							
							
						</div>
						<div class="cip_box_bot"></div>
						
						<div style="clear:both ; height:30px ;"></div>
						
						<h4><img src="/images/cip/sig_tit01.gif" alt="�ñ״��� ��������" /></h4>
						
						<div class="cip_box_top"></div>
						<div class="cip_box_mid">
							
							<p class="cip_img"><img src="/images/cip/sig_img02.gif" alt="knoc �ñ״��� �� ���� �������� �¿�����" /></p>
							
						</div>
						<div class="cip_box_bot"></div>
						
					</div><!-- cip_cont end -->
					
				</div><!-- cip end -->
				
				<div style="clear:both ;"></div>
				
			</div>
			
			<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
				<tbody>
					<tr>
						<td class="write_day"></td>
						<td class="contact_team"><strong>���μ� : </strong>��ȹ����ó ȫ����</td>
						<td class="contact_user"><strong>����� : </strong>������</td>
						<td class="contact_tel"><strong>����ó : </strong>052-216-2228</td>
					</tr>
				</tbody>
				</table>
			</div>
			<!-- new_officer end -->
			
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>

</body>
</html>