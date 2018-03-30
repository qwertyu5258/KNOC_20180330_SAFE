package kr.co.knoc.search;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import kr.co.knoc.jdbc.DBUtil;

public class SearchManager {
	
	
	public ArrayList<SearchBean> getSearchList(String key_word, int page, int pageSize) {
    	Connection con = null;
 		ResultSet rs = null;
 		PreparedStatement prestmt = null;
 		ArrayList<SearchBean> result = new ArrayList<SearchBean>();
 		StringBuffer query = new StringBuffer();
 		query.append("select * from ( ");
        query.append("select bno as no, boardid, bno, boardname, subject, url, regdate, grp, ROW_NUMBER() OVER(ORDER BY bno desc) AS PAGE_NO  ");
        query.append(" from VIEW_NEOBOARDSEARCH");
        query.append(" where is_delete='N'");
        if (key_word != null && !key_word.equals("")) {
        query.append(" and (subject like '%"+key_word+"%' or content like '%"+key_word+"%')");
        }
      //  query.append(" order by no desc limit ?, ?");
        query.append(" order by bno desc  ");
        query.append(") a ");
        query.append(" WHERE  PAGE_NO > ?  AND PAGE_NO <= ? ");
		try {
			con = DBUtil.getConnection();

			prestmt = con.prepareStatement(query.toString());
			prestmt.setInt(1, (page-1) * pageSize);
			prestmt.setInt(2, page*pageSize);
			rs = prestmt.executeQuery();

			while(rs.next()) {
				SearchBean sb = new SearchBean();
				sb.setNo(rs.getInt("no"));
				sb.setBoardid(rs.getString("boardid"));
				sb.setBno(rs.getInt("bno"));
				sb.setBoardname(rs.getString("boardname"));
				sb.setSubject(rs.getString("subject"));
				sb.setUrl(rs.getString("url"));
				sb.setRegDateString("yyyy-MM-dd hh:mm:ss", rs.getString("regdate"));
				sb.setGrp(rs.getString("grp"));
				result.add(sb);
			}
			rs.close(); rs = null;
			prestmt.close(); prestmt = null;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {  if (rs != null) rs.close();	} catch (Exception e) {}
			try {  if (prestmt != null) prestmt.close();	} catch (Exception e) {}
			try {  if (con != null) con.close();	} catch (Exception e) {}
		}
        return result;
    }

	public ArrayList<SearchBean> getSearchList2(String key_word, int page, int pageSize,String boardname) {
		System.out.println("getsearchlist2 ��!!");
		System.out.println("page::"+page);
		System.out.println("pagesize::"+pageSize);
		page=1;
		pageSize=1000;
    	Connection con = null;
 		ResultSet rs = null;
 		PreparedStatement prestmt = null;
 		ArrayList<SearchBean> result = new ArrayList<SearchBean>();
 		StringBuffer query = new StringBuffer();
 		System.out.println("�κ������::::::"+boardname);
 		if(boardname.equals("��ü")) {
 			System.out.println("��ü����!!!");
 			query.append("SELECT * from ( select bno as no, boardid, bno, boardname, subject, url, regdate, grp, ROW_NUMBER() OVER(ORDER BY bno desc)AS PAGE_NO\n" + 
 					"from VIEW_NEOBOARDSEARCH where is_delete='N' order by bno desc)a WHERE PAGE_NO > ? AND PAGE_NO <=?");
 		}else {
 		query.append("select * from ( ");
        query.append("select bno as no, boardid, bno, boardname, subject, url, regdate, grp, ROW_NUMBER() OVER(ORDER BY bno desc) AS PAGE_NO  ");
        query.append(" from VIEW_NEOBOARDSEARCH");
        query.append(" where is_delete='N' and boardname like '%"+boardname+"%' ");
        if (key_word != null && !key_word.equals("")) {
        //query.append(" and (subject like '%"+"�濵"+"%' or content like '%"+"�濵"+"%')");
        	query.append(" and (subject like '%�濵%' or content like '%�濵%')");
        
        }
      //  query.append(" order by no desc limit ?, ?");
        query.append(" order by bno desc  ");
        query.append(") a ");
        query.append(" WHERE  PAGE_NO > ?  AND PAGE_NO <= ? ");
 		}
 		
 		try {
			con = DBUtil.getConnection();

			prestmt = con.prepareStatement(query.toString());
			prestmt.setInt(1, (page-1) * pageSize);
			prestmt.setInt(2, page*pageSize);
			rs = prestmt.executeQuery();

			while(rs.next()) {
				SearchBean sb = new SearchBean();
				sb.setNo(rs.getInt("no"));
				sb.setBoardid(rs.getString("boardid"));
				sb.setBno(rs.getInt("bno"));
				sb.setBoardname(rs.getString("boardname"));
				sb.setSubject(rs.getString("subject"));
				sb.setUrl(rs.getString("url"));
				sb.setRegDateString("yyyy-MM-dd hh:mm:ss", rs.getString("regdate"));
				sb.setGrp(rs.getString("grp"));
				result.add(sb);
			}
			rs.close(); rs = null;
			prestmt.close(); prestmt = null;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {  if (rs != null) rs.close();	} catch (Exception e) {}
			try {  if (prestmt != null) prestmt.close();	} catch (Exception e) {}
			try {  if (con != null) con.close();	} catch (Exception e) {}
		}
        return result;
    }
	
	public int getSearchListCount(String key_word) {
    	Connection con = null;
 		ResultSet rs = null;
 		Statement stmt = null;
 		int result = 0;
 		StringBuffer query = new StringBuffer();
        query.append("select count(*) ");
        query.append(" from VIEW_NEOBOARDSEARCH");
        query.append(" where is_delete='N'");
        if (key_word != null && !key_word.equals("")) {
        query.append(" and (subject like '%"+key_word+"%' or content like '%"+key_word+"%')");
        }
		try {
			con = DBUtil.getConnection();

		    stmt = con.createStatement();
			rs = stmt.executeQuery(query.toString());

			if(rs.next()) {
				result = rs.getInt(1);
			}
			rs.close(); rs = null;
			stmt.close(); stmt = null;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {  if (rs != null) rs.close();	} catch (Exception e) {}
			try {  if (stmt != null) stmt.close();	} catch (Exception e) {}
			try {  if (con != null) con.close();	} catch (Exception e) {}
		}
        return result;
    }
	
	public int getSearchListCount2(String key_word) {
    	Connection con = null;
 		ResultSet rs = null;
 		Statement stmt = null;
 		int result = 0;
 		StringBuffer query = new StringBuffer();
        query.append("select count(*) ");
        query.append(" from VIEW_NEOBOARDSEARCH");
        query.append(" where is_delete='N'");
        if (key_word != null && !key_word.equals("")) {
        query.append(" and (subject like '%"+key_word+"%' or content like '%"+key_word+"%')");
        }
		try {
			con = DBUtil.getConnection();

		    stmt = con.createStatement();
			rs = stmt.executeQuery(query.toString());

			if(rs.next()) {
				result = rs.getInt(1);
			}
			rs.close(); rs = null;
			stmt.close(); stmt = null;
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {  if (rs != null) rs.close();	} catch (Exception e) {}
			try {  if (stmt != null) stmt.close();	} catch (Exception e) {}
			try {  if (con != null) con.close();	} catch (Exception e) {}
		}
        return result;
    }
	
	
}