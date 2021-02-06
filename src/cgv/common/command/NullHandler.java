package cgv.common.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class NullHandler implements CommandHandler {

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		
		// [소스를 찾을 수 없다]는 에러를 응답한다.
		response.sendError( HttpServletResponse.SC_NOT_FOUND );
		
		return null;
	}

}
