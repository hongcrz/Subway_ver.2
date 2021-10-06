package kr.co.subway.persistence;

import static org.junit.Assert.fail;

import java.sql.Connection;
import java.sql.DriverManager;

import org.junit.Test;

import lombok.extern.log4j.Log4j;

@Log4j
public class JDBCTests {
	static {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	@Test
	public void testConnection() {
		try(Connection con = DriverManager.getConnection(
//												"jdbc:log4jdbc:oracle:thin:@localhost:1521:XE", //url
												"jdbc:log4jdbc:oracle:thin:@//192.168.0.19:1521/xe", //url
												"scott", // id
												"tiger")) //pw
		{
			log.info(con); // log는 log4j에서 가져옴
			System.out.println(con);
		} catch (Exception e) {
			fail(e.getMessage());
		}
	}
}
