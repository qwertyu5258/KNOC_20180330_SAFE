<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","02");
	application.setAttribute("gNavMenuDepth3","03");
	application.setAttribute("gNavMenuDepth4","10");
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
				<%@include file="/include/subtop_02.jsp"%>
				<!--// location: start //-->
				<div class="locadv">
					<a href="/"><img src="/images/common/loca_home.gif" alt="�ѱ��������� ������������ �̵�" /></a>
					&gt; <span>�����濵</span>
                    &gt; <span>�濵����</span>
					&gt; <span>�繫��Ȳ</span>
                    &gt; <span class="locanow">���ԡ�������Ȳ</span>
				</div>
				<!--// location: end //-->
				
				<!--[2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_2_3.gif" alt="�繫��Ȳ" /></h3>
				</div>
				<!--����-->
				<div class="officer">
					<h4><img src="/images/management/sub02_2_2_1_ta1.gif" alt="����������Ȳ(�����������)" border="0"/></h4>
					<p class="rtxt">(���� : �鸸��)</p>
					<!--ǥ-->
					<table class="chart3" summary="����������Ȳ(�����������)�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>����������Ȳ(�����������)</caption>
					<col width="50px" />
					<col width="100px" />
					<col width="100px" />
					<col width="100px" />
					<col width="" />
					<col width="" />
					<col width="" />
					<thead>
					<tr>
						<th scope="colgroup" colspan="4" class="first">����</th>
						<th scope="col">2014��<br />
						  ���</th>
						<th scope="col">2015��<br />���</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th scope="row" rowspan="16" class="first bright">����</th>
						<th scope="row" rowspan="10" class="bright" >���� ���� ����</th>
						<th scope="row" rowspan="5" class="bright">��������</th>
						<th scope="row" class="tdcen">�⿬��</th>
						<td>-</td>
						<td>-</td>
					  </tr>
					<tr>
						<th scope="row" class="tdcen">������</th>
						<td>3,326</td>
						<td>4,132</td>
					  </tr>
					<tr>
					<th scope="row" class="tdcen">�δ��</th>
						<td>-</td>
						<td>-</td>
					  </tr>

					<tr>
					<th scope="row" class="tdcen">��������</th>
						<td>-</td>
						<td>-</td>
					  </tr>
										
					<tr>
					<th scope="row" class="tdcen">�δ����</th>
						<td>145</td>
						<td>11</td>
					  </tr>

					<tr>
						<th scope="row" rowspan="4" class="bright" >��������</th>
						<th scope="row" class="tdcen">�������</th>
						<td>1,036,528</td>
						<td>3,427,835</td>
					  </tr>

					<tr>
						<th scope="row" class="tdcen">��Ź����</th>
						<td>1,136</td>
						<td>1,203</td>
					  </tr>

					<tr>
						<th scope="row" class="tdcen">��������</th>
						<td>-</td>
						<td>-</td>
					  </tr>

					<tr>
						<th scope="row" class="tdcen">�δ����</th>
						<td>45,170</td>
						<td>8,745</td>
					  </tr>

					<tr class="tdgray">
						<th scope="row" colspan="2" class="tdcen" >�Ұ�</th>
						<td>1,086,305</td>
						<td>3,441,926</td>
					  </tr>
					
					<tr>
						<th scope="row" colspan="3" class="tdcen" >��Ÿ�������</th>
						<td>-</td>
						<td>-</td>
					  </tr>					
					<tr>
						<th scope="row" colspan="3" class="tdcen" >�δ����</th>
						<td>-</td>
						<td>-</td>
					  </tr>	
					
					<tr>
						<th scope="row" colspan="3" class="tdcen" >���ڱ�</th>
						<td>61,427</td>
						<td>115,926</td>
					  </tr>	

					<tr>
						<th scope="row" colspan="3" class="tdcen" >���Ա�</th>
						<td>2,539,993</td>
						<td>3,366,756</td>
					  </tr>
					

					<tr>
						<th scope="row" colspan="3" class="tdcen" >��Ÿ</th>
						<td>4,205,717</td>
						<td>4,501,259</td>
					  </tr>
															

					<tr class="tdgray">
						<th scope="row" colspan="3" class="tdcen" ><strong>�հ�</strong></th>
						<td><strong>7,893,442</strong></td>
						<td><strong>11,425,867</strong></td>
					  </tr>

                    <tr>
						<th scope="row" rowspan="6" class="first bright">����</th>
						<th scope="row" colspan="3" class="tdcen">�ΰǺ�</th>
						<td>100,249</td>
						<td>270,364</td>
					  </tr>					

					<tr>
						<th scope="row" colspan="3" class="tdcen">�����</th>
						<td>54,831</td>
						<td>208,537</td>
					  </tr>					
										
					<tr>
						<th scope="row" colspan="3" class="tdcen">�����</th>
						<td>823,724</td>
						<td>1,774,837</td>
					  </tr>	

					<tr>
						<th scope="row" colspan="3" class="tdcen">���Ի�ȯ��</th>
						<td>2,573,499</td>
						<td>1,769,428</td>
					  </tr>

					<tr>
						<th scope="row" colspan="3" class="tdcen">��Ÿ</th>
						<td>4,341,139</td>
						<td>7,402,701</td>
					  </tr>
					<tr class="tdgray">
						<th scope="row" colspan="3" class="tdcen"><strong>�հ�</strong></th>
						<td><strong>7,893,442</strong> </td>
						<td><strong>11,425,867</strong> </td>
					  </tr>											
					</tbody>
					</table>

					<!--//ǥ-->








				  <h4 style="margin-top:35px;"><img src="/images/management/sub02_2_2_1_ta3.gif" alt="���μ���������(�����������)" border="0"/></h4>
					<p class="rtxt">(���� : �鸸��)</p>
					<!--ǥ-->
					<table class="chart3" summary="���μ���������(�����������)�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>���μ���������(�����������)</caption>
					<col width="50px" />
					<col width="100px" />
					<col width="" />
					<col width="" />
					<thead>
					<tr>
						<th scope="colgroup" colspan="2" class="first">����</th>
						<th scope="col">2014��</th>
						<th scope="col">2015��</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th scope="row" rowspan="9" class="first bright">����<br/>������<br/> ����</th>
						<th scope="row" class="tdcen">�⿬��</th>
						<td>-</td>
						<td>-</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">���ڱ�</th>
						<td> 61,427</td>
						<td>115,926</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">������</th>
						<td>480 </td>
						<td>650</td>
					</tr>
					<tr>
					<th scope="row" class="tdcen">�δ��</th>
						<td>-</td>
						<td>-</td>
					</tr>

					<tr>
					<th scope="row" class="tdcen">��������</th>
						<td>-</td>
						<td>-</td>
					</tr>
										
					<tr>
					<th scope="row" class="tdcen">��Ź����</th>
						<td >1,136</td>
						<td >1,203</td>
					  </tr>
					
					<tr>
					<th scope="row" class="tdcen">��Ÿ����</th>
						<td>-</td>
						<td>-</td>
					  </tr>

					<tr class="tdgray">
					<th scope="row" class="tdcen"><strong>�հ�</strong></th>
						<td ><strong> 63,043</strong></td>
						<td ><strong>117,779</strong></td>
					  </tr>														
					</tbody>
					</table>

					<!--//ǥ-->
				
					
<!--
<table class="chart3" summary="2005����� 2010����� �ѱ��������� ���ԡ�������Ȳ�� Ȯ���� �� �ֽ��ϴ�.">
					<caption>�ѱ��������� ���ԡ�������Ȳ</caption>
					<col width="30px" />
					<col width="110px" />
					<col width="80px" />
					<col width="80px" />
					<col width="80px" />
					<col width="80px" />
					<col width="80px" />
					<col width="80px" />
					<col width="80px" />
					<thead>
					<tr>
						<th scope="colgroup" colspan="2" class="first">����</th>
						<th scope="col">2006��<br /> ���</th>
						<th scope="col">2007��<br /> ���</th>
						<th scope="col">2008��<br /> ���</th>
						<th scope="col">2009��<br /> ���</th>
						<th scope="col">2010��<br /> ���</th>
						<th scope="col">2011��<br /> ���</th>
						<th scope="col">2013��<br /> ����</th>
					</tr>
					</thead>
					<tbody>
					<tr>
						<th scope="rowgroup" rowspan="11" class="first bright">����</th>
						<th scope="row" class="tdcen">�����⿬��</th>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">�������ڱ�</th>
						<td>475,989</td>
						<td>720,371</td>
						<td>1,229,902</td>
						<td>734,602</td>
						<td>1,480,779</td>
						<td>835,000</td>
						<td>393,578</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">���κ�����</th>
						<td>29,998</td>
						<td>9,941</td>
						<td>1,676</td>
						<td>600</td>
						<td>530</td>
						<td>800</td>
						<td>4,000</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">�δ�� �� ��������</th>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>0</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">��Ź �� ��������</th>
						<td>0</td>
						<td>0</td>
						<td>0</td>
						<td>850</td>
						<td>860</td>
						<td>860</td>
						<td>1,153</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">������ü����</th>
						<td>844,776</td>
						<td>1,052,328</td>
						<td>1,463,962</td>
						<td>1,775,015</td>
						<td>2,407,104</td>
						<td>1,275,207</td>
						<td>2,672,286</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">���Ա�</th>
						<td>149,834</td>
						<td>126,430</td>
						<td>985,224</td>
						<td>4,071,071</td>
						<td>6,573,216</td>
						<td>4,993,141</td>
						<td>3,457,200</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">�����̿�</th>
						<td>46,860</td>
						<td>6,515</td>
						<td>226,911</td>
						<td>778,185</td>
						<td>957,621</td>
						<td>1,130,099</td>
						<td>61,600</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">���</th>
						<td>110</td>
						<td>120</td>
						<td>20</td>
						<td>10</td>
						<td>0</td>
						<td>187,291</td>
						<td>172,452</td>
					</tr>

					<tr>
						<th scope="row" class="tdcen">��Ÿ</th>
						<td>29,729</td>
						<td>36,521</td>
						<td>59,212</td>
						<td>120,544</td>
						<td>51,333</td>
						<td>189,919</td>
						<td>187,678</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen"><strong>�����հ�</strong></th>
						<td><strong>1,577,296</strong></td>
						<td><strong>1,952,226</strong></td>
						<td><strong>3,966,907</strong></td>
						<td><strong>7,480,877</strong></td>
						<td><strong>11,471,443</strong></td>
						<td><strong>8,612,317</strong></td>
						<td><strong>6,949,947</strong></td>
					</tr>
					<tr>
						<th scope="rowgroup" rowspan="8"  class="first bright">����</th>
						<th scope="row" class="tdcen">�����</th>
						<td>1,457,768</td>
						<td>1,122,484</td>
						<td>2,776,457</td>
						<td>5,309,510</td>
						<td>6,628,590</td>
						<td>4,245,170</td>
						<td>6,262,869</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">�ΰǺ�</th>
						<td>60,294</td>
						<td>71,318</td>
						<td>81,717</td>
						<td>73,155</td>
						<td>86,419</td>
						<td>104,514</td>
						<td>126,351</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">�����</th>
						<td>16,987</td>
						<td>25,998</td>
						<td>30,501</td>
						<td>32,111</td>
						<td>40,219</td>
						<td>69,410</td>
						<td>70,726</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">�����̿�</th>
						<td>6,515</td>
						<td>226,911</td>
						<td>778,185</td>
						<td>957,621</td>
						<td>1,323,040</td>
						<td>693,219</td>
						<td>63,532</td>
					</tr>
					<tr>
						<th scope="row" class="tdcen">���Ի�ȯ��</th>
						<td>3,298</td>
						<td>65,702</td>
						<td>48,968</td>
						<td>867,958</td>
						<td>3,110,926</td>
						<td>2,479,363</td>
						<td>18,304</td>
					</tr>					
					<tr>
					<th scope="row" class="tdcen">���</th>
						<td>20,931</td>
						<td>18,633</td>
						<td>22,956</td>
						<td>25,138</td>
						<td>67,558</td>
						<td>33,824</td>
						<td>0</td>
					</tr>					
					<tr>
						<th scope="row" class="tdcen">��Ÿ</th>
						<td>11,503</td>
						<td>421,180</td>
						<td>228,123</td>
						<td>215,384</td>
						<td>214,691</td>
						<td>986,817</td>
						<td>408,166</td>
					</tr>					
					<tr>
						<th scope="row" class="tdcen"><strong>�����հ�</strong></th>
						<td><strong>1,577,296</strong></td>
						<td><strong>1,952,226</strong></td>
						<td><strong>3,966,907</strong></td>
						<td><strong>7,480,877</strong></td>
						<td><strong>11,471,443</strong></td>
						<td><strong>8,612,317</strong></td>
						<td><strong>6,949,947</strong></td>
					</tr>
					</tbody>
					</table>
					
					<p style="clear:both ;text-align:left ; padding-left:20px ; font-size:11px ; letter-spacing:-1px ; color:#777 ;">
 					���ñ��� : ��12�� 06���� ���� <br />
					* 2013�� 4���� �˸����� �Բ� ���� ����</br>
					- ������ü���� : ���� ������ �������� ���� ��ü����<br /> 
					- �� �� : �����(������� ��), �ΰǺ�, �����(���� �Ǵ� ���� ������ ���� �ų� �ݺ������� ����Ǵ� ��� ��), �����̿�, ���Ի�ȯ��, ��� 
					</p>			
-->				
 
			
					
					
					
					
				</div>
				<div class="new_officer">
				<table summary="���μ� �� ����ó ������">
				<caption>���μ� �� ����ó ������</caption>
					<tbody>
						<tr>
							<td class="write_day"><strong>�ۼ������� : </strong>2015-12-31</td>
							<td class="contact_team"><strong>���μ� : </strong>�繫ó ȸ����</td>
							<td class="contact_user"><strong>����� : </strong>�̰���</td>
							<td class="contact_tel"><strong>����ó : </strong>052-216-2459</td>
						</tr>
					</tbody>
				</table>
				</div>					
				<div class="infoCheck"><%@include file="/include/satisfy_link.jsp"%></div>					
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>