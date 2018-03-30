<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","01");
	application.setAttribute("gNavMenuDepth2","07");
	application.setAttribute("gNavMenuDepth3","05");
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
	        <td class="lnb_area">
			<!-- leftmenu -->
			<%@ include file="../include/leftmenu.jsp" %>
			<!-- //leftmenu -->
			</td>
	        <td width="30">&nbsp;</td>
	        <td valign="top">
	        <table class="con_wrap" border="0" cellspacing="0" cellpadding="0">
	          <tr>
	            <td><!-- contimg --><%@ include file="../include/contimg01.jsp" %></td>
	          </tr>
	          <tr>
	            <td height="34" align="right"><p><img src="../images/ico_home.gif" alt="home" /> &gt; About Us &gt;Company Culture &gt;  <span class="loca_text">  Business Principles</span> </td>
	          </tr>
	           <tr>
	            <td height="24" align="left" background="../images/sub06/title_line_bg.gif"><img src="../images/sub01/ttl_sub08_02.gif" alt="Business Principles" width="124px" height="24px" /></td>
	          </tr>
	           <tr>
	            <td height="40" align="center">&nbsp;</td>
	          </tr>
	          <tr>
	            <td align="center" valign="top">
	                <table class="contents" width="720" border="0" cellspacing="0" cellpadding="0">
	             
	                       <tr>
	                    <td style="padding:10px 0 0 10px;"><img src="../images/sub01/sub01_08_img02.gif"  style="width:744px; height:789px; "
	                    alt="Integrity-[Aim] To fulfill social roles and responsibilities as a part of Korean society and as a public company by performing our duty with a sense of ownership 
	                    [Contents]
						�� Achieve individual growth and contribute to the growth of the company by developing a sense of ownership
						�� Accomplish tasks as a core public company in charge of national energy security
						��Grow into a company trusted by the people by fulfilling our social responsibilities
						
						Capability & Organic Growth- [Aim] To pursue balanced internal and external growth by focusing on enhancing the enterprise value and achieving qualitative advances in the areas of technology and management
						[Contents]
						��Stay faithful to KNOC's main task of pursuing growth through successful exploration. 
						��Strengthen global competitiveness by securing core technology and business management capabilities.
						�� Become a value creating company with internal stability by enhancing company capabilities. 
						
						Sustainable Development-[Aim] To respond preemptively to the changes in, the external environment, and maximize KNOC's capabilties to secure sustainable growth. 
						[Contents]
						�� Proactively respond to the changes in business environment by securing competitiveness and focused capabilities.
						��Actively prepare for the future by expanding into non-conventional petroleum and gas development
						��Pursue the happiness of the Korean people, and become a global company with sustainable growth 
	                     " /></td>
	                  </tr> 
	                  <tr>
	                    <td height="30">&nbsp;</td>
	                  </tr>
	                  <tr>
	                  	<td>
	<div style="height:20px ;"></div>
	<div class="new_officer">
		<table summary="Department Contacts Updated">
		<caption>Department Contacts Updated</caption>  
		<tbody>
		    <tr>
		    	<td class="write_day">&nbsp;</td>
		        <td class="contact_team"><strong>Department : </strong>Planning &amp; Coordination Dept.</td>
		        <td class="contact_tel"><strong>Contacts : </strong>+82)52-216-2228</td>	        
		    </tr>
		</tbody>
		</table>
	</div><!-- new_officer end -->                  	
	                  	</td>
	                  </tr>
	                </table>
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
