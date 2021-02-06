package cgv.event.dao;

import java.sql.Blob;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.DBConn;
import com.util.JdbcUtil;

import cgv.mvc.model.Event_mainDTO;
import cgv.event.service.Event_main_service;

public class EventMainDAO {
	public static EventMainDAO dao = null;
	public EventMainDAO() {}
	public static EventMainDAO  getInstance() {
		if( dao == null ) {
			dao = new EventMainDAO();
		}
		return dao;
	}
	public ArrayList<Event_mainDTO> select() throws SQLException {
		PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    ArrayList<Event_mainDTO> list = null ;
	    Connection con = DBConn.getConnection();
		
		String sql = "SELECT * FROM EVENT";
		

		try {
			pstmt = con.prepareStatement(sql);
			rs = pstmt.executeQuery();

			if(rs.next()){
				list = new ArrayList<Event_mainDTO>();
				do {
				
				Event_mainDTO dto = new Event_mainDTO();
				dto.setEvent_sq(rs.getInt("event_sq"));
				dto.setEvent_kinds(rs.getString("event_kinds"));
				dto.setEvent_name(rs.getString("event_name"));
				dto.setEvent_sni(rs.getString("event_sni"));
				dto.setEvent_image(rs.getString("event_image"));
				dto.setEvent_content(rs.getString("event_content"));
				dto.setEvent_state(rs.getString("event_state"));
				
				list.add(dto);
				}while(rs.next());
			}
			
		}finally {
			JdbcUtil.close(pstmt);
			JdbcUtil.close(rs);
		}
		return list;
	}
	
}

