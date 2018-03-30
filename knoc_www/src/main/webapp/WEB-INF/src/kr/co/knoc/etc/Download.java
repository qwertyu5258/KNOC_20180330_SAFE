package kr.co.knoc.etc;

import java.io.BufferedInputStream;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import kr.co.knoc.util.EtcUtil;

public class Download extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response)
	throws ServletException, IOException 
	{
	    doPost(request,response);
	}
	public void doPost(HttpServletRequest request, HttpServletResponse response)
		throws ServletException, IOException 
	{
	    String boardID; // �Խ��� ���̵�
	    String callback; // �ݹ� ������
	    String num; // �Խù� ��ȣ
	    String bun; // ÷�����Ϲ�ȣ
	    boardID = request.getParameter("bid");
	    boardID = boardID.replaceAll("../", "");
	    boardID = boardID.replaceAll("/", "");
	    callback = request.getParameter("callback");
	    num = request.getParameter("num");
	    bun = request.getParameter("bun");	    
        
        /* �ٿ�ε� */
        BoardManager manager = new BoardManager();
        AttachFile file = manager.getAttachFile(boardID,Integer.parseInt(num));
        if(file == null) {
        	response.setContentType("text/html;charset=euc-kr");
    		PrintWriter out = new PrintWriter(new
    			OutputStreamWriter(response.getOutputStream(), "KSC5601"));
    		out.println("<script language='javaScript'>");
    		out.println("    alert('�˼��մϴ�. �ش� ������ �����Ǿ��ų� �������� �ʽ��ϴ�.')  ");
    		out.println("    history.back();           ");
    		out.println("</script>                     ");
    		out.close();
        }
        String filename = "";
        String new_filename = "";
        if (bun == null || bun.equals("")) {
        	filename = file.getFileName();
        	new_filename = file.getNewFilename();
        } else {
        	if (bun.equals("1")) {
        		filename = file.getFileName();
        	} else if (bun.equals("2")) {
        		filename = file.getFileName2();
        	} else if (bun.equals("3")) {
        		filename = file.getFileName3();
        	}
        }
                
        String filePath = EtcUtil.ETC_UPLOAD_ROOT + "/" + EtcUtil.strBlockSpecialTags(boardID) + "/" + new_filename.replaceAll("\\��","");
        //System.out.println(filePath);
        File f = new File(filePath);
        long fileSize = f.length();
        
        if(fileSize > 0 && f.isFile()) {
            byte[] buf = new byte[4096];
            /* Ŭ���̾�Ʈ Ȯ�� */
            String strClient = request.getHeader("User-Agent");
            if(strClient.indexOf("MSIE 5.5")>-1) {
                response.setHeader("Content-Disposition", "filename=" +
                	filename + ";");
                    //new String(file.getFileName().getBytes(),"ISO8859_1") + ";");              
            } 
            else {
                response.setHeader("Content-Disposition", "attachment;filename=" +
                		filename + ";");
                    //new String(file.getFileName().getBytes(),"ISO8859_1") + ";");
            }

            response.setContentType(AttachFile.getMime(file.getMimeType()));
            response.setHeader ("Content-Length", "" + fileSize );
            /* �ٿ�ε� ī��Ʈ ���� */
            //manager.increaseDownCount(boardID,Integer.parseInt(num),bun);
            
            BufferedInputStream fin   = 
                new BufferedInputStream(new java.io.FileInputStream(f));
            BufferedOutputStream outs = 
                new BufferedOutputStream(response.getOutputStream());
            int read = 0;
            
            try{
                while((read = fin.read(buf)) != -1) {
                    outs.write(buf,0,read);
                }
            } 
            catch (Exception e) {
                System.out.println(e.getMessage());
            } 
            finally {
                outs.flush();
                outs.close();
                fin.close();
            }
        }
        else {
        	response.setContentType("text/html;charset=euc-kr");
    		PrintWriter out = new PrintWriter(new
    			OutputStreamWriter(response.getOutputStream(), "KSC5601"));
    		out.println("<script language='javaScript'>");
    		out.println("    alert('�˼��մϴ�. �ش� ������ �����Ǿ��ų� �������� �ʽ��ϴ�.')  ");
    		out.println("    history.back();           ");
    		out.println("</script>                     ");
    		out.close();
        }
        
        
        
	}	
}
