package com.util;

import java.io.IOException;
import java.io.Reader;
import java.io.StringReader;
import java.util.Properties;

import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.annotation.WebListener;

// 2021.01.06의 ex02 연관
// @WebListener 자동으로 리스너로 등록해주는 어노테이션 [지금은 주석처리해둔다.]
public class DBCPIntitListener implements ServletContextListener {

	// 웹 컨테이너가 종료될 때...
	@Override
	public void contextDestroyed(ServletContextEvent sce) {
		System.out.println("> DBCPIntitListener.contextDestroyed");
		
	}

	// 웹 컨테이너가 시작 할 때...
	@Override
	public void contextInitialized(ServletContextEvent sce) {
		System.out.println("> DBCPIntitListener.contextInitialized");
		// DBCP
		// DB연결 정보를 얻어온다. (가정)
		// sce.getServletContext() == JSP application 기본 객체와 동일하다.
		String poolConfig = sce.getServletContext().getInitParameter("poolConfig");
		Properties prop = new Properties();
		Reader reader = new StringReader(poolConfig);
		try {
			prop.load(reader);
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		System.out.println(prop.getProperty("className"));
		System.out.println(prop.getProperty("url"));
		System.out.println(prop.getProperty("user"));
		System.out.println(prop.getProperty("password"));
		
	}

}
