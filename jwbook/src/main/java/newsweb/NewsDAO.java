package newsweb;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class NewsDAO {
	
	final String JDBC_DRIVER = "org.h2.Driver";
	final String JDBC_URL = "jdbc:h2:tcp://localhost/~/jwbookdb";
	
	public Connection open() {
		Connection conn = null;
		try {
			Class.forName(JDBC_DRIVER);
			conn = DriverManager.getConnection(JDBC_URL, "jwbook", "1234");
		} catch (Exception e) {
			e.printStackTrace();
		}
		return conn;
	}
	
	//뉴스 추가
	public void addNews(News news) throws SQLException {
		Connection conn = open();
		
		String sql = "INSERT INTO news (title, img, date, content) "
				+ "VALUES (?, ?, CURRENT_TIMESTAMP(), ?)";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		
		try(conn; pstmt;){
			pstmt.setString(1, news.getTitle());
			pstmt.setString(2, news.getImg());
			pstmt.setString(3, news.getContent());
			pstmt.executeUpdate();
		}
	}
	
	//뉴스 목록
	public List<News> getAll() throws Exception{
		Connection conn = open();
		List<News> newsList = new ArrayList<>();
		
		String sql = "SELECT aid, title, date FROM news";
		PreparedStatement pstmt = conn.prepareStatement(sql);
		ResultSet rs = pstmt.executeQuery();
		
		try(conn; pstmt; rs;){
			while(rs.next()) {
				News news = new News();
				news.setAid(rs.getInt("aid"));
				news.setTitle(rs.getString("title"));
				news.setDate(rs.getString("date"));
				
				newsList.add(news);
			}
			return newsList;
		}
	}
}









