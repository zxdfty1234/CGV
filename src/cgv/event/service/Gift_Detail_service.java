package cgv.event.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import cgv.event.dao.EventMainDAO;
import cgv.event.dao.GiftDetailDAO;
import cgv.event.dao.GiftMainDAO;
import cgv.mvc.model.Event_mainDTO;
import cgv.mvc.model.Giftshop_mainDTO;

public class Gift_Detail_service {

	public Giftshop_mainDTO detailSelect(int name) throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftDetailDAO dao = GiftDetailDAO.getInstance();			
			Giftshop_mainDTO dto = null;
			dto = dao.select(name);
			return dto;
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
