package ch18.mvc.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;

import ch18.mvc.vo.EmpDTO;

public class EmpDAO_Pool {
	DataSource ds;
	
	public EmpDAO_Pool() {
		try {
			Context initContext = new InitialContext();
			Context envContext  = (Context)initContext.lookup("java:/comp/env");
			ds = (DataSource)envContext.lookup("jdbc/OracleDB");
			
		} catch (NamingException e) {
			
		} 
	}
	
//DB에 있는 1개의 내용을 1개의 EmpDTO에 담아서 EmpDTO들이 담겨있는 ArrayList<EmpDTO> list리턴
	public ArrayList<EmpDTO> select(){
		
		ArrayList<EmpDTO> list = new ArrayList<EmpDTO>();
		Connection con = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		
		
		try {
			con = ds.getConnection();
			String sql = "select empno,ename,sal,deptno from emp";
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				String empno = rs.getString("empno");
				String ename = rs.getString("ename");
				int sal = rs.getInt("sal");
				String deptno = rs.getString("deptno");
				
				EmpDTO dto = new EmpDTO(empno, ename, sal, deptno);
				list.add(dto);
				
			}
		} catch (SQLException e) {
			
		}finally {
			try {
				pstmt.close();
				con.close();
			} catch (SQLException e) {
				
			}
		}
		
		
		return list;
		
	}
}
