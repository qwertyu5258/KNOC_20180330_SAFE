package com.neoboard.util;

import java.lang.reflect.Field;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

public class StringUtil {
	public static boolean checkNumberFormatPhone(String phoneNumber){
		if(phoneNumber == null) return false;
		return Pattern.matches("^0[2345][1-9]{0,1}-[0-9]{3,4}-[0-9]{4}$",phoneNumber);
	}
	public static boolean checkNumberFormatMobile(String mobileNumber){
		if(mobileNumber == null) return false;
		return Pattern.matches("^01[167890]-[0-9]{3,4}-[0-9]{4}$",mobileNumber);
	}
	public static boolean checkStringFormatEmail(String email){
		if (email==null) return false;
        return Pattern.matches(
            "[\\w\\~\\-\\.]+@[\\w\\~\\-]+(\\.[\\w\\~\\-]+)+", 
            email.trim());
	}
	public static boolean checkStringZipcode(String zipcode){
		if(zipcode == null) return false;
		return Pattern.matches("^[0-9]{3}-[0-9]{3}$",zipcode);
	}
	/**
	 * ���� ������ ������
	 * @param fileSize
	 * @return
	 */
	public static String getFileSizeString(long fileSize) {
		String type = "KB";
		if(fileSize >1000*1000) type = "MB";
		java.text.NumberFormat nf = java.text.NumberFormat.getNumberInstance();
		nf.setMaximumFractionDigits(1);
		if(type.toUpperCase().equals("MB")) {
			double ds = (double)fileSize/1024.0/1024.0;
			return nf.format(ds) + "MB";
		}
		else if(type.toUpperCase().equals("KB")) {
			double ds = (double)fileSize/1024.0;
			return nf.format(ds) + "KB";
		}
		else  {
			double ds = (double)fileSize/1024.0;
			return nf.format(ds) + "KB";
		}
	}
	/**
	 * Entity Class�� null string field �ʱ�ȭ.
	 * <p>
	 * Entity class ���� �ִ� java.lang.String���� field�� DB�� Column��
	 * ������ ������ �ִ� ��찡 ����. �̷��� Entity Field�� Ư�� GUI�� Ư��
	 * TextFiled�� ǥ���Ǿ�� �ϴ� ��쵵 ����. ���� �� String Filed�� null��
	 * ��� ������ �˻縦 �Ѵٴ� ���� ������ ����� ���� �ƴ� �� ����.
	 * <p>
	 * �� method�� �������� Object ���� �ִ� ��� java.lang.String���� field ���� ��
	 * null ������ �� field�� ���̰� 0 �� blank string("")���� �ʱ�ȭ �����ش�.
	 * <p>
	 *
	 * <xmp>
	 * Sample Code:
	 * public java.util.Vector selectAll() throws Exception
	 * {
	 *  java.util.Vector list = new Vector();
	 * 	Statement stmt = null;
	 * 	ResultSet rs =null;
	 * 	try{
	 * 		stmt = conn.createStatement();
	 * 		String query = "select " +
	 * 			"id, " + 
	 * 			"name, " + 
	 * 			"desc " + 
	 * 			"from THE10 " +
	 * 			"order by id ";
	 * 
	 * 		rs = stmt.executeQuery(query);
	 * 
	 * 		while ( rs.next() ) {
	 * 			AdminAuth entity = new AdminAuth();
	 * 			entity.id = rs.getString("id");
	 * 			entity.name = rs.getString("name");
	 * 			entity.desc = rs.getString("desc");
	 * 			Utility.fixNull(entity);
	 * 			list.addElement(entity);
	 * 		}
	 * 	}
	 * 	finally {
	 * 		try{rs.close();}catch(Exception e){}
	 * 		try{stmt.close();}catch(Exception e){}
	 * 	}
	 * 	return list;
	 * }
	 *</xmp>
	 *
	 * @param java.lang.Object Object���� public java.lang.String ���� 
	 *        member variable���� ������ �ش�.
	 *
	 * @see fixNullAll(java.lang.Object)
	 * @see fixNullAndTrim(java.lang.Object)
	 * @see fixNullAndTrimAll(java.lang.Object)
	 * @author WonYoung Lee, wyounglee@lgeds.lg.co.kr
	 */
	public static void fixNull(Object o)
	{
		if ( o == null ) return;
		
		Class c = o.getClass();
		if ( c.isPrimitive() ) return;
		
		Field[] fields = c.getFields();
		for (int i=0 ; i<fields.length; i++) {
			try {
				Object f = fields[i].get(o);
				Class fc = fields[i].getType();
				
				if ( fc.getName().equals("java.lang.String") ) {
					if ( f == null ) fields[i].set(o, "");
					else	fields[i].set(o, f);
				}
			}
			catch(Exception e){
			}
		}
	}
	/**
	 * Entity Class�� null string field �ʱ�ȭ &amp; trim().
	 * <p>
	 * Entity class ���� �ִ� java.lang.String���� field�� DB�� Column��
	 * ������ ������ �ִ� ��찡 ����. �̷��� Entity Field�� Ư�� GUI�� Ư��
	 * TextFiled�� ǥ���Ǿ�� �ϴ� ��쵵 ����. ���� �� String Filed�� null��
	 * ��� ������ �˻縦 �Ѵٴ� ���� ������ ����� ���� �ƴ� �� ����.
	 * <p>
	 * �� method�� �������� Object ���� �ִ� ��� java.lang.String���� field ���� ��
	 * null ������ �� field�� ���̰� 0 �� blank string("")���� �ʱ�ȭ �����ش�.
	 * ���� null�� �ƴ� �������� String�� ���ԵǾ� ������ ���������� trim()��
	 * �����ش�.
	 * <p>
	 * �� �� trim() �Լ��� java.lang.String �� trim()�� ������� �ʾҴ�.
	 *
	 * <xmp>
	 * Sample Code:
	 * public java.util.Vector selectAll() throws Exception
	 * {
	 *  java.util.Vector list = new Vector();
	 * 	Statement stmt = null;
	 * 	ResultSet rs =null;
	 * 	try{
	 * 		stmt = conn.createStatement();
	 * 		String query = "select " +
	 * 			"id, " + 
	 * 			"name, " + 
	 * 			"desc " + 
	 * 			"from THE10 " +
	 * 			"order by id ";
	 * 
	 * 		rs = stmt.executeQuery(query);
	 * 
	 * 		while ( rs.next() ) {
	 * 			AdminAuth entity = new AdminAuth();
	 * 			entity.id = rs.getString("id");
	 * 			entity.name = rs.getString("name");
	 * 			entity.desc = rs.getString("desc");
	 * 			Utility.fixNull(entity);
	 * 			list.addElement(entity);
	 * 		}
	 * 	}
	 * 	finally {
	 * 		try{rs.close();}catch(Exception e){}
	 * 		try{stmt.close();}catch(Exception e){}
	 * 	}
	 * 	return list;
	 * }
	 *</xmp
	 *
	 * @param java.lang.Object Object���� public java.lang.String ���� 
	 *        member variable���� ������ �ش�.
	 *
	 * @see fixNull(java.lang.Object)
	 * @see fixNullAll(java.lang.Object)
	 * @see fixNullAndTrimAll(java.lang.Object)
	 * @see trim(String)
	 * @author WonYoung Lee, wyounglee@lgeds.lg.co.kr
	 */
	public static void fixNullAndTrim(Object o)
	{
		if ( o == null ) return;
		
		Class c = o.getClass();
		if ( c.isPrimitive() ) return;
		
		Field[] fields = c.getFields();
		for (int i=0 ; i<fields.length; i++) {
			try {
				Object f = fields[i].get(o);
				Class fc = fields[i].getType();
				if ( fc.getName().equals("java.lang.String") ) {
					if ( f == null ) fields[i].set(o, "");
					else {
						String item = StringUtil.trim( (String)f );
						fields[i].set(o, item);
					}
				}
			}
			catch(Exception e){
			}
		}
	}
	/**
	 * Remove special white space from both ends of this string. 
	 * <p>
	 * All characters that have codes less than or equal to 
	 * <code>'&#92;u0020'</code> (the space character) are considered to be 
	 * white space. 
	 * <p>
	 * java.lang.String�� trim()�� �������� �Ϲ����� white space�� ¥���� ����
	 * �ƴ϶� �������� ���� Ư���� blank�� ©�� �ش�.<br>
	 * �� �ҽ��� IBM HOST�� ����Ÿ�� �ְ� ���� �� �����ϰ� ����߾���.
	 * �Ϲ������� ���� �������� ���� ���̴�.
	 *
	 * @param  java.lang.String
	 * @return trimed string with white space removed
	 *         from the front and end.
	 * @author WonYoung Lee, wyounglee@lgeds.lg.co.kr
	 */
	public static String trim(String s) {
		int st = 0;
		char[] val = s.toCharArray();
		int count = val.length;
		int len = count;

		while ((st < len) && ((val[st] <= ' ') || (val[st] == '��') ) )   st++;
		while ((st < len) && ((val[len - 1] <= ' ') || (val[len-1] == '��')))  len--;
		
		return ((st > 0) || (len < count)) ? s.substring(st, len) : s;
	}
	/**
	 * 
	 * @param in
	 * @param from
	 * @param to
	 * @return
	 */
	public static String replaceInString(String in, String from, String to) {
		if( in == null || from == null || to == null) {
			return in;
		}
		
		StringBuffer newValue = new StringBuffer();
		char[] inChars = in.toCharArray();
		int inLen = inChars.length;
		char[] fromChars = from.toCharArray();
		int fromLen = fromChars.length;
		
		for (int i = 0; i < inLen; i++) {
			if (inChars[i] == fromChars[0] && (i + fromLen) <= inLen) {
				boolean isEqual = true;
				for (int j = 1; j < fromLen; j++) {
					if (inChars[i + j] != fromChars[j]) {
						isEqual = false;
						break;
					}
				}
				if (isEqual) {
					newValue.append(to);
					i += fromLen - 1;
				}
				else {
					newValue.append(inChars[i]);
				}
			}
			else {
				newValue.append(inChars[i]);
			}
		}
		try {
			return newValue.toString();
		}catch(Exception e) { return newValue.toString();}
	}
	public static String replaceInString(String in, String from, String to, boolean enc) {
		if( in == null || from == null || to == null) {
			return in;
		}
		
		StringBuffer newValue = new StringBuffer();
		char[] inChars = in.toCharArray();
		int inLen = inChars.length;
		char[] fromChars = from.toCharArray();
		int fromLen = fromChars.length;
		
		for (int i = 0; i < inLen; i++) {
			if (inChars[i] == fromChars[0] && (i + fromLen) <= inLen) {
				boolean isEqual = true;
				for (int j = 1; j < fromLen; j++) {
					if (inChars[i + j] != fromChars[j]) {
						isEqual = false;
						break;
					}
				}
				if (isEqual) {
					newValue.append(to);
					i += fromLen - 1;
				}
				else {
					newValue.append(inChars[i]);
				}
			}
			else {
				newValue.append(inChars[i]);
			}
		}
		try {
			if(enc)
				return new String(newValue.toString().getBytes("ISO8859-1"),"EUC-KR");
			else
				return newValue.toString();
		}catch(Exception e) { return newValue.toString();}
	}
	/**
     * Replace all occurences of the string <code>match</code> in the string
     * <code>source</code> by the string <code>replace</code> relatively fast.
     * 
     * The parameter <code>expectMatches</code> signals how many matches you are
     * expecting to find from the source. A value large enough will prevent
     * (slow) memory reallocation for the resulting string. Any non-negative
     * value is sensible.
     */
    public static String fastReplaceAll(
            final String source,
            final String match,
            final String replace,
            final int expectMatches) {
 
        final int matchLength = match.length();
        final char[] sourceChars = source.toCharArray();
 
        int matchBegin = 0;
        int matchEnd = 0;
        // tries to prevent extra memory allocation:
        // the result is just about long enough if numMatches was right
        StringBuffer result = new StringBuffer(source.length()
                + expectMatches*(replace.length() - matchLength));
 
        while ((matchBegin = source.indexOf(match, matchEnd)) >= 0) {
            // appends the part before the match, starting from old match end
            result.append(sourceChars, matchEnd, matchBegin - matchEnd);
            // replaces the match with the replace string in the result
            result.append(replace);
            // moves ahead by the lentgh of the matched string
            matchEnd = matchBegin + matchLength;
        }
        // appends the unmatched tail
        result.append(sourceChars, matchEnd, sourceChars.length - matchEnd);
 
        try {
			return new String(result.toString().getBytes("ISO8859-1"),"EUC-KR");
		}catch(Exception e) { return result.toString();}
    }

}