package cgv.event.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cgv.common.command.CommandHandler;
import cgv.event.dao.EventMainDAO;
import cgv.mvc.model.Event_mainDTO;

public class EventMainHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
		EventMainDAO dao = new EventMainDAO();
		ArrayList<Event_mainDTO> list = dao.select();
		request.setAttribute("list", list);
		return "/cgv/event/cgv_event_main";
	}

}
