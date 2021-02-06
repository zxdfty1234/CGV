package cgv.mvc.controller;

import java.io.FileReader;
import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Properties;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cgv.common.command.CommandHandler;




// 컨트롤러
public class ControllerUsingURI extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String requestURI = request.getRequestURI();
		System.out.println(requestURI); // 	/cgv/cgv/main.do
		
		String contextPath = request.getContextPath(); // 	/jspPro
		if (requestURI.indexOf(contextPath)==0) {
			int beginIndex = contextPath.length();
			requestURI = requestURI.substring(beginIndex);
		}
		System.out.println(requestURI); // 		/cgv/main.do
		
		// 실제 일 처리를 하는 Model을 찾고 있는 중이다.
		// 핸들러(handler) == 모델(실제 일하는 Model)
		CommandHandler handler = this.commandHandlerMap.get(requestURI);
		
		// MVC의 [V]iew를 돌려준다.
		String viewPage = null;
		try {
			viewPage = handler.process(request, response);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// 포워딩 또는 리다이렉트 처리
		if (viewPage != null) {
			
			// [20210108 수정 -> 클라이언트가 ~~~.jsp로 접근할 수 없도록 하는 것]
			String prefix = "/WEB-INF/views";
			String suffix = ".jsp";
			
			viewPage = String.format("%s%s%s", prefix, viewPage, suffix);
			// [20210108 수정 끝]
			
			RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
			dispatcher.forward(request, response);
		}
	}

	@Override
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	@Override
	public void destroy() {
		// 웹 컨테이너 안에서 생성된 서블릿이 제거 될 때 호출되는 메서드
	}
	
	private Map<String, CommandHandler> commandHandlerMap = 
			new HashMap<String, CommandHandler>();

	@Override
	public void init() throws ServletException {
		// 웹 컨테이너 안에서 생성된 서블릿이 생성 될 때 호출되는 메서드
		// 초기화 작업
		// 1. WEB-INF>commandHandler.properties 파일을 읽어와서
		//		서블릿(컨트롤러)가 어떤 요청에 어떤 모델이 처리하는지 찾는다.
		// String path = "/WEB-INF/commandHandler.properties";
		
		String path = getInitParameter("path"); // web.xml에서 지정하고 가지고 옴.
		String configFilePath = getServletContext().getRealPath(path);
		System.out.println(configFilePath);
		// C:\Class\JSPClass\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\cgv\WEB-INF\views\cgv\commandHandler.properties
		
		Properties prop = new Properties();
		try ( FileReader fr = new FileReader(configFilePath) ) {
			prop.load(fr);
		} catch (Exception e) {
			throw new ServletException(e);
		}
		
		// prop -> commandHandlerMap 맵 채워넣는 코딩.
		Iterator<Object> ir = prop.keySet().iterator();
		while (ir.hasNext()) {
			String url = (String) ir.next(); // 	"/hello.do" - key
			String handlerClassFullName = prop.getProperty(url); // days08.mvc.hello.HelloHandler
			
			// handlerClassFullName 로부터 객체(인스턴스) 생성 -> 맵 추가.
			try {
				Class<?> handlClass = Class.forName(handlerClassFullName);
				CommandHandler handlerinstance = (CommandHandler)handlClass.newInstance();
				
				this.commandHandlerMap.put(url, handlerinstance);
				
			} catch (ClassNotFoundException | InstantiationException | IllegalAccessException e) {
				throw new ServletException(e);
			}
		}
	}
}
