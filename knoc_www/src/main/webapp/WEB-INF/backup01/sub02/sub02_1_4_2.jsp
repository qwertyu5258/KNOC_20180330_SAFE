<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","02");
	application.setAttribute("gNavMenuDepth2","01");
	application.setAttribute("gNavMenuDepth3","04");
	application.setAttribute("gNavMenuDepth4","02");
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
                    &gt; <span>�����濵</span>
					&gt; <span>�����Թ�</span>
                    &gt; <span class="locanow">��������</span>
				</div>
				<!--// location: end //-->
				
				<!-- [2009-09-21 ����] :: �ۼ���: ������ -->
				<div class="pagetle">
					<h3><img src="/images/management/ttl_sub02_1_4.gif" alt="�����Թ�" /></h3>
				</div>
				<!--����-->
				<div class="moralsRow">
					<h4><img src="/images/management/sub02_1_4_1_ta2.gif" alt="��������" /></h4>
					<ol>
						<li>
							<p><img src="/images/management/sub02_1_4_2_ti1.gif" alt="�� 1 �� ��Ģ" /></p>
							<p><strong>��1����������</strong></p>
							<p>�� ��������(���� �����ɡ��̶� �Ѵ�)�� ���������� �ؼ��ϱ� ���� �ùٸ� �ǻ������ ������ �Ǵ� ������ ���������� �������� �������� �Ѵ�.</p>
							<p><strong>��2��������뿩��</strong></p>
							<p>������ ������ �ӿ�(������̻�� �����Ѵ�)�� ����(�������� ����)���� �����Ѵ�.</p>
						</li>
						<li>
							<p><img src="/images/management/sub02_1_4_2_ti2.gif" alt="�� 2 �� �������� �⺻����" /></p>
							<p><strong>��3������������ �⺻������</strong></p>
							<p>�� �������� �ѱ��������������μ��� ������ �ںν��� ������ �׻� �����ϰ� ������ �ڼ��� �����Ѵ�.<br/>
							�� �������� ���� ������ ��ġ���� ������ ������ ǰ���� ������ ������ ����, ������ų �� �ֵ��� ����Ѵ�.<br/>
							�� �������� ������ �����Կ� �־� ���� ���ɰ� ������ �ؼ��԰� ���ÿ� ��ɿ� ��߳��� �ʵ��� �ൿ�Ѵ�.</p>
							<p><strong>��4��������ϼ���</strong></p>
							<p>�������� ������ �濵�̳�� ������ �����ϰ�, ���簡 �߱��ϴ� ��ǥ�� ��ġ�� �����Ͽ� â�ǿ� ���Ƿν� ���� �� å���� �ϼ��Ѵ�.</p>
							<p><strong>��5�����ڱ��ߡ�</strong></p>
							<p>�������� ����ȭ, ����ȭ �ô뿡 �ٶ����� ������� ������ �����ϰ� ���Ӿ��� �ڱ����� ���� �̿� ���յǵ��� ������ ����Ѵ�.</p>
							<p><strong>��6���������� �������ࡽ</strong></p>
							<p>�� �������� ������ �����Կ� �־� ���õ� ���� ���ɰ� ������ �ؼ��Ͽ� �����ϰ� �����Ͽ��� �Ѵ�.<br/>
							�� �������� �ڱ� �Ǵ� Ÿ���� ������ ���������� ������ �� �ִ� �δ��� ����, �˼�, ûŹ, Ư���ο� �� ��ȸ�� ��ź�� ���� ���� ��������, �ҹ��� ������ �Ͽ����� �ƴ� �ȴ�.</p>
							<p><strong>��7���������浹ȸ�ǡ�</strong></p>
							<p>�� �������� ������ �����Կ� �־� ������ ���ؿ� ����Ǵ� ������ ���ذ��踦 ȸ���ϵ��� ����ؾ��Ѵ�.<br/>
							�� �������� ����� ���� �Ǵ� �μ����� ���ذ� ����� ��쿡�� ������ ������ �켱������ �����Ͽ����Ѵ�.</p>
							<p><strong>��8�����δ��̵� ����������</strong></p>
							<p>�������� ������ �����Ͽ� ��ȸ���� ���εǴ� ������ �Ѿ� �������� ������ �� �ִ� ��ǰ, ���� ���� ���������ڿ��� �����ϰų� ���������ڷκ��� �����޾Ƽ��� �ƴ� �ȴ�.</p>
							<p><strong>��9���������籸�С�</strong></p>
							<p>�� �������� ������ �����Կ� �־� ��. �縦 ��Ȯ�� �����Ͽ��� �Ѵ�.<br/>
							�� �������� ������ ����� �������� ����ϰų� ���������� ���� ������ �������� �뵵�� ����Ͽ� ���翡 ���� ���ظ� ���ؼ��� �ƴ� �ȴ�.<br/>
							�� �������� �ٹ��ð� �� ������ �Ͽ� �ð��� �Ҿ��Ͽ� �������࿡ ������ �ְų�, �系�����ý����� �¶��ΰ���, ����, ��������Ʈ �湮 �� ������ �뵵�̿��� �������� �뵵�� ����ؼ��� �ƴ� �ȴ�.<br/>
							�� �������� ������ �㰡�� ���� ���� �����̿��� ������ �������� �ϴ� �Ͽ� �����ϰų� �ٸ� ������ ���� �� ����.</p>
							<p><strong>��10���������� ��ȣ ���衽</strong></p>
							<p>�� �������� ��ȣ���� �����Ȱ�� �ʿ��� �⺻���Ǹ� ���Ѿ� �ϸ� �Ҽ��� �����̳� �ٸ� �������� ����ϴ� ���� ���ο��� �ִ� ������ �Ͽ����� �ƴ� �ȴ�.<br/>
							�� �������� �й�, ����, ����, ����, ������� � ���� �Ĺ������̳� ������츦 �Ͽ����� �ƴ� �ȴ�.<br/>
							�� ������ ��ȣ������ �δ��� ûŹ�̳� ��ȸ���� ������ �������� �� �����ŷ� ���� ������ �Ͽ����� �ƴ� �ȴ�.<br/>
							�� ����ڴ� �ϱ��ڿ��� �δ��� ���ø� �Ͽ����� �ƴ� �Ǹ� �ϱ��ڴ� ������� ������ ���ÿ� �����ϵ� �δ��� ���ô� �����Ͽ��� �Ѵ�.<br/>
							�� �������� ��ȣ���� ���� ��Ȥ �� ���� ��ġ���� ���߽�Ű�� ������ �Ͽ����� �ƴ� �ȴ�.</p>
							<p><strong>��11���������� ��Ȱ��</strong></p>
							<p>�� �������� �����ڷμ� �ڼ��� ��߳��� �ʵ��� �������� ����ϰ� �˼��� �ǽ��ֿ� ������ ���� Ȱ���� ��Ȱȭ�Ͽ��� �Ѵ�.<br/>
							�� �������� ������ �����繮ȭ ������ ���� ����ϸ� ���������ڿ��Դ� ������ ������ �ﰡ�ϰ� ������ǰ�� ��ȸ��信 ���߾� ������ ������ ���� �ʵ��� �Ѵ�.</p>
							<p><strong>��12���������� ���� �� ȸ�������</strong></p>
							<p>�� �������� ��� ������ �����ϰ� �����ϰ� ���, �����Ͽ��� �ϸ� ȸ���� ���� ������ ��Ȯ�ϰ� �����ϰ� ���, �����Ͽ��� �Ѵ�.<br/>
							�� �������� �������� ��������� ������ �����㰡�� ���� ���� �ܺη� �����ϰų� �δ��ϰ� �̿��Ͽ����� �ƴ� �ȴ�.<br/>
							�� �������� Ư�� �����̳� �μ��� ������ ���� ���� �Ǵ� ���庸���� ���� ������ �߿��� ������ �����ϰų� �������� �ʴ´�.<br/>
							�� ���������� ����ϴ� �������� ���ù��ɰ� ������ ���� �濵������ �����Ͽ� �濵�� �������� �ŷڵ��� ���δ�.</p>
							<p><strong>��13��������ȸ���� ����� ���� �</strong></p>
							<p>�� �ӿ��� ���� �� ����ȸ�翡 ������� �� �� ����. �ٸ� �������������� ������ ���� �ƴ��ϴ� ��쿡�� �׷����� �ƴ��ϴ�.<br/>
							�� �������� ����ȸ�翡 ����� ������ ����Ͽ� �δ��� �̱ǰ��� ���� �����Ѵ�.</p>
						</li>
						<li>
							<p><img src="/images/management/sub02_1_4_2_ti3.gif" alt="�� 3 �� ������ ���� ����" /></p>
							<p><strong>��14�����������ߡ�</strong></p>
							<p>�������� ������ �츮�� ������������ ��ǥ��� �ν��Ͽ� �׻� ������ �����ϰ� ������ ���忡�� �����ϸ� ������ ��� �ൿ�� �ֿ켱 �������� ��´�.</p>
							<p><strong>��15��������������</strong></p>
							<p>�� �������� ������ �䱸�� ��븦 ��Ȯ�ϰ� �ľ��Ͽ� �̿� �����ϴ� �ְ��� ��ǰ�� �ֻ��� ���񽺸� �����ϱ� ���� �׻� ��� �Ѵ�.<br/>
							�� �������� ������ �ǰ߰� ���Ȼ����� �׻� ��û�ϰ� �����ϰ� �����ϸ� ���� �Ҹ����׿� ���ؼ��� �ִ��� �ż��ϰ� �����ϰ� ó���Ѵ�.<br/>
							�� ���������������������塹������������ǥ�ء��� ����� �����ϰ� �����Ͽ� ���������� �ƿ﷯ ������ġ�� â���Ѵ�.</p>
							<p><strong>��16���������� ���� ��ȣ��</strong></p>
							<p>�� �������� ������ �ڻ�, ��������, �������, �������� ���� ������ ��꺸�� �� �����ϰ� ��ȣ�ϸ� �񵵴��� ������ ���Ͽ� ������ ������ ħ������ �ƴ��Ѵ�.<br/>
							�� �������� ������ �˾ƾ� �ϰų� �������� ������ �˷��� �ϴ� ����� ��Ȯ�ϰ� �ż��ϰ� �����Ѵ�.</p>
						</li>
						<li>
							<p><img src="/images/management/sub02_1_4_2_ti4.gif" alt="�� 4 �� ����� �� �ŷ���ü�� ���� ����" /></p>
							<p><strong>��17�����ŷ����� �ؼ���</strong></p>
							<p>�������� ��� ��� �� ����Ȱ���� �Կ� �־ �ش� ���� �� ������ ���ݹ��Ը� �ؼ��ϰ� ������ ��ŷ������� �����Ѵ�.</p>
							<p><strong>��18�������������߱���</strong></p>
							<p>�������� ���������� ��Ģ�� ���� ������������� �����ϰ� �����ʹ� ��ȣ������ ������� ��������ϰ� ������ ������ �߱��Ѵ�.</p>
							<p><strong>��19���������� �ŷ���</strong></p>
							<p>�� �������� ���簡 �����ϴ� ����, �뿪, ��ǰ���� ���� ���� �� ���ü�� � �־ �ڰ��� ������ ��� ���� �Ǵ� ��ü���� ����� ��ȸ�� �ο��Ѵ�.<br/>
							�� �������� ��� �ŷ��� ��ȣ ����� ��ġ���� �����ϰ� �����ϵ� �������̰� �ϻ����� ������ҿ��� �����ϰ� �̷�������� �Ѵ�.<br/>
							�� �������� �ŷ��� ������� ������ �̿��Ͽ� ��ǰ ���� �䱸�ϰų� �Ұ����� �ŷ����� ����, �濵���� �� �δ��� �䱸�� ���� �ʴ´�.<br/>
							�� �������� ��� �ŷ��ÿ��� û�Ű���� ü���ϰ� �̸� �ؼ��Ѵ�.</p>
						</li>
						<li>
							<p><img src="/images/management/sub02_1_4_2_ti5.gif" alt="�� 5 �� �������� ���� ����" /></p>
							<p><strong>��20���������� ���ߡ�</strong></p>
							<p>����� �������� ���� ������ ������ ������ ������ �������� ������ �ΰ�ü�� ���ϸ�, ������ ������ ������,��ġ�� �ǻ�� ���Ȱ�� �����Ѵ�.</p>
							<p><strong>��21���������� ��졽</strong></p>
							<p>����� ����, ���� � �־ ������ ������ �ɷ°� ������ ���� �յ��� ��ȸ�� �ο��ϰ�, ������ ������ ���ؼ��� �����ϰ� ���ϰ� �����ϸ�, ����, �з�, ����, ����, �������, ��ü��� ���� ������ �������� �ʴ´�.</p>
							<p><strong>��22������������ �� â�Ǽ� ������</strong></p>
							<p>����� �������� �ɷ°����� ���� �����Ͽ� �������̰� â������ ����� �����ϰ�, �������� ��â���̰� �������� ����� �ൿ�� �����ϱ� ���Ͽ� ��� �������� �����Ӱ� �����ϰ� �ǻ�ǥ���� �� �� �ִ� ������ �����Ѵ�.</p>
							<p><strong>��23�������� �� ���</strong></p>
							<p>�� ����� �������� ������ ������� ������ ������ �� �ֵ��� ������ Ȯ���ϰ� ���������� ���Ͽ� ������ ������ ������ �� �ֵ��� �ּ��� ���Ѵ�.<br/>
							�� ����� �������� �����ϰ� �����ϰ� ���� �� �ִ� �ٹ�ȯ���� �����ϰ�, �������� ������ �ǰ�, ����, �����Ļ� �� ���� ���� ����ų �� �ִ� ���α׷��� ���������� ����, �����Ѵ�.</p>
						</li>
						<li>
							<p><img src="/images/management/sub02_1_4_2_ti6.gif" alt="�� 6 �� ������ ��ȸ�� ���� ����" /></p>
							<p><strong>��24���������� ��ȸ���� �⿩��</strong></p>
							<p>�� �������� �ո����̰� å�� �ִ� �濵�� ���� �ǽ��� ������� ���� �������� ��ȸ�� �θ� â�������ν� ������ ��ȸ�� ������ �̹��� �Ͽ��� �Ѵ�.<br/>
							�� ����� ������ȸ�� �Ͽ����μ� ��ȸ �� ������ �����ֹ��� ������ �䱸�� ������ �����Ͽ� �̸� �ذ��ϴµ� �ּ��� ���ؾ� �Ѵ�.<br/>
							�� ����� �������� ��ȸ����Ȱ�� ������ ���� ���� �� �����ϰ� ������ȸ�� ��ȭ��, ������ ������ ���Ͽ� ����Ͽ��� �Ѵ�.</p>
							<p><strong>��25�����δ��� ��ġȰ�� ������</strong></p>
							<p>�� ����� �δ��ϰ� ��ġ�� �������� ������ ����,��ġ��,�����ĺ��� ��� �ҹ����� ��α� �Ǵ� ��� ���� �������� �ʴ´�.<br/>
							�� ����� �������� ������ ��ġ�� ���ظ� �����Ѵ�. �ٸ�, �������� ������ ��ġ�� ���ذ� ������ ��ġ�� �������� ���� ���� �ʵ��� �����Ͽ��� �Ѵ�.</p>
							<p><strong>��26�������� �� ���迹�桽</strong></p>
							<p>�� ����� ��� �۾��忡 ������ �۾�ȯ���� �����ϰ�, ���������� �۾����� ������ ���� ������ ������ �ؼ��ϸ�, �ڽŰ� ������ ������ �����Ͽ� ������ �����Ѵ�.<br/>
							�� ����� �������� �� �� � ���� ȿ���� ��������� �����ϰ�, ��������� ���� ���� �� �Ʒ��� ���� ���� ��ó�ɷ��� �Ծ��ϸ�, �������� ��������� �����Ͽ� ������ ö���ϰ� �����Ѵ�.<br/>
							�� ����� �������� ���� �߻��� ����� ���� å���߱��̳� ó�� ������ ���İ��� ��� ���ٴ� ��������� �м� �����Ͽ� �������濡 �ַ��Ѵ�.<br/>
							�� ����� ����ü� ���� �Ǽ��� ����ܰ���� �������� �ݿ��Ͽ� �߽��ϰ� �ð��ϰ�, ������� ����,���� ��������� ������ ���ŵǵ��� ����ϸ�, ���������� ��Ȱȭ�Ѵ�.<br/>
							�� �������� �۾����� ������ ���·Ӱ� �ϴ� ���°� �߻��ϸ� ��� �� ��ġ �� ����ڿ��� �Ű��Ͽ��� �Ѵ�.</p>
							<p><strong>��27����ȯ�溸ȣ��</strong></p>
							<p>�� ����� ������ ����������μ� �������� �� ȯ�溸ȣ�� ���� �ּ��� ���� ������ ������ �����Ѵ�.<br/>
							�� �������� ������ ȯ����� ���Ը� ����� �����ϰ� �ؼ����� ���� ISO14001�� �䱸������ ���Ѿ� �Ѵ�.<br/>
							�� ����� ����ü� �� ��������ü� ���� �Ǽ��� ������ �ڿ�ȯ�濡 ���� ���ظ� �ּ�ȭ�ϸ�, �ֺ������ ��ȭ�� �̷絵�� �Ѵ�.<br/>
							�� �������� ȯ����� ���߻���� �߻��Ͽ��� ������ ��� �� ��ġ �� ����ڿ��� �Ű��Ͽ��� �Ѵ�.</p>
							<p><strong>��28�������ȭ�ա�</strong></p>
							<p>�������� ��� ��ΰ� �������� �����ϰ� �ŷڿ� ȭ���� �������� ����� ������ ������ ���� ����Ͽ��� �Ѵ�.</p>
							<p><strong>��29���������濵�Թ� �ؼ���</strong></p>
							<p>�������� �������� ����, ������ ���� �� �����ŷ��� �־ ������ŷ� ������������ �� ���ڿ� �ŷ��� ���� ������ ����� �� ������ �ؼ��ϰ� �������� ���Կ� ��ȭ�� �����ϸ� �������� ���������� �����Ͽ��� �Ѵ�.</p>
						</li>
						<li>
							<p><img src="/images/management/sub02_1_4_2_ti7.gif" alt="�� 7 �� ��Ģ" /></p>
							<p><strong>��30�����ؼ��ǹ��� å�ӡ�</strong></p>
							<p>�� �������� ������ �����ϰ� �ؼ��Ͽ��� �ϸ� ���ݻ��׿� ���ؼ��� �׿� ���� å���� ����.<br/>
							�� ����� �ӿ�, �μ����� �Ҽ������� ���� �ؼ� ���θ� ����, ������ å���� �ִ�. </p>
							<p><strong>��31�������� �� ¡�衽</strong></p>
							<p>�� ������ ������ �ؼ��ϰ� �����濵 ������ �⿩�� �������� ���Ͽ��� �λ��򰡿� �ݿ��ϴ� �� �׿� ������ ������ �ǽ��� �� �ִ�.<br/>
							�� ������ ���ɿ� ���˵� ������ �� �������� ���Ͽ��� ¡�� �� �ʿ��� ��ġ�� ���� �� �ִ�. �ٸ�, ��ü���� ¡���� ���������� ���ؼ��� �ൿ���ɿ��� ������ ���Ѵ�.<br/>
							�� ��2���� ������ ���� ¡���� ����, ����, ȿ�� ���� ������ ¡����� ������ ���� �ٿ� ������.</p>
							<p><strong>��32���������濵����ȸ�� ��ġ��</strong></p>
							<p>�� ������ �����濵�� ��Ȱ�� ������ ���� �� ������ ��Ȱ�� ���� ���� ���Ͽ� �ʿ��� ��� �����濵����ȸ�� ��ġ�Ͽ� ��� �� �ִ�.<br/>
							�� �����濵����ȸ�� ���� ��ȣ�� 1�� �ش��ϴ� ������ �����Ѵ�.<br/>
							1. �����濵 ������ ���� �߿���å ����<br/>
							2. �����濵 ���ñ����� ���� �� ����<br/>
							3. �����濵���� �߿� ������ ���� �����ؼ�<br/>
							4. �������� ���� ��õ�� ���� ����<br/> 
						5. ��Ÿ �����濵 ��õ,������ � �� ���� ���� ���Ͽ� �ʿ��� ���� <br/>
							�� ��1���� ������ ���Ͽ� �����濵����ȸ�� ������ ������ ���� ������ ������ �����濵����ȸ�� ������ �� �ִ�.<br/>
							�� �����濵����ȸ�� ��ġ �� ��� ���Ͽ� �ʿ��� ������ ������ ���� �� �ִ�. </p>
							<p><strong>��33���������� ���</strong></p>
							<p>�� ������ ������ ������Ȳ�� ȯ�溯ȭ�� ���߾� ������ ������ ���������� ����, ����, ��Ͽ��� �Ѵ�. <br/>
							�� ������ ������ �ؼ��ϰ� �������� û�ż� ���� ���� ���Ͽ� �ʿ��� ��ü���� �Ǵܱ��� �� ó�������� �� ��� ���Ͽ� �ʿ��� ���λ����� �ൿ���ɿ��� ������ ���Ѵ�.</p>
							<p><strong>�� Ģ</strong></p>
							<p>�� (������) �� ������ 2004�� 11�� 11�Ϻ��� �����Ѵ�. </p>
						</li>
					</ol>
                </div>
				<!--//��-->
			</div>
		</div>
	</div>
	
	<%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
</div>
</body>
</html>