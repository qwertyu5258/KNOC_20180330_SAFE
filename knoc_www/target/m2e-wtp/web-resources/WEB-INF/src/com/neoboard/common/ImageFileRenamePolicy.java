package com.neoboard.common;

import java.io.File;
import java.text.SimpleDateFormat;
import java.util.Date;

import com.oreilly.servlet.multipart.FileRenamePolicy;


/**
 * @author Jang JeongYeon (jyjang@mcat.co.kr)
 * @version 1.0
 */
public class ImageFileRenamePolicy implements FileRenamePolicy {
	/**
	 * Image File�� ��� �������� Rename
	 */
	public File rename(File upFile) {
	    String fileName = upFile.getName();	//���� ���ϸ�
		String fileExe = "";				//���� Ȯ����

		String newFileNameBody = ""; 		//Ȯ���ڸ� ������ �� ���ϸ�
		String newFileName = "";			//�� ���ϸ�(Ȯ���� ����)
		
		int index = 0;						//���ϸ� �ߺ��� ������ �ε���
		int dotIndex;
		String tmpStr = "";
		
		boolean imageFlag = false;			//�̹����� ���		
		
		java.io.File tmpFile;				//���ϸ��� ������ �� ���� ��ü 

		dotIndex = fileName.lastIndexOf(".");
		
		if(dotIndex != -1){
			fileExe = fileName.substring(dotIndex);					// '.'�� ���Ե�
			newFileNameBody = fileName.substring(0, dotIndex);		// '.'�� ������ ���ϸ�
		}else{
			newFileNameBody = fileName;
		}
		
		//Ȯ���ڰ� �̹����� ��츸
		tmpStr = fileExe.toLowerCase();
		
		//�̹������� �˻� 
		if(tmpStr.indexOf("jpg") != -1 || tmpStr.indexOf("jpeg") != -1 || tmpStr.indexOf("gif") != -1 || tmpStr.indexOf("bmp") != -1 || tmpStr.indexOf("ico") != -1){
			imageFlag = true;
		}
		
		if(imageFlag){	//�̹����� ���		
			tmpStr = "";
			
			//���ϸ� ����(���ϸ��� ��¥�������� �ٲ�)
			while(true){
				Date date = new Date();
		        SimpleDateFormat simpleDate = new SimpleDateFormat("yyyyMMddHHmmss");
				String today=simpleDate.format(date);
				
				newFileName = today + tmpStr + fileExe;	//���� Ȯ���ڸ� ����				
					
				tmpFile = new File(upFile.getParent()+"/viewImages", newFileName);												
				//�ߺ����� �˻�
				try{
					if(tmpFile.createNewFile()){						
						//�ߺ� ������ ������ �����̹Ƿ� ������. 
						break;
					}//if
				}catch(Exception e){}
				
				index = index + 1;
				tmpStr = "" + index;	//�ڿ� ���ڸ� ����.
				
				if(index > 10000) break;	//1�ʿ� ������ 1���� �̻� �ö�� �� ���ٰ� ����.
				
				tmpFile = null;
			}		
		}else{
		//�̹����� �ƴ� ��� - ���� ��Ŀ������ ��. �ڿ� ���ڸ� ����.
			
			//���ϸ� ����(���ϸ��� ��¥�������� �ٲ�)
			tmpStr = "";
			
			while(true){
				Date date = new Date();
		        SimpleDateFormat simpleDate = new SimpleDateFormat("yyyyMMddHHmmss");
				String today=simpleDate.format(date);				
				
				newFileName = newFileNameBody + today + fileExe;	//���� Ȯ���ڸ� ����
					
				tmpFile = new File(upFile.getParent()+"/attachFiles", newFileName);
				
				//�ߺ����� �˻�
				try{
					if(tmpFile.createNewFile()){
						//�ߺ� ������ ������ �����̹Ƿ� ������. 
						break;
					}//if
				}catch(Exception e){}		
				
				index = index + 1;
				tmpStr = "" + index;	//�ڿ� ���ڸ� ����.
				
				if(index > 10000) break;
				
				tmpFile = null;
			}
		}
		
		return tmpFile;
	}
	
	//���ڸ� 2�ڸ� ���ڷ� ���� 
	private String toString(int tmp){
		if(tmp < 10){
			return "0" + tmp;
		}else{
			return tmp + "";
		}
	}
	
}
