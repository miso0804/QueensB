package myjsp;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import config.DB;

public class MyjspDAO {
	public String loginCheck(MyjspDTO dto) {
		//반환 값이 될  String result를 선언
		String result = "";
		
		//JDBC연동 객체 선언
		Connection conn = null; //DB에 접근하는 객체(가장 먼저 선언해야 함)
		PreparedStatement pstmt = null; //DB에 쿼리를 보내기 위한 객체
		ResultSet rs = null; //select문을 사용하여 얻어온 레코드 값을 테이블의 형태로 갖게 되는 객체
		try {
			conn = DB.getConn(); //config 패키지의 DB.java파일을 import한다. DB.java파일 설정은 필수
			//DB에 보낼 쿼리문
			String sql="select * from memberlist where userid=? and userpw=?";
			//쿼리문을 보내고 SQL을 실행할  객체 생성
			pstmt = conn.prepareStatement(sql);
			//setString(n번쨰 물음표(위치),위치에 대입할 값)
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			//select문을 실행한 후 레코드 값의 테이블을 반환받는다
			rs = pstmt.executeQuery();
			if (rs.next()) {
				result = rs.getString("name")+ "님 환영합니다.";
			}else {
				result = "다시 입력해주십시오";
			}
			} catch (Exception e) {
				e.printStackTrace();
			} finally {
				try {
					if(rs != null) rs.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				try {
					if(pstmt != null) pstmt.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
				try {
					if(conn != null) conn.close();
				} catch (Exception e2) {
					e2.printStackTrace();
				}
			}
			return result;
	}

	public void insert(MyjspDTO dto) {
		Connection conn=null;
		PreparedStatement pstmt=null;
		//ResultSet rs=null; //데이터를 읽어올 것이 아니기 때문에 ResultSet객체는 사용하지 않는다
		try {
			conn = DB.getConn();
			//StringBuilder 객체 생성(하나의 인스턴스를 이용하여 문자열을 계속 이어붙일 수 있다)
			StringBuilder sql = new StringBuilder();
			//append()메소드를 이용하여 StringBuilder클래스의 인스턴스인 sql객체에 문자열을 이어붙인다.
			sql.append(" insert into memberlist ");
			sql.append(" ( userid,userpw,name,email,hp) values ");
			sql.append(" ( ?,?,?,?,?) ");
			//쿼리문을 보내고 sql을 실행할 객체 생성 (toString()메소드를 이용하여 sql에 담겨진 데이터를 받아온다)
			pstmt = conn.prepareStatement(sql.toString());
			pstmt.setString(1, dto.getUserid());
			pstmt.setString(2, dto.getUserpw());
			pstmt.setString(3, dto.getName());
			pstmt.setString(4, dto.getEmail());
			pstmt.setString(5, dto.getHp());
			//executeUpdate() 메소드는 삽입, 수정, 삭제와 관련된 SQL문(DML) 실행에 쓰인다.
			pstmt.executeUpdate();//update, insert, delete
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstmt != null)
					pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
			try {
				if(conn != null)
					pstmt.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
	}
}