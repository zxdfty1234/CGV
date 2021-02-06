package cgv.event.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cgv.mvc.model.Event_mainDTO;
import cgv.mvc.model.Giftshop_mainDTO;
import cgv.common.command.CommandHandler;
import cgv.event.service.Gift_Detail_service;
import cgv.event.service.Gift_main_service;

public class GiftDetailHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		GiftMainDAO dao = new GiftMainDAO();
//		ArrayList<Giftshop_mainDTO> list = dao.select(1);
//		request.setAttribute("giftCard", list);
		int name = Integer.parseInt(request.getParameter("giftcode"));
		Gift_Detail_service service = new Gift_Detail_service();
		Giftshop_mainDTO dList = service.detailSelect(name);
		
		request.setAttribute("detail", dList);
		
		
		return "/cgv/event/cgv_giftshop_detail";
	}

}
