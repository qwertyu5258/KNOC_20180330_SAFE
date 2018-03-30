package com.neoboard.log;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Vector;

import com.neoboard.jdbc.*;


public class NeoboardLogManager {
	/** �α� ����Ʈ 
	 * num : �Խù� ��ȣ
	 * bid : �Խ��Ǿ��̵�
	 * nStartNum : ����¡ ���۹�ȣ
	 * nEndNum : ����¡ �����ȣ
	 */
	public Vector getLogList(int num, String bid, int nStartNum, int nEndNum) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		Vector vLog = new Vector();		
		String strSQL = "";
		
		strSQL = "SELECT bno, logno, log_query, user_id, user_name, log_regdt, conn_ip FROM NEOBOARD_LOG ";
		strSQL += " where boardid='"+bid+"'";
		if (num > 0) {
			strSQL += " and bno=" + num;
		}
		strSQL += " order by bno desc limit "+ nStartNum + " , " +nEndNum;
		
		try {
			con = DBUtil.getConnection();
			stmt = con.createStatement();
			
			rs = stmt.executeQuery(strSQL);
			
			while(rs.next()) {
				NeoboardLogBean nlb = new NeoboardLogBean();
				
				nlb.setBno(rs.getInt(1));
				nlb.setLogno(rs.getInt(2));
				nlb.setLogQuery(rs.getString(3));
				nlb.setUserID(rs.getString(4));
				nlb.setUserName(rs.getString(5));
				nlb.setLogRegdtString("yyyy-MM-dd HH:mm:ss", rs.getString(6));
				nlb.setConnIp(rs.getString(7));
					
				vLog.addElement(nlb);
			}
			rs.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {  if (rs != null) rs.close();	} catch (Exception e) {}
			try {  if (stmt != null) stmt.close();	} catch (Exception e) {}
			try {  if (con != null) con.close();	} catch (Exception e) {}
		}
		
		return vLog;
	}
	
	/** �α� ī��Ʈ 
	 * num : �Խù� ��ȣ
	 * bid : �Խ��Ǿ��̵�
	 */
	public int getLogCount(int num, String bid) {
		Connection con = null;
		Statement stmt = null;
		ResultSet rs = null;
		int nRetValue = 0;
		String strSQL = "";
		
		try {
			con = DBUtil.getConnection();
			stmt = con.createStatement();
			
			strSQL = "SELECT COUNT(*) From NEOBOARD_LOG ";			
			strSQL += " where boardid='"+bid+"'";
			if (num > 0) {
				strSQL += " and bno=" + num;
			}			
			
			rs = stmt.executeQuery(strSQL);
			
			while (rs.next()) {
				nRetValue = rs.getInt(1);
			}
			rs.close();
		}
		catch (Exception e) {
			System.out.println(e.getMessage());
		} finally {
			try {  if (rs != null) rs.close();	} catch (Exception e) {}
			try {  if (stmt != null) stmt.close();	} catch (Exception e) {}
			try {  if (con != null) con.close();	} catch (Exception e) {}
		}
		
		return nRetValue;
	}
}
