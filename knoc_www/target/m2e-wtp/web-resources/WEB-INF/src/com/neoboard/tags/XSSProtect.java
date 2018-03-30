package com.neoboard.tags;

import java.util.regex.Pattern;

import com.neoboard.tags.FileIO;
import com.neoboard.tags.FileProperties;
import com.neoboard.tags.JUtil;


public class XSSProtect {
	private static String replaceComment;			// Tag�� ��ü �� ���ڿ�
	private static String propertyFile;
	private static String[] tagList = null;

	/**
	 *  ���� ��� Tag ��������
	 */
	private static String[] getTagList(){
		replaceComment = "xx";
		propertyFile = "xsstag.properties";

		FileProperties property= new FileProperties();
		try{
			property.readFromFile(com.neoboard.data.Property.PROPERTY_FILE_ROOT + "/classes" + java.io.File.separator + propertyFile);
			/**
			 * 2016. 03. 21 / MYM
			 * ���Ⱦ��� ��ġ
			 */
			String strValue = property.getValue("tag1");
			if(strValue == null) { strValue = ""; }
			tagList = strValue.split(",");
		}catch(Exception e){
			System.out.println("Class: XSSProtect, ������Ƽ ������ �о���� ���߽��ϴ�. " + e.getMessage());
		}

		return tagList;
	}

	/**
	 * HTML ���
	 * ���� Tag�� ��ü ���ڷ� Replace ó��
	 * @param value		����
	 * @return
	 */
	public static String ReplaceValue(String value){
		getTagList();

		if (value == null) return "";
		if (tagList == null) return value;

		for (int i = 0 ; i < tagList.length ; i++){
			Pattern p = Pattern.compile("("+tagList[i]+")", Pattern.CASE_INSENSITIVE);
			value = p.matcher(value).replaceAll(tagList[i]+replaceComment);
		}

		return value;
	}

	/**
	 * TEXT ���
	 * @param value
	 * @return
	 */
	public static String ReplaceTag(String value){
		if (value == null) return "";

		value = value.replaceAll("<", "&lt;");
		value = value.replaceAll(">", "&gt;");

		return value;
	}
}
