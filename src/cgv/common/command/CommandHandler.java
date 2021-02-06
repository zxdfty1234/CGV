package cgv.common.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 로직을 처리할 모델(Model) 객체가 공통적으로 구현 할 인터페이스
public interface CommandHandler {
	
	// 리턴 자료형 String으로 지정 -> 뷰(View == JSP)
	public String process( HttpServletRequest request, 
							HttpServletResponse response ) throws Exception;
}
