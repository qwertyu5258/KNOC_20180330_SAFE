<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","04");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>    
<%@include file="/include/comheader.jsp"%>

  <!--// subtopNavi: start //-->
  <%@include file="/include/subtopnavi_new.jsp"%>

    <div id="contents">
        <%@include file="/include/sub_leftmenu_new.jsp"%><!--// leftmenu: start //-->
        <div id="rightarea">
            <div id="subcnts">
               <%@include file="/include/subtop_member.jsp"%>
                <!--// location: start //-->
                <div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>	
                    &gt; <span>��Ÿ����</span> &gt; <span class="locanow">������α׷�</span></div>
        <!--// location: end //-->
            
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_viewer.gif" alt="������α׷�" /></h3>
                </div>
                <div id="boardsec">
					<p class="pb15">�ѱ���������� ���� ������ �ڷ���� �����ϰ� �ֽ��ϴ�. �����Ǵ� �پ��� ������ ����,���ϵ��� �ش繮���� ������ ���� �ִ� ���α׷��� �ʿ��մϴ�.<br />��ǻ�Ϳ� ���α׷��� ��ġ�Ǿ� ���� ������ ��� �Ʒ��� ��Ͽ��� �ʿ��� ���α׷��� �ٿ�ε� �޾� ��ġ�Ͻñ� �ٶ��ϴ�.</p>
               		<table cellspacing="0" cellpadding="0" border="0" class="jump_table">
					<colgroup><col width="200px" /><col width="520px" /></colgroup>
						<tr>
							<th scope="row" valign="middle" style="border-bottom:#D8D8D8 solid 1px;"><img src="../images/member/icon_word.gif" alt="Microsoft Word Viewer" /></th>
							<td>MS-Word 97/2003������ �б�/�μⰡ �����մϴ�. <a href="/upload/data/viewer/wdviewer.exe"><img src="../images/information/btn_download.gif" class="vMid" alt="Microsoft Word Viewer �ٿ�ε�"/></a></td>
						</tr>
						<tr>
							<th scope="row" valign="middle" style="border-bottom:#D8D8D8 solid 1px;"><img src="../images/member/icon_excel.gif" alt="Microsoft Excel Viewer" /></th>
							<td>MS-Excel 97/2003������ �б�/�μⰡ �����մϴ�. <a href="/upload/data/viewer/xlviewer.exe"><img src="../images/information/btn_download.gif" class="vMid" alt="Microsoft Excel Viewer �ٿ�ε�"/></a></td>
						</tr>
						<tr>
							<th scope="row" valign="middle" style="border-bottom:#D8D8D8 solid 1px;"><img src="../images/member/icon_ppt.gif" alt="Microsoft PowerPoint Viewer" /></th>
							<td>MS-PowerPoint 97/2003������ �б�/���������̼ǰ� �����մϴ�. <a href="/upload/data/viewer/ppviewer.exe"><img src="../images/information/btn_download.gif" class="vMid" alt=" Microsoft PowerPoint Viewer�ٿ�ε�"/></a></td>
						</tr>
						<tr>
							<th scope="row" valign="middle" style="border-bottom:#D8D8D8 solid 1px;"><img src="../images/member/icon_pdf.gif" alt="��ũ�κ� ����" /></th>
							<td>PDF����(*.pdf) �� ���� �б�/�μⰡ �����մϴ�. <a href="/upload/data/viewer/adbeRdr70_kor.exe"><img src="../images/information/btn_download.gif" class="vMid" alt="��ũ�κ� ���� �ٿ�ε�"/></a></td>
						</tr>
						<tr>
							<th scope="row" valign="middle" style="border-bottom:#D8D8D8 solid 1px;"><img src="../images/member/icon_hwp.gif" alt="�ѱ�" /></th>
							<td>�ѱ۹���(*.hwp)�� ���� �б�/�μⰡ �����մϴ�. <a href="/upload/data/viewer/HwpViewer.exe"><img src="../images/information/btn_download.gif" class="vMid" alt="�ѱ� �ٿ�ε�"/></a></td>
						</tr>
					</table>
				</div>
            </div>
      </div>
    
        <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
    </div>
</div>
</body>
</html>