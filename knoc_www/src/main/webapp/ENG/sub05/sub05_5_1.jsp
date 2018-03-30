<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","06");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>   

<%@ include file="../include/topmenu.jsp" %>
<!-- topmenu end -->


<!-- contents -->
<div id="container">
	<table width="100%" height="290" border="0" cellpadding="1" cellspacing="0">
	
	  <tr>
	    <td align="center" valign="top"><table width="1000" height="124" border="0" cellpadding="0" cellspacing="0">
	      <tr>
	        <td width="180" align="right" valign="top"><!-- leftmenu --><%@ include file="../include/leftmenu.jsp" %></td>
	        <td width="40">&nbsp;</td>
	        <td valign="top">
	        <table width="760" border="0" cellspacing="0" cellpadding="0">
	         <tr>
	            <td height="30">&nbsp;</td>
	          </tr>
	          <tr>
	            <td><!-- contimg --><%@ include file="../include/contimg05.jsp" %></td>
	          </tr>
	          <tr>
	            <td height="34" align="right"><p><img src="../images/ico_home.gif" alt="home" /> &gt;  Service &gt; <span class="loca_text">Related Site</span></td>
	          </tr>
	           <tr>
	            <td height="24" align="left" background="../images/sub06/title_line_bg.gif"><img src="../images/sub05/site_tit.gif" alt="Related Site" border="0" /></td>
	          </tr>
	           <tr>
	            <td height="40" align="center">&nbsp;</td>
	          </tr>
	          <tr>
	            <td align="" valign="top">
	            
	            <div class="eng_site">
	            	<ul class="tab">
	                   	<li><a href="sub05_5.jsp"><img src="/ENG/images/sub05/eng_site_tab01.gif" alt="Government Corporations and Domestic University"/></a></li>
						<li><a href="sub05_5_1.jsp"><img src="/ENG/images/sub05/eng_site_tab02on.gif" alt="Domestic Oil Organizations"/></a></li>
						<li><a href="sub05_5_2.jsp"><img src="/ENG/images/sub05/eng_site_tab03.gif" alt="Overseas Oil Corporations & Organizations"/></a></li>
					</ul>
					<div style="clear:both ; height:30px ;"></div>  
					
					<div class="link">
						<h5>Domestic Oil Organizations</h5>
						<ul>
							<li><a href="http://www.emrd.or.kr/english/index.jsp" target="_blank">Energy & Mineral Resources Development Association of Korea</a></li>
							<li><a href="http://www.keei.re.kr/main.nsf/index_en.html" target="_blank">Korea Energy Economics Institute</a></li>
							<li><a href="http://www.kier.re.kr/eng/" target="_blank">Korea Institute of Energy Research</a></li>
							<li><a href="http://www.seg.or.kr/eng.html" target="_blank">Korean Society of Earth and Exploration Geophysicists</a></li>
							<li><a href="http://www.kigam.re.kr/english/index.asp" target="_blank">Korea Institute of Geoscience and Mineral Resources</a></li>
							<li><a href="http://www.krict.re.kr/english/index.php" target="_blank">Korea Research Institute of Chemical Technology</a></li>
							<li><a href="http://eng.oil.or.kr/" target="_blank">Korea Petroleum Association</a></li>
							<li><a href="http://www.kgu.or.kr/eng/index.html" target="_blank">The Korea Gas Union</a></li>
							<li><a href="http://www.kpia.or.kr/eng/kpiaintro/intro_01.html" target="_blank">Korea Petrochemical Industry Association</a></li>
						</ul>
					</div>
	             	
	            </div>
	            </td>
	          </tr>
	          <tr>
	              	<td>
	<div style="height:20px ;"></div>
	<div class="new_officer">
		<table summary="Department Contacts Updated">
		<caption>Department Contacts Updated</caption>
		<colgroup>
			<col width="auto" />
			<col width="28%" />
			<col width="22%" />
		</colgroup>
		<tbody>
			<tr>
				<td><strong>Department : </strong>Corporate Coordination</td>
				<td><strong>Contacts : </strong>+82)31-380-2146</td>
				<td><strong>Updated : </strong>2015-09-30</td>
			</tr>
		</tbody>
		</table>
	</div><!-- new_officer end -->  
	              	</td>
	              </tr>
	        </table></td>
	      </tr>
	    </table></td>
	  </tr>
	</table>
</div>
<!-- contents end-->

<!-- footer -->
<%@ include file="../include/copyright.jsp" %>
<!-- footer end-->


</body>
</html>
