package com.neoboard.util;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class MySqlFunction {
	/** 
	 * <p>�Է��� ������(����Ʈ �迭)�� SHA1 �˰������� ó���Ͽ� �ؽ����� �����Ѵ�.</p>
	 *
	 * <pre>
	 * getHash([0x68, 0x61, 0x6e]) = [0x4f, 0xf6, 0x15, 0x25, 0x34, 0x69, 0x98, 0x99, 0x32, 0x53, 0x2e, 0x92, 0x60, 0x06, 0xae, 0x5c, 0x99, 0x5e, 0x5d, 0xd6]
	 * </pre>
	 *
	 * @param input �Է� ������(<code>null</code>�̸� �ȵȴ�.)
	 * @return �ؽ���
	 */
	public static byte[] getHash(byte[] input) {
	    try {
	            MessageDigest md = MessageDigest.getInstance("SHA1");
	            return md.digest(input);
	        } catch (NoSuchAlgorithmException e) {
	            // �Ͼ ��찡 ���ٰ� ������ ������ ���� Exception �߻�
	            throw new RuntimeException("SHA1" + " Algorithm Not Found", e);
	        }
	}
	/**
	 * <p>MySQL �� PASSWORD() �Լ�
	 * @param input
	 * @return
	 */
	public static String password(byte[] input)  {
	    byte[] digest = null;
	     
	    // Stage 1
	    digest = getHash(input);
	    // Stage 2
	    digest = getHash(digest);
	 
	    StringBuilder sb = new StringBuilder(1 + digest.length);
	    sb.append("*");
	    /**
	     * 2016.3.21 JSM
	     * ���Ⱦ��� ��ġ
	     */	    
	    if(digest != null){
	    	sb.append(ByteUtils.toHexString(digest).toUpperCase());
	    }
	    return sb.toString();
	}
	 
	/**
	 * <p>MySQL �� PASSWORD() �Լ�.</p>
	 *
	 * @param input
	 * @return
	 * @throws NoSuchAlgorithmException
	 */
	public static String password(String input) {
	    if (input == null) {
	        return null;
	    }
	    return password(input.getBytes());
	}
	 
	/**
	 * <p>MySQL �� PASSWORD() �Լ�.</p>
	 * @param input
	 * @param charsetName
	 * @return
	 * @throws UnsupportedEncodingException
	 */
	public static String password(String input, String charsetName) throws UnsupportedEncodingException {
	    if (input == null) {
	        return null;
	    }
	    return password(input.getBytes(charsetName));
	}

}
