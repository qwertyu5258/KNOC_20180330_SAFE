package com.neoboard.session;

public interface UserSession {
	/** ����� ���̵� */
    public String getUserID();
    /** ����� ���� */
    public String getUserLevel();
    /** ����� �̸� */  
    public String getUserName();
    /** ����� �̸��� */
    public String getUserEmail();
    
    public String getJumin();   
    /** G-Pin ���� ���� Ű�ڵ� **/
    public String getUserVirtualno();
}
