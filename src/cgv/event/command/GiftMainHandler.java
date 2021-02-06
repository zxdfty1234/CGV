package cgv.event.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import cgv.common.command.CommandHandler;
import cgv.event.dao.EventMainDAO;
import cgv.event.dao.GiftMainDAO;
import cgv.mvc.model.Event_mainDTO;
import cgv.mvc.model.Giftshop_mainDTO;
import cgv.event.service.Event_main_service;
import cgv.event.service.Gift_main_service;

public class GiftMainHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		GiftMainDAO dao = new GiftMainDAO();
//		ArrayList<Giftshop_mainDTO> list = dao.select(1);
//		request.setAttribute("giftCard", list);
		Gift_main_service service = new Gift_main_service();
		ArrayList<Giftshop_mainDTO> tList = service.ticketSelect();
		ArrayList<Giftshop_mainDTO> gList = service.giftSelect();
		ArrayList<Giftshop_mainDTO> cList = service.comboSelect();
		ArrayList<Giftshop_mainDTO> pList = service.popcornSelect();
		ArrayList<Giftshop_mainDTO> dList = service.drinkSelect();
		ArrayList<Giftshop_mainDTO> sList = service.snackSelect();
		request.setAttribute("ticket", tList);
		request.setAttribute("giftcard", gList);
		request.setAttribute("combo", cList);
		request.setAttribute("popcorn", pList);
		request.setAttribute("drink", dList);
		request.setAttribute("snack", sList);
		
		return "/cgv/event/cgv_giftshop_main";
	}

}
