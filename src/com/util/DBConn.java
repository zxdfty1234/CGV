package com.util;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


// 싱글톤 으로 제작
public class DBConn {

	// 디폴트 생성자
	private DBConn() {}
	// private 사용 이유 : 다른 클래스에서 new 연산자로 객체 생성 못하도록 막겠다.

	private static Connection connection = null;

	public static Connection getConnection() {
		// Oracle내의 scott하고만 연결 됨!

		if (connection == null) {

			String className = "oracle.jdbc.driver.OracleDriver";
			String url = "jdbc:oracle:thin:@localhost:1521:xe"; // Type 4
			String user = "cgvpro";
			String password = "1111";

			try {
				Class.forName(className);
				connection = DriverManager.getConnection(url, user, password);
				// DB연결 완료
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} // if
		return connection;

	} // getConnection



	// 오버로딩 - 매개변수만 다른 같은 함수
	public static Connection getConnection(String url, String user, String password) {
		// url, user, password를 받아오는 함수가 됨!
		// 오라클 내에 다른 계정과 연결 할 수 있게 됨

		if (connection == null) {

			String className = "oracle.jdbc.driver.OracleDriver";

			try {
				Class.forName(className);
				connection = DriverManager.getConnection(url, user, password);
				// DB연결 완료
			} catch (ClassNotFoundException e) {
				e.printStackTrace();
			} catch (SQLException e) {
				e.printStackTrace();
			}

		} // if
		return connection;

	} // getConnection
	
	
	
	// 오버로딩 - 매개변수만 다른 같은 함수
		public static Connection getConnection(String className, String url, String user, String password) {
			// className, url, user, password를 받아오는 함수가 됨!
			// className으로 Oracle이 아닌 다른 데이터베이스인 MySQL, MariaDB등을 받을 수 있게 됨

			if (connection == null) {

				try {
					Class.forName(className);
					connection = DriverManager.getConnection(url, user, password);
					// DB연결 완료
				} catch (ClassNotFoundException e) {
					e.printStackTrace();
				} catch (SQLException e) {
					e.printStackTrace();
				}

			} // if
			return connection;

		} // getConnection



	public static void close() {

		try {
			if (connection != null && connection.isClosed()) {
				// isClosed() : 현재 닫힌상탠지 아닌지 물어보고 닫혀있으면 true 반환

				connection.close();
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}

		connection = null; // !!꼭 기입할것!!
	} // close


} // class
