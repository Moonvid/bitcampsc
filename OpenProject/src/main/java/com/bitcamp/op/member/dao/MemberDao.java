package com.bitcamp.op.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import com.bitcamp.op.jdbc.JdbcUtil;
import com.bitcamp.op.member.model.MemberInfo;

public class MemberDao {
	
	public int insertMemberInfo(Connection conn, MemberInfo memberInfo) throws SQLException {
		
		int resultCnt = 0;
		
		PreparedStatement pstmt = null;
		
		String insert_sql = "insert into "
						  + " member(userid, password, username, userphoto, regdate) "
						  + " values(?, ?, ?, ?, DATE_FORMAT(now(), '%Y-%c-%e %T'))";
		
		
		try {
			pstmt = conn.prepareStatement(insert_sql);
			pstmt.setString(1, memberInfo.getUserId());
			pstmt.setString(2, memberInfo.getPassword());
			pstmt.setString(3, memberInfo.getUserName());
			pstmt.setString(4, memberInfo.getUserPhoto());
			
			resultCnt = pstmt.executeUpdate();
			
			System.out.println(resultCnt + "개의 행이 저장되었습니다.");
			
			
		} finally {
			
			JdbcUtil.close(pstmt);
			
		}
		
		
		return resultCnt;
		
	}

}
