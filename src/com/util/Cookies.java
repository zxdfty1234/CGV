package com.util;

import java.io.UnsupportedEncodingException;
import java.net.URLDecoder;
import java.net.URLEncoder;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;

// 서버네서 쿠키를 다루는 클래스 라이브러리이다.

public class Cookies {

	// 쿠키값을 얻어와서 저장할 Map 선언
	public Map<String, Cookie> cookieMap = new HashMap<String, Cookie>();
	
	// 생성자(매개변수를 갖는)
	public Cookies(HttpServletRequest request) {
		// 쿠키값을 얻어와서 Map 안에 저장하는 일을 생성자에서 하겠다.
		Cookie [] cookies = request.getCookies();
		if (cookies != null) {
			for (int i = 0; i < cookies.length; i++) {
				/*// 가독성
				String key = cookies[i].getName();
				Cookie value = cookies[i];
				this.cookieMap.put(key, value);
				*/
				this.cookieMap.put(cookies[i].getName(), cookies[i]);
			}
		}
		
	} // 생성자 완료
	
	// 쿠키 이름 얻어오는 메서드
	public Cookie getCookie(String cname) {
		// Map 안에 있는 쿠키 이름에 해당하는 쿠키객체를반환하는 메서드
		return this.cookieMap.get(cname);
	}
	
	// 쿠키Map 안에 쿠키가 존재하는지 여부를 반환하는 메서드
	public boolean exist(String cname) {
		return this.cookieMap.get(cname) != null;
	}
	
	// 쿠키객체를 생성해서 반환하는 메서드
	public static Cookie createCookie(String cname, String cvalue, String domain, String path, int expiry) 
			throws UnsupportedEncodingException {
		Cookie cookie = new Cookie(cname, URLEncoder.encode(cvalue, "UTF-8"));
		cookie.setDomain(domain);
		cookie.setPath(path);
		cookie.setMaxAge(expiry);
		return cookie;
	}
	
	// 도메인 없는경우 쿠키객체를 생성해서 반환하는 메서드
	public static Cookie createCookie(String cname, String cvalue, String path, int expiry) 
			throws UnsupportedEncodingException {
		Cookie cookie = new Cookie(cname, URLEncoder.encode(cvalue, "UTF-8"));
		cookie.setPath(path);
		cookie.setMaxAge(expiry);
		return cookie;
	}
	// 이름과 벨류값만 쿠키객체를 생성해서 반환하는 메서드
		public static Cookie createCookie(String cname, String cvalue) 
				throws UnsupportedEncodingException {
			Cookie cookie = new Cookie(cname, URLEncoder.encode(cvalue, "UTF-8"));
			return cookie;
		}
	
	// 쿠키 값을 얻어오는 메서드
	public String getValue(String cname) throws UnsupportedEncodingException {
		Cookie cookie = this.cookieMap.get(cname);
		if (cookie ==null) {
			return null;
		}
		return URLDecoder.decode(cookie.getValue(), "UTF-8");
	}
	
	
} // class 완료
