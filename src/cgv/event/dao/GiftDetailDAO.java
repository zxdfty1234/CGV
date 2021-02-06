package cgv.event.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import com.util.DBConn;
import com.util.JdbcUtil;

import cgv.mvc.model.Event_mainDTO;
import cgv.mvc.model.Giftshop_mainDTO;

public class GiftDetailDAO {
	public static GiftDetailDAO dao = null;
	public GiftDetailDAO() {}
	public static GiftDetailDAO  getInstance() {
		if( dao == null ) {
			dao = new GiftDetailDAO();
		}
		return dao;
	}
	public Giftshop_mainDTO select(int name) throws SQLException {
		PreparedStatement pstmt = null;
	    ResultSet rs = null;
	    Connection con = DBConn.getConnection();
		
		String sql = "SELECT * FROM GIFT WHERE GIFT_CODE = ?";

		try {
			pstmt = con.prepareStatement(sql);
			pstmt.setInt(1, name);
			rs = pstmt.executeQuery();
			rs.next();
			
			Giftshop_mainDTO dto = new Giftshop_mainDTO();
			dto.setGift_name(rs.getString("gift_name"));
			dto.setGift_division(rs.getString("gift_division"));
			dto.setGift_payment(rs.getInt("gift_payment"));
			dto.setGift_image(rs.getString("gift_image"));
			dto.setGift_content(rs.getString("gift_content"));
			dto.setGift_diviseq(rs.getInt("gift_diviseq"));
			dto.setGift_detail(rs.getString("gift_detail"));
			dto.setGift_valid(rs.getString("gift_valid"));
			dto.setGift_made(rs.getString("gift_made"));
			dto.setGift_code(rs.getInt("gift_code"));
			
			return dto;
			
			}finally {
				JdbcUtil.close(pstmt);
				JdbcUtil.close(rs);
			}
	}
}
