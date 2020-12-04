package com.choa.board;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.choa.util.DBConnector;

public class BoardDAO {
	
	private DBConnector dbconnerctor;
	public BoardDAO(){
		dbconnerctor = new DBConnector();
	}
	
	public ArrayList<BoardDTO> boardList() throws Exception {
		
		ArrayList<BoardDTO> ar = new ArrayList<>();
		Connection con = dbconnerctor.getConnect();
		
		String sql = "select*from board order by num desc";
		
		PreparedStatement st = con.prepareStatement(sql);
		
		ResultSet rs = st.executeQuery();
		
		while(rs.next()) {
			BoardDTO boardDTO = new BoardDTO();
			boardDTO.setNum(rs.getLong("num"));
			boardDTO.setTitle(rs.getString("title"));
			boardDTO.setWriter(rs.getString("writer"));
			boardDTO.setContents(rs.getString("contents"));
			boardDTO.setReg_Date(rs.getDate("reg_Date"));
			boardDTO.setHit(rs.getLong("hit"));
			ar.add(boardDTO);
		}
		
		rs.close();
		st.close();
		con.close();
		
		return ar;
		
	}

}
