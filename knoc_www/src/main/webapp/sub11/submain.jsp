<%@ page language="java" contentType="text/html; charset=EUC-KR"
pageEncoding="EUC-KR"%>
<%@ page import = "kr.co.knoc.util.*"%>
<%@ page import = "kr.co.knoc.etc.*"%>
<jsp:useBean id="BoardMa" scope="page" class="kr.co.knoc.etc.BoardLimit" />
<% request.setCharacterEncoding("euc-kr"); %>    
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","11");
	application.setAttribute("gNavMenuDepth2","00");
	application.setAttribute("gNavMenuDepth3","00");
	application.setAttribute("gNavMenuDepth4","00");
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>  

<%!
	public String getNewArticle(java.util.Date writeday,String contextRoot){
		java.util.Date today = new java.util.Date();
		String newImg=""; 
		if (today.getTime()-writeday.getTime() < (1000*60*60*24*1)){
			newImg = "<img src='"+contextRoot+"' border='0' alt='new' />" ;
		}
		return newImg;
	}  
%>

<%@include file="/include/comheader.jsp"%>

<%@include file="/include/subtopnavi_new.jsp"%><!--// subtopNavi: start //-->
    
    <div id="smcontents">
		<!--// leftmenu: start //-->
        <%@include file="/include/sub_leftmenu_new.jsp"%>
        <!--// leftmenu: end //-->
        
        <div id="rightarea" class="mgn_top">
			<div id="smainvisual">
				<img src="/images/new_sub/cyber_title.gif" alt="���̹�ȫ����(Cyber Public Relations) �����ϰ� ǳ��ο� ������ ����� ���� ������ ���� �ѱ��������� ȯ��� ����� ��ȭ�� �̷�� �濵Ȱ���� ���� �Ƹ��ٿ� ��� �ູ�� �߱��մϴ�. 
" />
			</div>
			
            <div id="smcnts_4">
                <div class="smsec1">
               
					<div class="sub_main_tab" id="NEWS" style="display:block" style="position:relative ; z-index:1 ;">
						<h3><img src="/images/information/img_tab_02_on.gif" id="mtabs2" alt="�����ڷ�" /></h3>                       
                        <ul class="mlistul">
<%
ArrayList boardlimit = BoardMa.getNeoBoard("NEOBOARD_NEWS",5,"");
if (boardlimit.size() == 0) {
%>
							<li>
								<div class="txtli">��ϵ� �ڷᰡ �����ϴ�.</div>
							</li>
<%
} else {
	Iterator iter = boardlimit.iterator();
	while(iter.hasNext()){
		BoardBean bb = (BoardBean)iter.next();
%>
							<li>
								<div class="txtli"><a href="/sub11/sub11_1.jsp?num=<%=bb.getNo() %>&amp;mode=view&amp;bid=NEWS"><%=EtcUtil.getTitleLimit(bb.getSubject(),34)%></a> <%=getNewArticle(bb.getRegDate(), "/images/2011/icon_new.gif") %></div>
								<div class="dateli">[<%=bb.getRegDateString("yyyy.MM.dd") %>]</div>
							</li>
<%		
	}
}	
%>			                                                    
                        </ul>
						<div class="more"><a href="/sub11/sub11_1.jsp"><img src="/images/main/btn_more.gif" alt="�����ڷ� ������" /></a></div>
                	</div>
                    <div style="clear:both;"></div>
                </div>
                <div class="submain_05">
            		<ul>
            			<li><a href="/sub11/sub11_7_1_1.jsp"><img src="/images/submain/sub07_01.gif" alt="��� �ٷΰ���" /></a></li>
            			<li style="float:none ;"><a href="/sub11/sub11_2.jsp"><img src="/images/submain/sub07_02.gif" alt="���䴺��" /></a></li>
            			<li><a href="/sub11/sub11_3.jsp"><img src="/images/submain/sub07_03.gif" alt="ȫ������" /></a></li>
            			<li><a href="/sub11/sub11_4.jsp"><img src="/images/submain/sub07_04.gif" alt="�ڷ����" /></a></li>
            			<li><a href="/sub11/sub11_5_1.jsp"><img src="/images/submain/sub07_05.gif" alt="ȫ�� ���๰" /></a></li>
            			<!--li><a href="/sub11/sub11_6.jsp"><img src="/images/submain/sub07_06.gif" alt="Cafe Oleum" /></a></li-->
            		</ul>
            	</div>
                <!-- 
				<div class="smsec2">                    
					<div class="infoMain01">						
						<h3><img src="/images/information/main_tit_01.gif" alt="���̹�ȫ����"/></h3>						
						<p class="mT10"><img src="/images/information/main_txt_01.gif" alt="�������� ���� ��������" /></p>						
						<p class="mT10"><a href="/sub05/sub05_3_1.jsp"><img src="/images/common/btn_main_go.gif" alt="���̹�ȫ���� �������� �̵�" /></a></p>
					</div>
					
					<div class="infoMain03">						
						<h3><img src="/images/information/main_tit_02.gif" alt="����������"/></h3>						
						<p class="mT10"><img src="/images/information/main_txt_02.gif" alt="������ ���� �Ǵ� ��ǥ�ϴ� ���·� ������ �����մϴ�." /></p>						
						<p class="mT10"><a href="/sub05/sub05_4_1.jsp"><img src="/images/common/btn_main_go.gif" alt="���������� �������� �̵�" /></a></p>
					</div>
				</div>    
				
				<div class="smsec3">					
					<div class="infoMain02">						
						<h3><img src="/images/information/main_tit_03.gif" alt="�ڷ��"/></h3>						
						<p class="mT10"><img src="/images/information/main_txt_03.gif" alt="���������� ������ �ڷᰡ �ִ� ���Դϴ�."/></p>						
						<p class="mT10"><a href="/sub05/sub05_5_1.jsp"><img src="/images/common/btn_main_go.gif" alt="�ڷ�� �������� �̵�" /></a></p>
					</div>
					
					<div class="infoMain04">						
						<a href="/sub05/sub05_6.jsp" title="�������� �������� �̵�"><img src="/images/information/main_tit_0401.gif" alt="�������� �������� �̵�" /></a><a href="/sub05/sub05_7_1.jsp" class="mL60"><img src="/images/information/main_tit_0402.gif" alt="���û���Ʈ �������� �̵�" /></a>					
					</div>                
				</div>
				 -->
			</div>        
		</div>    
	</div>
    
    <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>



</body>
</html>

