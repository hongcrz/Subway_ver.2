package kr.co.subway.security;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import lombok.Setter;
import lombok.extern.log4j.Log4j;

@Log4j
@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration({
		"file:src/main/webapp/WEB-INF/spring/root-context.xml",
		"file:src/main/webapp/WEB-INF/spring/security-context.xml"})
public class MemberTests {
	
	@Setter(onMethod_ = @Autowired)
	private PasswordEncoder pwencoder;
	
	@Setter(onMethod_ = @Autowired)
	private DataSource ds;
	
	@Test
	   public void testInsertUser() {
	      String sql = "insert into tbl_user(userid, userpw, username, auth) values(?,?,?,?)";
	      
	      for(int i=0; i<30; i++) {
	         Connection con = null;
	         PreparedStatement pstmt = null;
	         
	         try {
	            con = ds.getConnection();
	            pstmt = con.prepareStatement(sql);
	            
	            pstmt.setString(2, pwencoder.encode("pw" + i));
	            
	            if(i<20) {
	               pstmt.setString(1, "user" + i);
	               pstmt.setString(3, "일반사용자" + i);
	               pstmt.setString(4, "ROLE_USER");
	            }
	            else {
	               pstmt.setString(1, "admin"+i);
	               pstmt.setString(3, "관리자"+i);
	               pstmt.setString(4, "ROLE_ADMIN");
	            }
	            
	            pstmt.executeUpdate();
	            
	         } catch (Exception e) {
	            e.printStackTrace();
	         } finally {
	            try {
	               if(pstmt != null)
	                  pstmt.close();
	               if(con != null)
	                  con.close();
	            } catch (Exception e2) {
	               e2.printStackTrace();
	            }
	         }
	      }
	   }
}
