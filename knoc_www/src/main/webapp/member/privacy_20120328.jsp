<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<% 
    /*'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''
	' Page Navigator section
	'''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''''*/
	application.setAttribute("gNavMenuDepth1","09");
	application.setAttribute("gNavMenuDepth2","03");
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
                    &gt; <span>��Ÿ����</span> &gt; <span class="locanow">����������ȣ��å</span></div>
        <!--// location: end //-->
            
                <div class="pagetle">
                    <h3><img src="/images/member/ttl_privacy.gif" alt="����������ȣ��å" /></h3>
                </div>
                <div id="boardsec">
               	  <div>
					  <p>�ѱ���������(���� "����")�� '����������ȣ��' �� ���ù����� ����������ȣ ������ �ؼ��ϸ�, '��������ó����ħ'�� ������ �����ϴ�. �ٸ�, �� ��������ó����ħ�� ���簡 ��ϴ� ������Ʈ ���� ���� ��������ó����ħ�� ������ �ٸ� ��쿡�� ������Ʈ ���� ���� ��������ó����ħ�� �켱 ����˴ϴ�.</p>

<br>1. ���������� ó�� ����<br>
 <br>&nbsp;�� �������� ó�� �� ������ü�� �������� ������������������ó������ �䱸�� ���� Ȯ��
 <br>&nbsp;�� ��������࿡ ���� ���� ����, �������, �ο� ó�� �� ���Ƚü� ��ȣ
<br>&nbsp; �� ��� �ۼ�, ���� ����, ��� ¡��, ��� ����
<br>&nbsp; �� ȸ���� ���� �̿뿡 ���� ����Ȯ��, ���� �ĺ�, �ҷ�ȸ���� ���� �̿� ������ ���ΰ� ��� ����, ���� �ǻ� Ȯ��, ���� Ȯ��, �Ҹ�ó��, ����(����)���� ����
<br>&nbsp; �� ������ ����, �̺�Ʈ �� ������ ���� ����, �α�������� Ư���� ���� ���� ����, ���� �� �ľ� �Ǵ� ȸ���� ���� �̿뿡 ���� ���
<br>
<br>2. ó���ϴ� ���������� �׸�<br>
<br>&nbsp; �� �����׸� : �̸�, �������, �ּ�, �ֹε�Ϲ�ȣ, �α���ID, ������ID, ��й�ȣ, ��ȭ��ȣ, �ѽ���ȣ, �̸���, ����, ȸ���, �μ�, ���� �̿���, ���� �α�, ��Ű, �������, ����ڹ�ȣ, ��ǥ�ڸ�, ����, ����, ������ ��ġ����
<br>&nbsp; �� ������� : Ȩ������, ��ȭ, �ѽ�, �̸���, ����, ���� �ڷ�, ������, �������� ���� ���� ���� ����
<br>
<br>3. ���������� ó�� �� ���� �Ⱓ<br>
<br>&nbsp; �� ����� �������� �Ǵ� �������� ������ �޼��� ���������� ��ü ���� �ı��մϴ�.
<br>&nbsp; �� ��, �ҷ� �̿����� �簡�� ������ �Ǹ�ħ�� ���� � ����Ͽ� �̸�, �α���ID, ��й�ȣ, ��й�ȣ ������ �亯, ��ȭ��ȣ, �ּ�, �̸���, �ֹε�Ϲ�ȣ, ���� �̿���, ���� �α� ����� �ʿ��� ��쿡�� ȸ��Ż�� �Ŀ��� 1�Ⱓ �����մϴ�.
<br>&nbsp; �� ����, ��� �� ���ù����� ���� �� ���� ��ħ�� ���� �ŷ����� �Ǹ� �ǹ� ������ Ȯ�� ���� ������ �����Ⱓ �����ؾ� �� �ʿ䰡 ���� ��쿡�� �����Ⱓ �����մϴ�.
<br>&nbsp; �� ��Ÿ, ���չ����� �� ���ù����� ���� �� ���� ��ħ�� ���� �ʿ��� ��쿡�� �����߿�ü��� ��ȣ ���� ������ ���ù��� �� ���� ��ħ���� ���� �Ⱓ���� �����մϴ�.
<br>
<br>4. ���������� ��3�� ����<br>
<br>&nbsp; �� ����� ������ü�� ���ǰ� �ְų� ���� ������ ������ ���� ��츦 �����ϰ��� ��� ��쿡�� ������ü�� ���������� Ÿ�� �Ǵ� Ÿ���������� �������� �ʽ��ϴ�.
<br>
<br>5. ��������ó���� ��Ź<br>
<br>&nbsp; �� ����� ������ü�� ���� �������� ���������� �ܺ� ��ü�� ��Ź���� �ʽ��ϴ�. ���� �׷��� �ʿ䰡 ���� ���, ��Ź ����ڿ� ��Ź ���� ���뿡 ���� ������ü���� �����ϵ��� �ϰڽ��ϴ�.
<br>&nbsp; �� ��Ź����, ����������ȣ ���ù����� �ؼ�, ���������� ��3�� ���� ���� �� å�Ӻδ� ���� ��Ȯ�� �����ϰ�, ���� ��೻���� ���� �Ǵ� ���������� �����ϵ��� �ϰڽ��ϴ�. 
<br>&nbsp; �� ��Ź �߿�, ��ü, ��Ź�ϴ� ������ ������ ����� ���, �������� �� ����ó����ħ�� ���� �����ϰڽ��ϴ�.
<br>
<br>6. ������ü�� �Ǹ����ǹ� �� �����<br>
<br>&nbsp; �� ������ü�� ������ ���� �Ǹ��� ����� �� �ֽ��ϴ�.
<br>&nbsp;&nbsp;   - �ڽ��� ���������� ���� ���� �䱸(����������ȣ�� ��35��)
<br>&nbsp;&nbsp;   - �ڽ��� ���������� ���� ���� �� ������ �䱸(����������ȣ�� ��36��)
<br>&nbsp;&nbsp;   - �ڽ��� �������� ó���� ���� �䱸(����������ȣ�� ��37��)
<br>&nbsp;&nbsp;   - ����������ȣ���� ������ ������ ���ظ� ���� ��� ���ع�� û��(����������ȣ�� ��39��)
<br>&nbsp; �� ���������� ���� ����, ���� �� ����, ó������ ���� �䱸�� ����ɷ����� ���ϴ� ����������� ���� �븮�ο��� �ϰ� �� �� ������, �� 14�� �̸� �Ƶ��� �����븮���� �� �Ƶ��� �������� ���� �� �䱸�� �� �� �ֽ��ϴ�.(����������ȣ�� ��38��)
<br>&nbsp; �� �������� ����, ����������, ó������, ����öȸ�� �ϰ��� �� ��쿡�� �������� ��ȣå���� �� ����ڿ��� ����, ��ȭ �Ǵ� �̸��Ϸ� �����Ͻø� ���� Ȯ�� ������ ���� ��ü ���� ��ġ�ϰڽ��ϴ�. 
<br>
<br>7. ���������� �ı�<br>
<br>&nbsp; �� ����� ��Ģ������ �������� ���� �� �̿������ �޼��� �Ŀ��� �ش� ������ ��ü���� �ı��մϴ�.
<br>&nbsp; �� �ı� ����
<br>&nbsp;&nbsp;   - ������ü�� ���������� ������ �޼��� �� ��� �ı��ϰų� ������ DB�� �Ű��� ���� ��ħ �� ��Ÿ ���� ���ɿ� ���� ���� ������ ���� ���� �Ⱓ ���� �� �ı�˴ϴ�.
<br>&nbsp; �� �ı� ���
<br>&nbsp;&nbsp;   - ���̿� ��µ� ���������� �м��� �м��ϰų� �Ұ��� ���� �ı��մϴ�.
<br>&nbsp;&nbsp;   - ������ �������·� ����� ���������� ����� ����� �� ���� ����� ����� ����Ͽ� �����մϴ�. 
<br>
<br>8. �������� ó����ħ�� ����<br>
<br>&nbsp; �� ����� ��������ó����ħ�� �����ϴ� ��� ���� Ȩ������(www.knoc.co.kr)�� ���� �����ϵ��� �ϰڽ��ϴ�.
<br>
<br>9. ���������� ������ Ȯ����ġ<br>
<br>&nbsp; �� ��й�ȣ �� �ֿ� ���������� ����������ȣ������ �䱸�� ���ѱ��� ��ȣȭ�Ͽ� ���� �� ������ �� �ֵ��� �ϰ�, �߿��� �����ʹ� ���۽� ��ȣȭ �ϰų� ���� ��� ����� ����ϴ� ���� ���� ���ȱ���� ����ϵ��� �ϰڽ��ϴ�.
<br>&nbsp; �� ��ŷ�̳� ��ǻ�� ���̷��� � ���� �������� ���� �� �Ѽ��� ���� ���Ͽ� �������α׷��� ��ġ�ϰ�, �ֱ����� ���š������� �ϸ�, �ܺηκ��� ������ ������ ������ �ý����� ��ġ�Ͽ� ����������������� ���� �� ������ �ǽ��ϰ� �ֽ��ϴ�.
<br>&nbsp; �� ���������� ó���ϴ� �����ͺ��̽��ý��ۿ� ���� ���ٱ����� �ο�, ����, ���Ҹ� ���Ͽ� ���������� ���� ���������� ���Ͽ� �ʿ��� ��ġ�� �ϰ� ������ ħ�����ܽý����� �̿��Ͽ� �ܺηκ����� ���� ������ �����ϰ� �ֽ��ϴ�.
<br>&nbsp; �� ���������� ����ϴ� ����ڸ� �ּ�ȭ�Ͽ� �����ϰ� ����ڿ� �������� ���������� �����ϴ� ��å�� �����ϰ� �ֽ��ϴ�.
<br>
<br>10. ������ü�� ����ħ�ؿ� ���� �������<br>
<br>&nbsp; �� ������ü�� ��������ħ�ط� ���� ������ �ޱ� ���Ͽ� ��������������������ȸ, �ѱ����ͳ������ ��������ħ�ؽŰ����� � �����ذ��̳� ��� ���� ��û�� �� �ֽ��ϴ�.
<br>&nbsp; �� �� �ۿ� ��Ÿ ��������ħ���� �Ű� �� ��㿡 ���Ͽ��� �Ʒ������ �����Ͻñ� �ٶ��ϴ�.
<br>&nbsp;&nbsp;   - ��������������������ȸ : 118��(ARS ���� 2��)
<br>&nbsp;&nbsp;   - ������ȣ��ũ��������ȸ : 02-580-0533~4
<br>&nbsp;&nbsp;   - �����û ÷�ܹ��˼���� : 02-3480-2000
<br>&nbsp;&nbsp;   - ����û ���̹��׷��������� : 02-392-0330</p>
<br><br>
</div>
				  <p class="pt20 pl20"><strong>- �ѱ��������� Ȩ������ �������� ��ȣå���� : ��ö�� ����</strong><br />- �̸��� : davejang@knoc.co.kr<br />- ��ȭ��ȣ : 031-380-2420<br />
				  <p class="pt20 pl20"><strong>- �ѱ��������� Ȩ������ �������� ��ȣ����� : �輺�� �븮</strong><br />- �̸��� : sh-kim@knoc.co.kr<br />- ��ȭ��ȣ : 031-380-2324<br />
              </div>
            </div>
      </div>
    
        <%@include file="/include/comfooter.jsp"%><!--// footer: start //-->	<!--// footer: end //-->
    </div>
</div>
</body>
</html>