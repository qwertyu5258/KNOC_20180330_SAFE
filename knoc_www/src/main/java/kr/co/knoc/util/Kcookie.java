package kr.co.knoc.util;

import java.io.*;
import java.util.*;
import java.net.*;
import javax.servlet.http.*;



public class Kcookie {
	
	// ��Ű �б� (request, ����̸�)
	public static String getCookie(HttpServletRequest req, String name){
		String value = "";
		boolean flag = false;
		try{
			Cookie[] cookies = req.getCookies();
			if (cookies != null){
				for (int i = 0; i < cookies.length; i++){
					if (cookies[i].getName().equals (name)){
						if (!cookies[i].getValue().equals ("")){ 
							value = cookies[i].getValue();
						}else{
							cookies[i].setMaxAge(0);
						}
					}
				}
			}
		}catch(Exception e){
		   System.out.println(e.toString());
		}  


		return value;
	}
	
	// ��Ű ���� (request, ��Ű�̸�)
	public static void delCookie(HttpServletRequest req, String name){
		try{
			Cookie[] cookies = req.getCookies();
			if (cookies != null){
				for (int i = 0; i < cookies.length; i++){
					if (cookies[i].getName().equals (name)){
						cookies[i].setMaxAge(0);
					}
				}
			}
		}catch(Exception e){
		   System.out.println(e.toString());
		}  

	}	
	
	// ��Ű ���� (response, ��Ű�̸�, ��Ű��)
	public static void setCookie(HttpServletResponse res, String name, String value){
		Cookie cookie = new Cookie (name, value);
		cookie.setPath("/");                                        
		cookie.setMaxAge(-1);
		res.addCookie(cookie);
	}
	
	// ��Ű ���� (response, ��Ű�̸�, ��Ű��, ��Ű ��ȿ�Ⱓ)
	public static void setCookie(HttpServletResponse res, String name, String value,int time){
		Cookie cookie = new Cookie (name, value);
		cookie.setPath("/");                                        
		cookie.setMaxAge(time);
		res.addCookie(cookie);
	}
	
	// ��Ű ���� (response, ��Ű�̸�, ��Ű��, ����������)
	public static void setCookie(HttpServletResponse res, String name, String value,String domain){
		Cookie cookie = new Cookie (name, value);
		cookie.setPath("/");                                        
		cookie.setMaxAge(-1);
		cookie.setDomain(domain);
		res.addCookie(cookie);
	}
	
	// ��Ű ���� (response, ��Ű�̸�, ��Ű��, ��Ű��ȿ�Ⱓ, ����������)
	public static void setCookie(HttpServletResponse res, String name, String value,int time, String domain){
		Cookie cookie = new Cookie (name, value);
		cookie.setPath("/");                                        
		cookie.setMaxAge(time);
		cookie.setDomain(domain);
		res.addCookie(cookie);
	}	

}
