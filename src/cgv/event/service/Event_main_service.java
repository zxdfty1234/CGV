package cgv.event.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import cgv.event.dao.EventMainDAO;
import cgv.mvc.model.Event_mainDTO;

public class Event_main_service {

	public ArrayList<Event_mainDTO> select() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			EventMainDAO dao = EventMainDAO.getInstance();			
			ArrayList<Event_mainDTO> list = null;			
			list =  dao.select();			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	}
}
