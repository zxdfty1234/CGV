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

public class GiftDrinkHandler implements CommandHandler{

	@Override
	public String process(HttpServletRequest request, HttpServletResponse response) throws Exception {
//		GiftMainDAO dao = new GiftMainDAO();
//		ArrayList<Giftshop_mainDTO> list = dao.select(1);
//		request.setAttribute("giftCard", list);
		Gift_main_service service = new Gift_main_service();
		ArrayList<Giftshop_mainDTO> dList = service.drinkSelect();
		
		request.setAttribute("drink", dList);
		
		
		return "/cgv/event/cgv_giftshop_05";
	}

}
