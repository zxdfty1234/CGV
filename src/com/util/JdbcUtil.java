package com.util;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class JdbcUtil {

	public static void close(ResultSet rs) {
		if ( rs != null ) {
			try {
				rs.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void close(Statement stmt) {
		if ( stmt != null ) {
			try {
				stmt.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void close(Connection con) {
		if ( con != null ) {
			try {
				con.close();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
	public static void rollback(Connection con) {
		if ( con != null ) {
			try {
				con.rollback();
			} catch (SQLException e) {
				e.printStackTrace();
			}
		}
	}
	
}
