package cgv.event.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.naming.NamingException;

import com.util.ConnectionProvider;
import com.util.JdbcUtil;

import cgv.event.dao.EventMainDAO;
import cgv.event.dao.GiftMainDAO;
import cgv.mvc.model.Event_mainDTO;
import cgv.mvc.model.Giftshop_mainDTO;

public class Gift_main_service {

	public ArrayList<Giftshop_mainDTO> giftSelect() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftMainDAO dao = GiftMainDAO.getInstance();			
			ArrayList<Giftshop_mainDTO> list = null;			
			list =  dao.select(1);			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
		
	}
	
	public ArrayList<Giftshop_mainDTO> comboSelect() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftMainDAO dao = GiftMainDAO.getInstance();			
			ArrayList<Giftshop_mainDTO> list = null;			
			list =  dao.select(2);			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
	public ArrayList<Giftshop_mainDTO> popcornSelect() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftMainDAO dao = GiftMainDAO.getInstance();			
			ArrayList<Giftshop_mainDTO> list = null;			
			list =  dao.select(3);			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
	public ArrayList<Giftshop_mainDTO> drinkSelect() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftMainDAO dao = GiftMainDAO.getInstance();			
			ArrayList<Giftshop_mainDTO> list = null;			
			list =  dao.select(4);			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
	public ArrayList<Giftshop_mainDTO> snackSelect() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftMainDAO dao = GiftMainDAO.getInstance();			
			ArrayList<Giftshop_mainDTO> list = null;			
			list =  dao.select(5);			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
	public ArrayList<Giftshop_mainDTO> ticketSelect() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftMainDAO dao = GiftMainDAO.getInstance();			
			ArrayList<Giftshop_mainDTO> list = null;			
			list =  dao.select(6);			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
	public ArrayList<Giftshop_mainDTO> playzoneSelect() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftMainDAO dao = GiftMainDAO.getInstance();			
			ArrayList<Giftshop_mainDTO> list = null;			
			list =  dao.select(7);			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
	public ArrayList<Giftshop_mainDTO> sangpoomSelect() throws SQLException{		
		Connection con = null;				
		try {
			con = ConnectionProvider.getConnection();
			GiftMainDAO dao = GiftMainDAO.getInstance();			
			ArrayList<Giftshop_mainDTO> list = null;			
			list =  dao.select(8);			 
			return list; 
		} catch (SQLException | NamingException e) {
			throw new RuntimeException(e);
		} finally {
			JdbcUtil.close(con);
		}
	}
}
