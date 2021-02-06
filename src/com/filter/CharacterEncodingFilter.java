package com.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

public class CharacterEncodingFilter implements Filter {

	@Override
	public void destroy() {
		
	}

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		System.out.println("> CharacterEncodingFilter 요청됨");
		request.setCharacterEncoding(this.encoding);
		
		chain.doFilter(request, response); // 다음 필터 이동
		
	}

	private String encoding;
	@Override
	public void init(FilterConfig filterConfig) throws ServletException {
		filterConfig.getInitParameter("encoding");
		if ( this.encoding == null ) { // web.xml에 init-param 설정이 안되어있을 경우
			this.encoding = "UTF-8";
		}
	}

}
