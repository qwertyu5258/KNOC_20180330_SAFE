<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>

<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","13");
	application.setAttribute("gNavMenuDepth3","11");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>        

<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->

<script type="text/javascript">

	$(function(){
		$("#infArea img").mouseover(function(){
			var src = $(this).attr("src");
			if(src.indexOf("_on") == -1){
				$(this).attr("src", src.replace(".gif", "_on.gif"));				
			}
		}).mouseout(function(){
			var src = $(this).attr("src");
			if(src.indexOf("_on") > -1){
				$(this).attr("src", src.replace("_on", ""));
			}
		});
	});
	
</script>

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
					&gt; <span>��������</span> 
					&gt; <span>����������ǥ</span>
					&gt; <span class="locanow">ī�װ��� ����</span>
				</div>
				<!--// location: end //-->
				
				<!-- sch_area -->
				<form name="searchform" action="./sub05_12_list.jsp" method="post">
				<input name="ses" type="hidden" value="USERSESSION">
				<input name="mode" type="hidden" value="list">		
					<!--// searchbox: end //-->
					<div id="schsec" class="st_box1">
						<fieldset class="schset">
							<legend>Search Box</legend>
							
							<select name="sType" title="��ϰ˻�����" id="sType">
								<option value="TITLE">����</option>
								<option value="DEPARTMENT"">�μ���</option>
							</select>
							
							<label class="nlabel" for="schinput">��ϰ˻�</label>
							<input name="sWord" class="input" id="schinput" type="text" value="">							
							
							<div class="btndv"><input style="width: 33px; height: 19px;" type="image" alt="�˻�" src="/neoboard/skin/skin01/images/btn_search.gif"></div>
					  </fieldset>
					</div>
					<!--// searchbox: end //-->
				</form>
				<!-- //sch_area -->
								
				<div style="width:100%; text-align:center; margin-top:40px;">
					<div id="infArea" style="position:relative; left:20px ;">
						<ul class="con_list" >
							<li><a href="/sub05/sub05_12_list.jsp?gpk=1"><img src="/images/information/sub04_tit1_1.gif" alt="ȸ����Ȳ" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=2"><img src="/images/information/sub04_tit1_2.gif" alt="HSEQ" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=3"><img src="/images/information/sub04_tit1_3.gif" alt="����" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=4"><img src="/images/information/sub04_tit1_4.gif" alt="�����ȹ��" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=5"><img src="/images/information/sub04_tit1_5.gif" alt="������" /></a></li>
						</ul>	
						<ul class="con_list">
							
							<li><a href="/sub05/sub05_12_list.jsp?gpk=6"><img src="/images/information/sub04_tit2_1.gif" alt="��ȸ����" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=7"><img src="/images/information/sub04_tit2_2.gif" alt="�λ纹��" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=8"><img src="/images/information/sub04_tit2_3.gif" alt="�����繫" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=9"><img src="/images/information/sub04_tit2_4.gif" alt="�������" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=10"><img src="/images/information/sub04_tit2_5.gif" alt="�������" /></a></li>
						</ul>
						<ul class="con_list">							
							<li><a href="/sub05/sub05_12_list.jsp?gpk=11"><img src="/images/information/sub04_tit3_1.gif" alt="��������" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=12"><img src="/images/information/sub04_tit3_2.gif" alt="��������" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=13"><img src="/images/information/sub04_tit3_3.gif" alt="�˶�������" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=14"><img src="/images/information/sub04_tit3_4.gif" alt="��������" /></a></li>
							<li><a href="/sub05/sub05_12_list.jsp?gpk=15"><img src="/images/information/sub04_tit3_5.gif" alt="ȫ��" /></a></li>
						</ul>
						
				    </div>
			    </div>
			    <div style="clear:both;"></div>
					<!-- div class="new_officer">
						<table summary="���μ� �� ����ó ������">
						<caption>���μ� �� ����ó ������</caption>
						<tbody>
							<tr>
								<td class="write_day"></td>
								<td class="contact_team"><strong>���μ� : </strong>�ѹ�����ó ���������</td>
								<td class="contact_user"><strong>����� : </strong>������</td>
								<td class="contact_tel"><strong>����ó : </strong>052-216-2607</td>
							</tr>
						</tbody>
						</table>
					</div-->
				</div>
			
		</div>
	</div>
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>

</body>
</html>