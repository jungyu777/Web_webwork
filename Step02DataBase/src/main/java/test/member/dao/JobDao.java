package test.member.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import test.member.dto.JobDto;
import test.member.dto.MemberDto;
import test.util.DbcpBean;

public class JobDao {
	private static JobDao dao;
	
	private JobDao() {};
		
	public static JobDao getInstance() {
		  //서버 시작후 최초 요청이라면
	      if(dao==null) {
	         //객체를 생성해서 static 필드에 저장해 놓는다.
	         dao=new JobDao();
	      }
	      //필드에 저장된 참조값 리턴해주기
	      return dao;
	};
	
	
	
	 //회원 한명의 정보를 삭제하는 메소드
	public boolean delete(int num) {
		Connection conn = null;
		PreparedStatement pstmt = null;
		int rowCount = 0;
		try {
			conn = new DbcpBean().getConn();
			String sql = "DELETE FROM job"
					+	" WHERE num=?";
			pstmt = conn.prepareStatement(sql);
			//실행할 sql 문이 미완성이라면 여기서 완성
			pstmt.setInt(1, num);
			//sql 문을 수행하고 변화된(추가, 수정, 삭제된) row 의 갯수 리턴 받기
			rowCount = pstmt.executeUpdate();
		} catch (SQLException se) {
			se.printStackTrace();
		} finally {
			try {
				if (pstmt != null)
					pstmt.close();
				if (conn != null)
					conn.close();
			} catch (Exception e) {
			}
		}
		//만일 변화된 row 의 갯수가 0 보다 크면 작업 성공
		if (rowCount > 0) {
			return true;
		} else {
			return false;
		}
	}
	
	 //회원 한명의 정보를 추가하는 메소드
 	public boolean insert(JobDto dto) {
 		Connection conn = null;
 		PreparedStatement pstmt = null;
 		int rowCount = 0;
 		try {
 			conn = new DbcpBean().getConn();
 			String sql = "INSERT INTO job"
 					+ " (num, name, addr)"
 					+ " VALUES(job_seq.NEXTVAL, ?, ?)";
 			pstmt = conn.prepareStatement(sql);
 			//실행할 sql 문이 미완성이라면 여기서 완성
 			pstmt.setString(1, dto.getName());
 			pstmt.setString(2, dto.getAddr());
 			//sql 문을 수행하고 변화된(추가, 수정, 삭제된) row 의 갯수 리턴 받기
 			rowCount = pstmt.executeUpdate();
 		} catch (SQLException se) {
 			se.printStackTrace();
 		} finally {
 			try {
 				if (pstmt != null)
 					pstmt.close();
 				if (conn != null)
 					conn.close();
 			} catch (Exception e) {
 			}
 		}
 		//만일 변화된 row 의 갯수가 0 보다 크면 작업 성공
 		if (rowCount > 0) {
 			return true;
 		} else {
 			return false;
 		}
 	}
	
	
	
	
	
	   //회원 목록을 리턴하는 메소드
	   public List<JobDto> getList(){
	      //회원 목록을 담을 객체 미리 생성하기 
	      List<JobDto> list=new ArrayList<>();
	      
	      //필요한 객체의 참조값을 담을 지역변수 미리 만들기
	      Connection conn=null;
	      PreparedStatement pstmt=null;
	      ResultSet rs=null;
	      try {
	         //DbcpBean 객체를 이용해서 Connection 객체를 얻어온다(Connection Pool 에서 얻어오기)
	         conn=new DbcpBean().getConn();
	         //실행할 sql 문 
	         String sql = " SELECT num,name,addr"
						+ " FROM job"
						+ " ORDER BY num ASC";
	         pstmt=conn.prepareStatement(sql);
	         //sql 문이 미완성이라면 여기서 완성
	         
	         //select 문 수행하고 결과값 받아오기
	         rs=pstmt.executeQuery();
	         //반복문 돌면서 ResultSet 에 담긴 내용 추출
	         while(rs.next()) {
	        	 JobDto dto = new JobDto();
					dto.setNum(rs.getInt("num"));
					dto.setName(rs.getString("name"));
					dto.setAddr(rs.getString("addr"));
					//ArrayList 객체에 누적시키기
					list.add(dto);
	         }
	      }catch(SQLException se) {
	         se.printStackTrace();
	      }finally {
	         try {
	            if(rs!=null)rs.close();
	            if(pstmt!=null)pstmt.close();
	            if(conn!=null)conn.close(); //Connection 이 Connection Pool 에 반납된다.
	         }catch(Exception e) {}
	      }
	      return list;
	   }
	   
	}
	
	
	

