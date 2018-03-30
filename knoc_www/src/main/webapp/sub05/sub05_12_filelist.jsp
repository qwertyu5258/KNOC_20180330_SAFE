<%@page import="com.neoboard.data.AttachFile"%>
<%@page import="kr.co.knoc.gov_public.GovPublicBean"%>
<%@page import="kr.co.knoc.util.EtcUtil"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%>
<%@ taglib uri="/WEB-INF/tlds/sitetaglib.tld" prefix="stl" %>
<%@ taglib uri="/WEB-INF/tlds/sitectrltaglib.tld" prefix="sctrl" %>

<jsp:useBean id="pp" class="kr.co.knoc.tags.pager.PageProperty" scope="request"/>
<jsp:useBean id="etcutil" scope="page" class="kr.co.knoc.util.EtcUtil" />
<jsp:useBean id="govPublicManager" scope="page" class="kr.co.knoc.gov_public.GovPublicManager" />
<% request.setCharacterEncoding("euc-kr"); %>
<%
	String gpk = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("gpk")));
	String sType = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("sType")));
	String sWord = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("sWord")),"8859_1");

	String gov_public_kind_nm = "";
	String[] gov_public_kind_nm_arr = {
			"���հ˻�","ȸ����Ȳ", "HSEQ", "����", "�����ȹ",
			"������", "��ȸ����", "�λ纹��", "�����繫",
			"�������", "�������", "��������", "��������",
			"�˶�������", "��������", "ȫ��"};

	String[] gNavMenuDepth4Arr = {
			"00", "01", "02", "03", "04",
			"05", "06", "07", "08",
			"09", "10", "11", "12",
			"13", "14", "15"
	};

	String[] imageArr = {
			"/images/information/ttl_sub05_3_total.gif", //���հ˻�
			"/images/information/ttl_sub04_9_2_1.gif", //ȸ����Ȳ
			"/images/information/ttl_sub04_9_2_2.gif", //HSEQ
			"/images/information/ttl_sub04_9_2_3.gif", //����
			"/images/information/ttl_sub04_9_2_4.gif", //�����ȹ
			"/images/information/ttl_sub04_9_2_5.gif", //������
			"/images/information/ttl_sub04_9_2_6.gif", //��ȸ����
			"/images/information/ttl_sub04_9_2_7.gif", //�λ纹��
			"/images/information/ttl_sub04_9_2_8.gif", //�����繫
			"/images/information/ttl_sub04_9_2_9.gif", //�������
			"/images/information/ttl_sub04_9_2_10.gif", //�������
			"/images/information/ttl_sub04_9_2_11.gif", //��������
			"/images/information/ttl_sub04_9_2_12.gif", //��������
			"/images/information/ttl_sub04_9_2_13.gif", //�˶�������
			"/images/information/ttl_sub04_9_2_14.gif", //��������
			"/images/information/ttl_sub04_9_2_15.gif" //ȫ��
	};


	String[][] arr_str = {
			
		    // ȸ����Ȳ1
			{ "374",	"�����",	"������",	"052-216-2126" },
			{ "360",	"�����",	"Ȳ�ڿ�",	"052-216-2208" },
			{ "������ �ż� ��û",	"��ȹ����ó",	"������",	"052-216-2212" },
			{ "189",	"��ȹ����ó",	"����ȭ",	"052-216-2210" },
			{ "190",	"��ȹ����ó",	"����ȭ",	"052-216-2210" },
			{ "121",	"��ȹ����ó",	"������",	"052-216-2212" },
			{ "������ �ż� ��û",	"��ȹ����ó",	"������",	"052-216-2212" },
			{ "������ �ż� ��û",	"��ȹ����ó",	"�迬��",	"052-216-2256" },
			{ "186",	"��ȹ����ó",	"�豤��",	"052-216-2226" },
			{ "368",	"��ȹ����ó",	"������",	"052-216-2228" },
			{ "337",	"��ȹ����ó",	"�̻�",	"052-216-2209" },
			{ "126",	"��������ó",	"�赵��",	"052-216-2386" },
			{ "105",	"�ѹ�����ó",	"������",	"052-21-2607" },
			{ "������ �ż� ��û",	"�ѹ�����ó",	"������",	"052-21-2607" },
			{ "167",	"�ѹ�����ó",	"������",	"052-21-2607" },
			{ "������ �ż� ��û",	"�ѹ�����ó",	"�ǽ���",	"052-216-3030" },
			{ "169",	"�ѹ�����ó",	"�̵���",	"052-216-2605" },
			{ "106",	"�ѹ�����ó",	"������",	"052-216-2603" },
			{ "103",	"�ѹ�����ó",	"������",	"052-21-2607" },
			{ "102",	"�ѹ�����ó",	"������",	"052-21-2607" },
			{ "107",	"�ѹ�����ó",	"�ǽ���",	"052-216-3030" },
			{ "101",	"�ѹ�����ó",	"���ѳ�",	"052-216-2609" },
			{ "������ �ż� ��û",	"�ѹ�����ó",	"������",	"052-21-2607" },
			{ "������ �ż� ��û",	"�ѹ�����ó",	"������",	"052-21-2607" },
			{ "302",	"�ѹ�����ó",	"�ǽ���",	"052-216-3030" },
			{ "301",	"�ѹ�����ó",	"�ǽ���",	"052-216-3030" },
			{ "300",	"�ѹ�����ó",	"�ǽ���",	"052-216-3030" },
			{ "371",	"�ѹ�����ó",	"������",	"052-216-2603" },
			{ "271",	"�ѹ�����ó",	"������",	"052-216-2607" },
			{ "171",	"����濵ó",	"������",	"052-216-2762" },
			{ "177",	"����濵ó",	"������",	"052-216-2746" },
			{ "109",	"����ȯ��ó",	"�̹���",	"052-216-2962" },
			{ "305",	"����ȯ��ó",	"������",	"052-216-2942" },
			{ "303",	"����ȯ��ó",	"�ȼ�ȯ",	"052-216-3002" },
			{ "355",	"E&P�Ѱ�ó",	"���ֽ�",	"052-216-3294" },
			{ "274",	"������1ó",	"������",	"052-216-3309" },
			{ "164",	"�������ó",	"���ſ�",	"052-216-3515" },
			{ "166",	"����ü�ó",	"�赿��",	"052-216-5328" },
			{ "165",	"����ü�ó",	"�赿��",	"052-216-5328" },
			{ "184",	"������",	"�ڿ�",	"052-216-2272" },
			{ "185",	"������",	"�ڿ�",	"052-216-2272" },
			{ "344",	"������",	"�ڿ�",	"052-216-2272" },
			{ "182",	"�ѹ�����ó, ����濵ó",	"���ѳ�",	"052-216-2609" },

			//HSEQ2
			{ "299", "����ȯ��ó", "������", "052-216-2925" },
			{ "332", "����ȯ��ó", "�۵���", "052-216-2924" },
			{ "331", "����ȯ��ó", "�۵���", "052-216-2924" },				

			//����3			
			{ "7",	    "�����",	"������",	"052-216-2103" },
			{ "145",	"�����",	"Ȳ��ö",	"052-216-2124" },
			{ "146",	"�����",	"Ȳ��ö",	"052-216-2124" },
			{ "11",	    "�����",	"�̹�ȯ",	"052-216-2122" },
			{ "10",	    "�����",	"�̹�ȯ",	"052-216-2122" },
			{ "149",	"�����",	" ",	" " },
			{ "6",    	"�����",	"Ȳ��ö",	"052-216-2124" },
			{ "8",	    "�����",	"������",	"052-216-2103" },
			{ "148",	"�����",	"������",	"052-216-2126" },
			{ "142",	"�����",	"Ȳ��ö",	"052-216-2124" },
			{ "150",	"�����",	"������",	"052-216-2126" },
			{ "163",	"�����",	"������",	"052-216-2126" },
			{ "147",	"�����",	"Ȳ��ö",	"052-216-2124" },
			{ "192",	"�ѹ�����ó",	"������",	"052-21-2607" },
			
			//�����ȹ4
			{ "4", "��ȹ����ó", "������", "052-214-2247" },			
			
			//������5
			{ "172",	"�ѹ�����ó",	"������",	"052-216-2649" },
			{ "173",	"�ѹ�����ó",	"������",	"052-216-2649" },
			{ "196",	"�ѹ�����ó",	"������",	"052-216-2607" },
			{ "197",	"�ѹ�����ó",	"������",	"052-216-2649" },
			{ "������ �ż� ��û",	"�ѹ�����ó",	"������",	"052-216-2648" },
			{ "������ �ż� ��û",	"�ѹ�����ó",	"������",	"052-216-2648" },			
			
			//��ȸ����6
			//
			
			//�λ纹��7
			{ "161",	"��ȹ����ó",	"����ȸ",	"052-216-2707" },
			{ "96",	    "����濵ó",	"ȫ��ȭ",	"052-216-2784" },
			{ "181",	"����濵ó",	"����ȸ",	"052-216-2707" },
			{ "87",	    "����濵ó",	"������",	"052-216-2746" },
			{ "180",	"����濵ó",	"��ȿ��",	"052-216-2766" },
			{ "178",	"����濵ó",	"�ڿ�ȯ",	"052-216-2706" },
			{ "179",	"����濵ó",	"��ȿ��",	"052-216-2766" },
			{ "349",	"����濵ó",	"������",	"052-216-2746" },
			{ "350",	"����濵ó",	"������",	"052-216-2746" },
			
			//�����繫8
			{ "67",	    "�繫ó",	"�۴���",	"052-216-2432" },
			{ "68",	    "�繫ó",	"�۴���",	"052-216-2432" },
			{ "79",	    "�繫ó",	"���ϼ�",	"052-216-2462" },
			{ "367",	"�繫ó",	"������",	"052-216-2448" },
			{ "336",	"�繫ó",	"���ϼ�",	"052-216-2462" },
			{ "362",	"�繫ó",	"��â��",	"052-216-2431" },
			{ "365",	"�繫ó",	"������",	"052-216-2460" },
			
			//�������9
			{ "162",	"�������",	"������",	"052-216-2212" },
			{ "155",	"�������",	"�輺��",	"052-216-2807" },
			{ "297",	"�������",	"�赿��",	"052-216-2849" },
			{ "272",	"�������",	"������",	"052-216-2812" },
			{ "296",	"�������",	"�輺��",	"052-216-2807" },
			{ "151",	"�������",	"�̽ű�",	"052-216-2963" },
			{ "154",	"�������",	"�̽ű�",	"052-216-2963" },
			{ "153",	"�������",	"�̽ű�",	"052-216-2963" },
			{ "152",	"�������",	"�̽ű�",	"052-216-2963" },

			//�������10
			{ "198",	"�ѹ�����ó",	"������",	"052-216-2626" },
			{ "25",	    "�ѹ�����ó",	"������",	"052-216-2604" },
			{ "28",	    "�ѹ�����ó",	"������",	"052-216-2604" },
			{ "31",	    "�ѹ�����ó",	"������",	"052-216-2626" },
			{ "26",	    "�ѹ�����ó",	"������",	"052-216-2604" },
			{ "310",	"�ѹ�����ó",	"������",	"052-216-2626" },
			{ "187",	"E&P�Ѱ�ó",	"���ֽ�",	"052-216-3294" },
			
			//��������11			
			{ "313",	"Ž����ó",	"�ֿ���",	"052-216-3132" },
			{ "220",	"Ž����ó",	"������",	"052-216-3107" },
			{ "219",	"Ž����ó",	"������",	"052-216-3107" },
			{ "369",	"Ž����ó",	"������",	"052-216-3107" },
			{ "370",	"Ž����ó",	"������",	"052-216-3107" },
			{ "315",	"Ž����ó",	"�ֿ���",	"052-216-3132" },
			{ "314",	"Ž����ó",	"�ֿ���",	"052-216-3132" },
			{ "312",	"Ž����ó",	"�ֿ���",	"052-216-3132" },
			{ "276",	"������1ó",	"�̺���",	"052-216-3313" },
			{ "275",	"������1ó",	"�����",	"052-216-3348" },
			{ "341",	"������2ó",	"������",	"052-216-3404" },
			{ "144",	"������2ó",	"�豤��",	"052-216-3442" },
			{ "338",	"������2ó",	"��â��",	"052-216-3445" },
			{ "339",	"������2ó",	"�豤��",	"052-216-3442" },
			{ "326",	"���߰Ǽ�ó",	"�̰��",	"052-216-3949" },
			{ "281",	"���߰Ǽ�ó",	"�����",	"052-216-3915" },
			{ "279",	"���߰Ǽ�ó",	"������",	"052-216-3927" },
			{ "328",	"���߰Ǽ�ó",	"�̰��",	"052-216-3949" },
			{ "325",	"���߰Ǽ�ó",	"�̰��",	"052-216-3949" },
			{ "278",	"���߰Ǽ�ó",	"������",	"052-216-3923" },
			
			//��������12
			{ "366",	"��������ó",	"������",	"052-216-5065" },
			{ "366",	"��������ó",	"������",	"052-216-5005" },
			{ "311",	"��������ó",	"�����",	"052-216-5044" },
			{ "358",	"�������ó",	"�ǿ���",	"052-216-5105" },
			{ "356",	"�������ó",	"�ǿ���",	"052-216-5105" },
			{ "357",	"�������ó",	"�ǿ���",	"052-216-5105" },
			{ "351",	"�������ó",	"�ǿ���",	"052-216-5105" },
			{ "346",	"����ü�ó",	"�赿��",	"052-216-5328" },
			{ "345",	"����ü�ó",	"�赿��",	"052-216-5328" },
			{ "348",	"����ü�ó",	"�赿��",	"052-216-5328" },
			{ "347",	"����ü�ó",	"�赿��",	"052-216-5328" },
			{ "286",	"�����������",	"�鼺��",	"052-216-5423" },
			{ "284",	"�����������",  	"�̽¿�",	"052-216-5405" },
			{ "285",	"�����������",	"�̽¿�",	"052-216-5405" },
			{ "287",	"�����������",	"�鼺��",	"052-216-5423" },

			//�˶�������13
			{ "319",	"������ó",	"������",	"052-216-5245" },
			{ "322",	"������ó",	"������",	"052-216-5205" },
			{ "321",	"������ó",	"�輱��",	"052-216-5203" },
			{ "320",	"������ó",	"�輱��",	"052-216-5203" },
			
			//��������14
			{ "������ �ż� ��û",	"�ѹ�����ó",	"������",	"052-216-2607" },
			{ "308",	"������������",	"������",	"052-216-2523" },
			{ "307",	"������������",	"������",	"052-216-2551" },
			{ "306",	"������������",	"������",	"052-216-2579" },
			{ "309",	"������������",	"������",	"052-216-2505" },
			{ "295",	"�������ó",	"���ſ�",	"052-216-3515" },
			{ "317",	"�������ó",	"���ſ�",	"052-216-3515" },
			{ "323",	"�������ó",	"���ſ�",	"052-216-3515" },
			
			//ȫ��15
			{ "193",	"��ȹ����ó",	"������",	"052-216-2229" },
			{ "188",	"��ȹ����ó",	"������",	"052-216-2232" },
			{ "195",	"��ȹ����ó",	"������",	"052-216-2228" },
			{ "170",	"�ѹ�����ó",	"������",	"052-216-2607" },
			{ "191",	"�ѹ�����ó",	"���ѳ�",	"052-216-2609" },
			{ "157",	"������������ ","���",	    "052-216-2550" },
			{ "140",	"E&P�Ѱ�ó",	"���ֽ�",	"052-216-3294" }			
			
			
	};

	
	if(gpk.length() > 0){
		/**
		* 2016. 03. 21 / MYM
		* ���Ⱦ��� ��ġ
		*/
		int intGpk = Integer.parseInt(gpk);
		if(intGpk < 0) { intGpk = 0; }
		gov_public_kind_nm = gov_public_kind_nm_arr[intGpk];
	}

	String nowpage = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("page")));
	String gov_public_nid = EtcUtil.strBlockSpecialTags(EtcUtil.checkNull(request.getParameter("gov_public_nid")));

	pp.setPage(nowpage);
	pp.setPageSize("10");
	pp.setPageUrl("");

	ArrayList<HashMap<String, String>> govPublicList = govPublicManager.getGovPublicFileList(gov_public_nid, request);

	int count = govPublicManager.getGovPublicKindListCount(Integer.parseInt(gpk));
	int seq = count-(pp.getNPage()-1) * pp.getNPageSize();
	/**
	* 2016. 03. 21 / MYM
	* ���Ⱦ��� ��ġ
	*/
	if(seq < 0) { seq = 1; }
%>

<%
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","05");
	application.setAttribute("gNavMenuDepth2","13");
	application.setAttribute("gNavMenuDepth3","11");

	/**
	* 2016. 03. 21 / MYM
	* ���Ⱦ��� ��ġ
	*/
	int intGpk = Integer.parseInt(gpk);
	if(intGpk < 0) { intGpk = 0; }
	application.setAttribute("gNavMenuDepth4",gNavMenuDepth4Arr[intGpk]);
	/*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
%>

<%!
	private String getFileImage(HttpServletRequest request, String fileName){

		String imgFileNm = fileName.toLowerCase();
		String mime = "";
		String imgSrc = "";

		if(imgFileNm.lastIndexOf(".") > -1)
	    	mime = imgFileNm.substring(imgFileNm.lastIndexOf(".")+1);
	    else
	    	mime = "unknown";

	    if(AttachFile.containsMime(mime))
	    	imgSrc = "/neoboard/skin/skin01/images/mime_" + mime + ".gif";
	    else
	    	imgSrc = "/neoboard/skin/skin01/images/mime_unknown.gif";

		return imgSrc;
	}
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
					&gt; <span>��������</span>
					&gt; <span>����������ǥ</span>
					&gt; <span>ī�װ��� ����</span>
					&gt; <span class="locanow"><%=gov_public_kind_nm %></span>
				</div>
				<!--// location: end //-->

				<div class="pagetle">
					<h3 class="tleimg"><img src="<%=imageArr[Integer.parseInt(gpk)] %>" alt="<%=gov_public_kind_nm_arr[Integer.parseInt(gpk)] %>" /></h3>
				</div>

				<!-- list -->
				<div id="boardsec">
					<table cellspacing="0" cellpadding="0" class="listtype" summary="">
						<caption></caption>
						<colgroup>
							<col width="15%" />
							<col width="*" />
							<col width="15%" />
							<col width="15%" />
						</colgroup>
						<thead>
							<tr>
								<th scope="col">��ȣ</th>
								<th scope="col">����</th>
								<th scope="col">��������</th>
								<th scope="col">÷������</th>
							</tr>
						</thead>
						<tbody>
						<%if(count == 0){ %>
							<tr>
								<td colspan="7">��ϵ� ������ �����ϴ�.</td>
							</tr>
						<%
							}else{
								Iterator<HashMap<String, String>> iter = govPublicList.iterator();
								int fileNum = govPublicList.size();
								while(iter.hasNext()){
									HashMap<String, String> hashMap = iter.next();
						%>
							<tr>
								<td><%=fileNum %></td>
								<td style="text-align:left;"><%=EtcUtil.checkNull(hashMap.get("FILE_TITLE")) %></td>
								<td><%=EtcUtil.checkNull(hashMap.get("REG_DATE")) %></td>
								<td>
								<%if(hashMap.get("GOV_PUBLIC_FILE_SEQ") != null){ %>
									<a href="sub05_12_filedown.jsp?gov_public_file_seq=<%=EtcUtil.checkNull(hashMap.get("GOV_PUBLIC_FILE_SEQ")) %>">
										<img src="<%=getFileImage(request, EtcUtil.checkNull(hashMap.get("ORG_FILE_NM"))) %>" border="0" width="16" height="16" alt="<%=EtcUtil.checkNull(hashMap.get("ORG_FILE_NM")) %>" />
									</a>
								<%}else{out.print("&nbsp;");} %>
								</td>
							</tr>
						<%
									seq--;
									fileNum--;
								}
							}
						%>
						</tbody>
					</table>
				</div>
				<div class="boardbtm" style="text-align: right; padding-top:10px;margin-right:20px;">
					<a href="/sub05/sub05_12_list.jsp?gpk=<%=gpk%>&page=<%=nowpage %>&sType=<%=sType%>&sWord=<%=sWord %>">
						<img src="/neoboard/skin/skin01/images/btn_list.gif" />
					</a>
				</div>

				<div class="new_officer">
					<table summary="���μ� �� ����ó ������">
					<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"></td>
<%


	//gov_public_nid = "287";

	String[] info = new String[4];
	String info_dept = "";
	String info_name = "";
	String info_tel  = "";
	
	for(int i=0; i<arr_str.length; i++){
		info[0] = "";
		info[1] = "";
		info[2] = "";

		if( arr_str[i][0].equals(gov_public_nid)) {
			info[0] = arr_str[i][0];
			info[1] = arr_str[i][1];
			info[2] = arr_str[i][2];
			info[3] = arr_str[i][3];
			break;
		}
	
	}
	
	info_dept = info[1] != null?info[1]: "";
	info_name = info[2] != null?info[2]: "";
	info_tel  = info[3] != null?info[3]: "";

%>							

						    <td class="contact_team"><strong>���μ� : </strong><%=info_dept %></td>
							<td class="contact_user"><strong>����� : </strong><%=info_name %></td>
							<td class="contact_tel"><strong>����ó : </strong><%=info_tel %></td>					
						
						</tr>
					</tbody>
					</table>
				</div>
			</div>
		</div>
	</div>
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>

</body>
</html>