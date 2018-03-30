<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.participate.*"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "java.util.*"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="ParticipateBa" scope="page" class="kr.co.knoc.participate.ParticipateManager" />
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","11");
	application.setAttribute("gNavMenuDepth2","05");
	application.setAttribute("gNavMenuDepth3","04");
	application.setAttribute("gNavMenuDepth4","01");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>    
<% request.setCharacterEncoding("euc-kr"); %>
<%
	int pageNo = etcutil.checkNullInt(request.getParameter("page").toString(), 1);

	String schType = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schType")), "8859_1");
	String schText = etcutil.strBlockSpecialTags(etcutil.checkNull(request.getParameter("schText")), "8859_1");
	

	ParticipateManager pbm = new ParticipateManager(); 
	HashMap dataMap = pbm.getParticipateBbsInfo(etcutil.checkNullInt(request.getParameter("question_nid").toString(), 0),etcutil.checkNullInt(request.getParameter("participate_bbs_nid").toString(), 0));

%> 

<%@include file="/include/comheader.jsp"%>
<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
<div id="contentsLayer">
<%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->

<script type="text/javascript">
<!--
	function goDeletePage(questionSeq,participateSeq){
		if(confirm("���� �����Ͻðڽ��ϱ�?")){
			document.getElementById("questionSeq").value = questionSeq;
			document.getElementById("participateSeq").value = participateSeq;
			
			document.deleteForm.submit();
		}
	}
//-->
</script>

		<form id="deleteForm" name="deleteForm" method="post" action="reader_participate_delete.jsp">
			<input type="hidden" id="questionSeq" name="questionSeq" value="" />
			<input type="hidden" id="participateSeq" name="participateSeq" value="" />
		</form>		

		<div id="rightarea">
				<div id="subcnts">
					<%@include file="/include/subtop_11.jsp"%>
					<!--// location: start //-->
					<div class="locadv">
						<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
						&gt; <span>���̹�ȫ����</span> &gt; <span>ȫ�����๰</span> &gt; <span>�纸 - �������</span> &gt; <span class="locanow">�纸��������</span>
					</div>
					<!--// location: end //-->
				
				<div class="pagetle">
					<h3 class="tleimg"><img src="/images/information/sabo_tit.gif" alt="�纸��������" /></h3>
				</div>
							
					<div id="boardsec">
						<form action="reader_participate_edit.jsp" method="post" name="form01" id="form01">
							<input type="hidden" id="questionNo" name="questionNo" value="1" />
							<input type="hidden" id="participate_bbs_seq" name="participate_bbs_seq" value="" />
							
							<table cellspacing="0" cellpadding="0" class="viewtype" summary="�纸 ���� �����Խ����� ������.">
								<caption>�纸 ���� ���� ������</caption>
								<colgroup>
									<col width="100px" />
									<col width="260px" />
									<col width="100px" />
									<col width="260px" />
								</colgroup>			
								<tr>
									<th scope="row" class="th1"><label for="writer">����</label></th>
									<td class="td1"><%=etcutil.checkNull(dataMap.get("WRITER").toString())  %></td>
									<th scope="row" class="th1"><label for="bbs_pass">��й�ȣ</label></th>
									<td class="cnts1" ><%=etcutil.checkNull(dataMap.get("BBS_PASS").toString())  %></td>
								</tr>
								<tr>
									<th scope="row" class="th1"><label for="bbs_cellphone">�޴���</label></th>
									<td class="td1"><%=etcutil.checkNull(dataMap.get("BBS_CELLPHONE").toString())  %></td>
									<th scope="row" class="th1"><label for="bbs_email">�̸���</label></th>
									<td class="td1"><%=etcutil.checkNull(dataMap.get("BBS_EMAIL").toString())  %></td>
								</tr>
								<tr>
									<th scope="row" class="th1"><label for="begin_title">���Ӹ�</label></th>
									<td class="td1" colspan="3">
									<%
										
										if("qna".equals(etcutil.checkNull(dataMap.get("BEGIN_TITLE").toString()))){
											out.println("��������");
										}else if("cnq".equals(etcutil.checkNull(dataMap.get("BEGIN_TITLE").toString()))){
											out.println("�纸�ǰ�");
										}else{
											out.println("�纸��û");
										}
									%>
									</td>
								</tr>
								<tr>
									<th scope="row" class="th1"><label for="bbs_title">����</label></th>
									<td class="td1" colspan="3"><%=etcutil.checkNull(dataMap.get("BBS_TITLE").toString())  %></td>
								</tr>
								
								<tr>
									<th scope="row" class="th1"><label for="bbs_contents">��&nbsp;&nbsp;��</label></th>
									<td class="cnts1" colspan="3"><%=etcutil.checkNull(dataMap.get("BBS_CONTENTS").toString().replaceAll("\r\n","<br />"))  %></td>
								</tr>
			
							</table>
						</form>		
									
						<div class="boardbtm mtm10">
							<div class="btnsec">
								<a href="reader_participate_modify.jsp?question_nid=1&participate_bbs_nid=<%=etcutil.checkNull(dataMap.get("PARTICIPATE_BBS_NID").toString())  %>&page=<%=pageNo%>&schType=<%=schType%>&schText=<%=schText%>"><img src="/images/board/btn_modi.gif" alt="����" /></a>
								<a href="#Delete" onclick="goDeletePage('<%=etcutil.checkNull(dataMap.get("QUESTION_NID").toString())  %>','<%=etcutil.checkNull(dataMap.get("PARTICIPATE_BBS_NID").toString())  %>'); return false;"><img src="/images/board/btn_del.gif" alt="����" /></a>
								<a href="reader_participate_bbs.jsp?question_nid=1&page=<%=pageNo%>&schType=<%=schType%>&schText=<%=schText%>"><img src="/images/board/btn_list.gif" alt="���" /></a>
							</div>
						</div>								
							
					</div>	
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
						<td><strong>���μ� : </strong>�濵������ ȫ����</td>
						<td><strong>����ó : </strong>031-380-2149</td>
						<td></td>
					</tr>
				</tbody>
				</table>
			</div><!-- new_officer end -->
				
			</div>
		</div>
	
		<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->

	</body>
</html>