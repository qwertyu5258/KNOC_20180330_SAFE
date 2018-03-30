package com.neoboard.data;

import java.io.BufferedInputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.*;

import com.neoboard.util.NumberConvert;
import com.neoboard.util.EtcUtil;

import com.neoboard.session.UserSession;
import com.neoboard.tags.FileProperties;



public class Property_090922_back implements Serializable {
    private static SkinTable skins = null;
    
    public static String ROOT = getRoot("upload_extension.properties");  
    public static String PROPERTY_FILE_ROOT = ROOT + "WEB-INF";
    public static String ROOT_DIR = ROOT + "neoboard";
    public static String ROOT_URL = "/neoboard";
    public static String SKIN_ROOT = ROOT_DIR + "/skin";
    public static String SKIN_URL = ROOT_URL + "/skin";
    public static String SKIN_URL_IMG = "/neoboard/skin";
    public static String UPLOAD_ROOT = ROOT + "upload/neoboard";
    public static String ETC_UPLOAD_ROOT = ROOT + "upload";
    public static String SERVLET_ROOT = "/servlet";
    public static String UPLOAD_NOT_EXTENSION = ROOT + "WEB-INF/classes/upload_extension.properties";
          
    public static final String TABLE_PREFIX = "NEOBOARD_";
    
    private static Object lock = new Object();      
            
    /**
     * ��Ʈ��� ���ϱ�
     * @param name
     * @return
     */
    public static String getRoot(String name) {
    	ClassLoader loader = Thread.currentThread().getContextClassLoader();
    	File mapLoader = new File(loader.getResource(name).getFile());
    	String classPath = mapLoader.getParent();
    	// WEB-INF �������� ��ġ�� �˾Ƴ���
    	int positionNo = classPath.indexOf("WEB-INF");  
    	return classPath.substring(0, positionNo);
	}    	   
    
    /** 
     * ��ư ǥ�� ���� üũ
     * @param button
     * @param a
     * @param p
     * @param ses
     * @return
     */
    public static boolean isViewable(String button, Authority a, Property_090922_back p, UserSession ses) {
        if(p.getUseAuth().equals("1")) {
	        if(button.equals("registration")) {
	            if(ses != null) {
	                /* ������ �̸� �� */
	            	if (a.getMaster() != null && !a.getMaster().equals("")) {
	            		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
	            	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	                /* ���� ������ */
	                if (a.getRegistrationAllowedUser() != null && !a.getRegistrationAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getRegistrationAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ����� ����� �� */
	                if(p.getUseRegistration().equals("1")) {
		                /* ��� ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelRegistration()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
	                
		        }
	            else {
	            	return false;
	            }
	        }
	        else if(button.equals("edit")) {
	            if(ses != null) {
	                /* ������ �̸� �� */
	            	if (a.getMaster() != null && !a.getMaster().equals("")) {
	            		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
	            	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	                /* ���� ������ */
	                if (a.getEditAllowedUser() != null && !a.getEditAllowedUser().equals("")) {	                
	                	if(Property_090922_back.findAllowedID(a.getEditAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ������ ����� �� */
	                if(p.getUseEdit().equals("1")) {
		                /* ���� ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelEdit()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
		        }
	            else {
	            	return false;
	            }
	        }
	        else if(button.equals("reply")) {
	        	if(ses != null) {
	            	//if(!p.getUseReply().equals("1")) return false;
	                /* ������ �̸� �� */
	            	if (a.getMaster() != null && !a.getMaster().equals("")) {
	            		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
	            	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	                /* ���� ������ */
	                if (a.getReplyAllowedUser() != null && !a.getReplyAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getReplyAllowedUser(),ses.getUserID())) return true;
	                }
	                /* �亯�� ����� �� */
	                if(p.getUseReply().equals("1")) {
		                /* �亯 ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelReply()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
		        }
	            else {
	            	return false;
	            }
	        }
	        else if(button.equals("delete")) {
	            if(ses != null) {
	                /* ������ �̸� �� */
	            	if (a.getMaster() != null && !a.getMaster().equals("")) {
	            		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
	            	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	                /* ���� ������ */
	                if (a.getDeleteAllowedUser() != null && !a.getDeleteAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getDeleteAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ���� ����� �� */
	                if(p.getUseDelete().equals("1")) {
		                /* ���� ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelDelete()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
		        }
	            else {
	            	return false;
	            }
	        }
	        else if(button.equals("notice")) {
	            if(ses != null) {
	                /* ������ �̸� �� */
	            	if (a.getMaster() != null && !a.getMaster().equals("")) {
	            		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
	            	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	            	/* ���� ������ */
	                if (a.getNoticeAllowedUser() != null && !a.getNoticeAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getNoticeAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ������ ����� �� */
	                if(p.getUseNotice().equals("1")) {
		                /* ������ ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelNotice()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
		        }
	            else {
                    return false;
	            }
	        }
	        else if(button.equals("useDouble")) {
	            if(ses != null) {
	                /* ������ �̸� �� */
	            	if (a.getMaster() != null && a.getMaster().equals("")) {
	            		if(a.getMaster().indexOf(ses.getUserID()) > -1 ) return true;
	            	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;
	                
	                /* �ߺ��� ��� ����Ҷ� */
	                if(p.getUseDouble().equals("1")) {
		                /* �ߺ��� ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= 6) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
		        }
	            else {
                    return false;
	            }
	        }
        }
        else {
            if(ses != null){
                if(button.equals("registration")) {
    	            /* ������ �̸� �� */
                	if (a.getMaster() != null && !a.getMaster().equals("")) {
                		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
                	}
	                /* ��ü ������ level == 1 */
                	if(ses.getUserLevel().equals("1")) return true;

	                /* ���� ������ */
	                if (a.getRegistrationAllowedUser() != null && !a.getRegistrationAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getRegistrationAllowedUser(),ses.getUserID())) return true;
	                }
	                /* �亯�� ����� �� */
	                if(p.getUseRegistration().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("edit")) {
    	            /* ������ �̸� �� */
    	        	if (a.getMaster() != null && !a.getMaster().equals("")) {
    	        		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
    	        	}
	                /* ��ü ������ level == 1 */
    	        	if(ses.getUserLevel().equals("1")) return true;
	                /* ���� ������ */
	                if (a.getEditAllowedUser() != null && !a.getEditAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getEditAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ������ ����� �� */
	                if(p.getUseEdit().equals("1")) {
		                return true;
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("reply")) {
    	        	if(!p.getUseReply().equals("1")) return false;
    	            /* ������ �̸� �� */
    	        	if (a.getMaster() != null && !a.getMaster().equals("")) {
    	        		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
    	        	}
	                /* ��ü ������ level == 1 */
    	        	if(ses.getUserLevel().equals("1")) return true;

    	        	/* ���� ������ */
	                if (a.getReplyAllowedUser() != null && !a.getReplyAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getReplyAllowedUser(),ses.getUserID())) return true;
	                }
	                /* �亯�� ����� �� */
	                if(p.getUseReply().equals("1")) {
		                return true;
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("delete")) {
    	            /* ������ �̸� �� */
    	        	if (a.getMaster() != null && !a.getMaster().equals("")) {
    	        		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
    	        	}
	                /* ��ü ������ level == 1 */
    	        	if(ses.getUserLevel().equals("1")) return true;

	                /* ���� ������ */
	                if (a.getDeleteAllowedUser() != null && !a.getDeleteAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getDeleteAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ���� ����� �� */
	                if(p.getUseDelete().equals("1")) {
		                /* ���� ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelDelete()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("notice")) {
    	            /* ������ �̸� �� */
    	        	if (a.getMaster() != null && !a.getMaster().equals("")) {
    	        		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
    	        	}
	                /* ��ü ������ level == 1 */
    	        	if(ses.getUserLevel().equals("1")) return true;
	                /* ���� ������ */
	                if (a.getNoticeAllowedUser() != null && !a.getNoticeAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getNoticeAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ������ ����� �� */
	                if(p.getUseNotice().equals("1")) {
		                /* ������ ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelNotice()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("useDouble")) {
	                /* ������ �̸� �� */
	            	if (a.getMaster() != null && !a.getMaster().equals("")) {
	            		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
	            	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;
	                
	                /* �ߺ��� ��� ����Ҷ� */
	                if(p.getUseDouble().equals("1")) {
		                /* �ߺ��� ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= 6) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else {
    	            return false;
    	        }
            }
            else {
	            if(button.equals("registration")) {
	                if(p.getUseRegistration().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
		        }
		        else if(button.equals("edit")) {
	                if(p.getUseEdit().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
		        }
		        else if(button.equals("reply")) {
	                if(p.getUseReply().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
		        }
		        else if(button.equals("delete")) {
	                if(p.getUseDelete().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
		        }
		        else if(button.equals("notice")) {
	                if(p.getUseNotice().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
		        }
		        else if(button.equals("useDouble")) {
	                if(p.getUseDouble().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
		        }
            }
        }
        return false;
    }
    /** 
     * ��ư ǥ�� ���� üũ
     * @param button
     * @param a
     * @param p
     * @param ses
     * @return
     */
    public static boolean isViewable(String button, Authority a, Property_090922_back p, UserSession ses, String articleUserID) {
        if(p.getUseAuth().equals("1")) {
            if(button.equals("registration")) {
                if(ses != null) {
                    /* ������ �̸� �� */
                	if (a.getMaster() != null && !a.getMaster().equals("")) {
                		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
                	}
                    /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

                    /* ���� ������ */
                    if (a.getRegistrationAllowedUser() != null && !a.getRegistrationAllowedUser().equals("")) {
                    	if(Property_090922_back.findAllowedID(a.getRegistrationAllowedUser(),ses.getUserID())) return true;
                    }
                   /* ����� ����� �� */
                    if(p.getUseRegistration().equals("1")) {
    	                /* ������ ���� �� �� */
    	                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelRegistration()) {
    	                    return true;
    	                }
    	                else {
    	                    return false;
    	                }
                    }
                    else {
                        return false;
                    }
    	        }
                else {
                    return false;
                }
            }
            else if(button.equals("edit")) {
                if(ses != null) {
                    /* ������ �̸� �� */
                	if (a.getMaster() != null && !a.getMaster().equals("")) {
                		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
                	}                	
                    /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

                    /* ���� ������ */
                    if (a.getEditAllowedUser() != null && !a.getEditAllowedUser().equals("")) {
                    	if(Property_090922_back.findAllowedID(a.getEditAllowedUser(),ses.getUserID())) return true;
                    }
                                      
                    /* ���� ��� ���� �� �� */
                    if(p.getUseEdit().equals("1")) {
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelEdit()) {
		                    return true;
		                }
		                else {
		                    /* �ڱ� ������ üũ */
		                    if(!"".equals(articleUserID) && ses.getUserID().equals(articleUserID)) {
		                        return true;
		                    }
		                    else {
		                        return false;
		                    }
		                }
                    }
                    else {
                        return false;
                    }
    	        }
                else {
                	return false;
                }
            }
            else if(button.equals("reply")) {
                if(ses != null) {
                    /* ������ �̸� �� */
                	if (a.getMaster() != null && !a.getMaster().equals("")) {
                		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
                	}
                    /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;
	            	
                    /* ���� ������ */
                    if (a.getReplyAllowedUser() != null && !a.getReplyAllowedUser().equals("")) {
                    	if(Property_090922_back.findAllowedID(a.getReplyAllowedUser(),ses.getUserID())) return true;
                    }
                    /* �亯�� ����� �� */
                    if(p.getUseReply().equals("1")) {
    	                /* �亯 ��� ���� �� �� */
    	                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelReply()) {
    	                    return true;
    	                }
    	                else {
    	                    return false;
    	                }
                    }
                    else {
                        return false;
                    }
                   
    	        }
                else {
                	return false;
                }
            }
            else if(button.equals("delete")) {
                if(ses != null) {
                    /* ������ �̸� �� */
                	if (a.getMaster() != null && !a.getMaster().equals("")) {
                		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
                	}                	
                    /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;
	            	
                    /* ���� ������ */
                    if (a.getDeleteAllowedUser() != null && !a.getDeleteAllowedUser().equals("")) {
                    	if(Property_090922_back.findAllowedID(a.getDeleteAllowedUser(),ses.getUserID())) return true;
                    }
                    
                    /* ���� ��� ���� �� �� */
                    if(p.getUseDelete().equals("1")) {
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelDelete()) {
		                    return true;
		                }
		                else {
		                    /* �ڱ� ������ üũ */
		                    if(!"".equals(articleUserID) && ses.getUserID().equals(articleUserID)) {
		                        return true;
		                    } else {
		                        return false;
		                    }
		                }
                    }
                    else {
                        return false;
                    }
    	        }
                else {
                	return false;
                }
            }    
        }
        else {
            if(ses != null){
                if(button.equals("registration")) {
    	            /* ������ �̸� �� */
                	if (a.getMaster() != null && !a.getMaster().equals("")) {
                		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
                	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	            	/* ���� ������ */
	                if (a.getRegistrationAllowedUser() != null && !a.getRegistrationAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getRegistrationAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ����� ����� �� */
	                if(p.getUseRegistration().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("edit")) {
    	            /* ������ �̸� �� */
    	        	if (a.getMaster() != null && !a.getMaster().equals("")) {
    	        		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
    	        	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	                /* ���� ������ */
	                if (a.getEditAllowedUser() != null && !a.getEditAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getEditAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ������ ����� �� */
	                if(p.getUseEdit().equals("1")) {
		                return true;
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("reply")) {
    	            /* ������ �̸� �� */
    	        	if (a.getMaster() != null && !a.getMaster().equals("")) {
    	        		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
    	        	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	            	/* ���� ������ */
	                if (a.getReplyAllowedUser() != null && !a.getReplyAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getReplyAllowedUser(),ses.getUserID())) return true;
	                }
	                /* �亯�� ����� �� */
	                if(p.getUseReply().equals("1")) {
		                return true;
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("delete")) {
    	            /* ������ �̸� �� */
    	        	if (a.getMaster() != null && !a.getMaster().equals("")) {
    	        		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
    	        	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	            	/* ���� ������ */
	                if (a.getDeleteAllowedUser() != null && !a.getDeleteAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getDeleteAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ���� ����� �� */
	                if(p.getUseDelete().equals("1")) {
		                /* ���� ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelDelete()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else if(button.equals("notice")) {
    	            /* ������ �̸� �� */
    	        	if (a.getMaster() != null && !a.getMaster().equals("")) {
    	        		if(Property_090922_back.findAllowedID(a.getMaster(),ses.getUserID())) return true;
    	        	}
	                /* ��ü ������ level == 1 */
	            	if(ses.getUserLevel().equals("1")) return true;

	            	/* ���� ������ */
	                if (a.getNoticeAllowedUser() != null && !a.getNoticeAllowedUser().equals("")) {
	                	if(Property_090922_back.findAllowedID(a.getNoticeAllowedUser(),ses.getUserID())) return true;
	                }
	                /* ������ ����� �� */
	                if(p.getUseNotice().equals("1")) {
		                /* ������ ��� ���� �� �� */
		                if(Integer.parseInt(ses.getUserLevel()) <= a.getLevelNotice()) {
		                    return true;
		                }
		                else {
		                    return false;
		                }
	                }
	                else {
	                    return false;
	                }
    	        }
    	        else {
    	            return false;
    	        }
            }
            else {
	            if(button.equals("registration")) {
	                if(p.getUseRegistration().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
	            }
	            else if(button.equals("edit")) {
	                /* ������ ����� �� */
	                if(p.getUseEdit().equals("1")) {
		                return true;
	                }
	                else {
	                    return false;
	                }
	            }
	            else if(button.equals("reply")) {
	                if(p.getUseReply().equals("1")) {
	                    return true;
	                }
	                else {
	                    return false;
	                }
	            }
	            else if(button.equals("delete")) {
	                if(p.getUseDelete().equals("1")) {
		                return true;
		            }
	                else {
	                    return false;
	                }
	            } 
            }
        }
        return false;
    }
    
    public static boolean findAllowedID(String idList, String id) {
    	if(idList == null || id == null) return false;
    	StringTokenizer token = new StringTokenizer(idList,",");
    	while(token.hasMoreElements()) {
    		String t = (String)token.nextElement();
    		if(t.toUpperCase().equals(id.toUpperCase())){
    			return true;
    		}
    	}
    	return false;
    }
    
    public Property_090922_back() {
        this.boardID = "";
        this.categoryID = "";
        this.categoryName = "";
        this.boardName = "";
        this.boardType = "";
        this.skinName = "";
        this.skinID = "";
        this.maxSubjectLength = 100;
        this.listPerPage = 12;
        this.pagePerBlock = 10;
        this.topIncludeFile = "";
        this.topIncludeText = "";
        this.bottomIncludeFile = "";
        this.bottomIncludeText = "";
        this.useRegistration = "0";
        this.useReply = "0";
        this.useEdit = "0";
        this.useDelete = "0";
        this.useComment = "0";
        this.useImageView = "0";
        this.useAuth = "0";
        this.allowedExtension = "";
        this.maxUpload = 2048;
        this.useSecret = "0";
        this.useNotice = "0";
        this.useGroup = "0";
        this.useNew = "0";
        this.newLimit = 1;
        this.useCool = "0";
        this.coolLimit = 100;
        this.useMailing = "0";
        this.mailTemplate = "";
        this.mailFrom = "";
        this.mailTo = "";
        this.mailServer = "localhost";
        this.mailAccount = "";
        this.mailPasswd = "";
        this.status = "";
        this.useDouble = "0";
        this.useRss = "0";
        this.useMovie = "0";  
        this.banwd = "";
        this.banIp = "";
        this.pageUrl = "";
        this.useSearch = "0";
    }   
    
    /** �Խ��� ���̵� */
    private String boardID;
    /** �Խ��� ī�װ� ID */
    private String categoryID;
    /** �Խ��� ī�װ� �̸� */
    private String categoryName;
    /** �Խ��� �̸� */
    private String boardName;
    /** �Խ��� Ÿ�� */
    private String boardType;
    /** ȭ�� ��¿� ��Ų �̸� */
    private String skinName;
    /** ��Ų ���̵�(��Ų ���) */
    private String skinID;
    /** ���� �ִ� �ۼ� (�ִ� 100)*/
    private int maxSubjectLength;
    /** ������ �� ��� �� */
    private int listPerPage;
    /** �� �� ������ �� */
    private int pagePerBlock;
    /** ��� ���� ȭ�� �н� */
    private String topIncludeFile;
    /** ��� ���� HTML */
    private String topIncludeText;
    /** �ϴ� ���� ȭ�� �н� */
    private String bottomIncludeFile;
    /** �ϴ� ���� HTML */
    private String bottomIncludeText;
    /** �� ��� ��� ���� (1:��� , 0:�̻��) */
    private String useRegistration;
    /** �� �亯 ��� ���� (1:��� , 0:�̻��) */
    private String useReply;
    /** �� ���� ��� ���� (1:��� , 0:�̻��) */
    private String useEdit;
    /** �� ���� ��� ���� (1:��� , 0:�̻��) */
    private String useDelete;
    /** ���� ��� ���� (1:��� , 0:�̻��) */
    private String useComment;
    /** �̹��� �Խ��� ��� ���� (1:��� , 0:�̻��) */
    private String useImageView;
    /** �α��� ��� ���� (1:��� , 0:�̻��) */
    private String useAuth;
    /** ÷�� ���� ���� Ȯ����(÷�������� ���� �� Ȯ���� ����) */
    private String allowedExtension;
    /** �ִ� ���ε� �뷮 (KB)*/
    private int maxUpload;
    /** �ִ� ���ε� ���� ���� �� */
    private int maxFileAttach;
    /** ��б� ��뿩�� */
    private String useSecret;
    /** ������ ��뿩�� */
    private String useNotice;
    
     /** �׷� ��뿩�� */
    private String useGroup;
    /** ���� ǥ�� ��뿩�� */
    private String useNew;
    /** ���� ǥ�� �Ѱ� */
    private int newLimit;
    /** Cool �Խù� ��뿩�� */
    private String useCool;
    /** Cool �Խù� ��ȸ�� �Ѱ� */
    private int coolLimit;
    /** ���ϸ� ��뿩�� 
     * "0" ������ : "W" �� ��Ͻ�, "R" �� �亯��, "C" �ڸ�Ʈ ��Ͻ�
     * */
    private String useMailing;
    /** ���� ���ø� HTML */
    private String mailTemplate;
    /** ���� From */
    private String mailFrom;
    /** ���� To */
    private String mailTo;
    /** ���� ���� */
    private String mailServer;
    /** ���� Account */
    private String mailAccount;
    /** ���� Passwd */
    private String mailPasswd;
    /** �Խ��� ��� ���� "0" �̻��, "1" ��� */
    private String status;  
    /** �ߺ��Է� ��� ���� */
    private String useDouble;
    /** RSS ��� ���� */
    private String useRss;
    /** ������ URL ��� ���� */
    private String useMovie;
    
    /** ������ */
    private String banwd;
    /** ����IP */
    private String banIp;
    /** ������ URL */
    private String pageUrl;
    /** �˻���뿩�� */
    private String useSearch;
    
    
    public String getUseDouble() {
		return useDouble;
	}
	public void setUseDouble(String useDouble) {
		this.useDouble = useDouble;
	}
	public String getUseSecret() { return this.useSecret;}
    public void setUseSecret(String value) { if(value == null) value = "0"; this.useSecret = value; }
    
    public String getUseNotice() { return this.useNotice; }
    public void setUseNotice(String value) { if(value == null) value = "0"; this.useNotice = value; }
    
    public String getBoardID() { return this.boardID; }
    public void setBoardID(String value) { if(value == null) value = ""; this.boardID = value.trim(); }
    
    public String getCategoryID() { return this.categoryID; }
    public void setCategoryID(String value) { if(value == null) value = ""; this.categoryID = value.trim(); }
    
    public String getCategoryName() { return this.categoryName; }
    public void setCategoryName(String value) { if(value == null) value = ""; this.categoryName = value.trim(); }
    
    public String getBoardName() { return this.boardName; }
    public void setBoardName(String value) { if(value == null) value = ""; this.boardName = value; }
    
    public String getBoardType() { return this.boardType; }
    public void setBoardType(String value) { if(value == null) value = ""; this.boardType = value; }
    
    public String getSkinName() { return this.skinName; } 
    public void setSkinName(String value) { if(value == null) value = ""; this.skinName = value; }
    
    public String getSkinID() { return this.skinID; }
    public void setSkinID(String value) { if(value == null) value = ""; this.skinID = value; }
    
    public int getMaxSubjectLength() { return this.maxSubjectLength; }
    public void setMaxSubjectLength(int value) { this.maxSubjectLength = value; }
    
    public int getListPerPage() { return this.listPerPage; }
    public void setListPerPage(int value) { this.listPerPage = value; }
    
    public int getPagePerBlock() { return this.pagePerBlock; }
    public void setPagePerBlock(int value) { this.pagePerBlock = value; }
    
    public String getTopIncludeFile() { return this.topIncludeFile; } 
    public void setTopIncludeFile(String value) { if(value == null) value = ""; this.topIncludeFile = value.trim(); }
    
    public String getTopIncludeText() { return this.topIncludeText; }
    public void setTopIncludeText(String value) { if(value == null) value = ""; this.topIncludeText = value.trim(); }
    
    public String getBottomIncludeFile() { return this.bottomIncludeFile; }
    public void setBottomIncludeFile(String value) { if(value == null) value = ""; this.bottomIncludeFile = value.trim(); }
    
    public String getBottomIncludeText() { return this.bottomIncludeText; }
    public void setBottomIncludeText(String value) { if(value == null) value = ""; this.bottomIncludeText = value.trim(); }
    
    public String getUseRegistration() { return this.useRegistration; }
    public void setUseRegistration(String value) { if(value == null) value = "0"; this.useRegistration = value.trim(); }
    
    public String getUseReply() { return this.useReply; } 
    public void setUseReply(String value) { if(value == null) value = "0"; this.useReply = value.trim(); }
    
    public String getUseEdit() { return this.useEdit; }
    public void setUseEdit(String value) { if(value == null) value = "0"; this.useEdit = value.trim(); }
    
    public String getUseDelete() { return this.useDelete; }
    public void setUseDelete(String value) { if(value == null) value = "0"; this.useDelete = value.trim(); }
    
    public String getUseComment() { return this.useComment; } 
    public void setUseComment(String value) { if(value == null) value = "0"; this.useComment = value.trim(); }
    
    public String getUseImageView() { return this.useImageView; }
    public void setUseImageView(String value) { if(value == null) value = "0"; this.useImageView = value.trim(); }
    
    public String getUseAuth() { return this.useAuth; }
    public void setUseAuth(String value) { if(value == null) value = "0"; this.useAuth = value.trim(); }
    
    public String getAllowedExtension() { return this.allowedExtension; }
    public void setAllowedExtension(String value) {if(value == null) value = "";this.allowedExtension = value.trim();}
    
    public String getDefaultNotAllowedExtension() {
    	String extension = "jsp,asp,cgi,php,js,class,java,sh,perl,bat,php3,exe,aspx";
    	try {
    		FileProperties property= new FileProperties();
	    	property.readFromFile(Property_090922_back.UPLOAD_NOT_EXTENSION);
	    	extension = property.getValue("EXT");
		} catch(Exception e) {
			return extension; 
		}
    	return extension;
    }    

    public int getMaxUpload() { return this.maxUpload; } 
    public void setMaxUpload(int value) { this.maxUpload = value; }
    public String getMaxUploadLimit(String type) {
    	java.text.NumberFormat nf = java.text.NumberFormat.getNumberInstance();
    	int maxSize = this.maxUpload * 1024;
    	 String maxUpladLimit = "";
 	    if(type.toUpperCase().equals("MB")) {
 	    	maxUpladLimit = Math.round((double)maxSize/1024.0/1024.0)+"MB";
 		}
 		else if(type.toUpperCase().equals("KB")) {
 			double ds = NumberConvert.round((double)maxSize/1024.0,1);
 			maxUpladLimit = nf.format(ds) + "KB";
 		}
 		else  {			
 			double byteSize = this.maxUpload + 0.0;
 			if(byteSize >= 1024*1024){
 				maxUpladLimit = Math.round((double)maxSize/1024/1024)+"MB";
 			}else if(byteSize >= 1024){
 				double ds = NumberConvert.round((double)maxSize/1024.0,1);
 				maxUpladLimit = nf.format(ds) + "KB";
 			}else if(byteSize > 1024){
 				maxUpladLimit = byteSize + "B";				
 			}			
 		}
 	    return "<font style='font-size:8pt;color=gray'> ���� ũ��� " + maxUpladLimit + " ���� �����մϴ�.</font>";
	}
    
    public int getMaxFileAttach() { return this.maxFileAttach; }
    public void setMaxFileAttach(int value) { this.maxFileAttach = value;}
    
    public String getStatus() { return this.status; }
    public void setStatus(String value) { if(status == null) status = "1";  this.status = value; }
    
	public int getCoolLimit() {	return coolLimit;}
	public void setCoolLimit(int coolLimit) {	this.coolLimit = coolLimit;}
	
	public String getMailAccount() {	return mailAccount; }
	public void setMailAccount(String mailAccount) {	if(mailAccount == null) mailAccount = "";	this.mailAccount = mailAccount;	}
	
	public String getMailFrom() {		return mailFrom;	}
	public void setMailFrom(String mailFrom) {	if(mailFrom == null) mailFrom ="";	this.mailFrom = mailFrom;	}
	
	public String getMailPasswd() {		return mailPasswd;	}
	public void setMailPasswd(String mailPasswd) {	if(mailPasswd == null) mailPasswd = "";	this.mailPasswd = mailPasswd;	}
	
	public String getMailServer() {		return mailServer;	}
	public void setMailServer(String mailServer) {	if(mailServer == null) mailServer = "";	this.mailServer = mailServer;	}
	
	public String getMailTemplate() {		return mailTemplate;	}
	public void setMailTemplate(String mailTemplate) {	if(mailTemplate == null) mailTemplate = "";	this.mailTemplate = mailTemplate;	}
	
	public String getMailTo() {		return mailTo;	}
	public void setMailTo(String mailTo) {	if(mailTo == null) mailTo = "";	this.mailTo = mailTo;	}
	
	public int getNewLimit() {		return newLimit;	}
	public void setNewLimit(int newLimit) {		this.newLimit = newLimit;	}
	
	public String getUseCool() {		return useCool;	}
	public void setUseCool(String useCool) {	if(useCool == null) useCool = "0";	this.useCool = useCool;	}
	
	public String getUseGroup() {		return useGroup;	}
	public void setUseGroup(String useGroup) {	if(useGroup == null) useGroup = "0";	this.useGroup = useGroup;	}
	
	public String getUseMailing() {		return useMailing;	}
	public void setUseMailing(String useMailing) {	if(useMailing == null) useMailing = "0";	this.useMailing = useMailing;	}
	
	public String getUseNew() {		return useNew;	}
	public void setUseNew(String useNew) {		if(useNew == null) useNew = "0"; this.useNew = useNew;	}
	
	public String getUseRss() {		return useRss;	}
	public void setUseRss(String useRss) {		if(useRss == null) useRss = "0"; this.useRss = useRss;	}
	
	public String getUseMovie() {		return useMovie;	}
	public void setUseMovie(String useMovie) {		if(useMovie == null) useMovie = "0"; this.useMovie = useMovie;	}
	
	public String getBanwd() {		return banwd;	}
	public void setBanwd(String banwd) {	if(banwd == null) banwd = "";	this.banwd = banwd;	}
	
	public String getBanIp() {		return banIp;	}
	public void setBanIp(String banIp) {	if(banIp == null) banIp = "";	this.banIp = banIp;	}	    
	
	public String getPageUrl() {		return pageUrl;	}
	public void setPageUrl(String pageUrl) {	if(pageUrl == null) pageUrl = "";	this.pageUrl = pageUrl;	}
	
	public String getUseSearch() { return this.useSearch; }
    public void setUseSearch(String value) { if(value == null) value = "0"; this.useSearch = value.trim(); }
    
}