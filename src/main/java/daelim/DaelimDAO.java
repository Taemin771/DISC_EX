package daelim;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

public class DaelimDAO {

	private Connection conn;
	private ResultSet rs;
	
	//占썩본 占쏙옙占쏙옙占쏙옙
	public DaelimDAO() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/daelim";
			String dbID = "root";
			String dbPassword = "root";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		}catch (Exception e) {
			e.printStackTrace();
		}
	}

	//占쌜쇽옙占쏙옙占쏙옙 占쌨소듸옙
	public String getDate() {
		String sql = "select now()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);
			}
		}catch (Exception e) {
			e.printStackTrace();
		}
		return ""; //占쏙옙占쏙옙占싶븝옙占싱쏙옙 占쏙옙占쏙옙
	}
	
	//占쌉시깍옙 占쏙옙호 占싸울옙 占쌨소듸옙
	public int getNext() {
		//占쏙옙占쏙옙 占쌉시깍옙占쏙옙 占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙占쏙옙 占쏙옙회占싹울옙 占쏙옙占쏙옙 占쏙옙占쏙옙占쏙옙 占쏙옙占쏙옙 占쏙옙호占쏙옙 占쏙옙占싼댐옙
		String sql = "select daelimID from daelim order by daelimID desc";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getInt(1) + 1;
			}
			return 1; //첫 占쏙옙째 占쌉시뱄옙占쏙옙 占쏙옙占�
		}catch (Exception e) {
			e.printStackTrace();
		}
		return -1; //占쏙옙占쏙옙占싶븝옙占싱쏙옙 占쏙옙占쏙옙
	}
	
	//占쌜억옙占쏙옙 占쌨소듸옙
	public int write(String daelimTitle, String userID, String daelimContent, int daelimCount, int LikeCount) {
	      String SQL="INSERT INTO DAELIM VALUES (?, ?, ?, ?, ?, ?, ?, ?)";
	      try {
	         PreparedStatement pstmt=conn.prepareStatement(SQL);
	         pstmt.setInt(1, getNext());
	         pstmt.setString(2, daelimTitle);
	         pstmt.setString(3, userID);
	         pstmt.setString(4, getDate());
	         pstmt.setString(5, daelimContent);
	         pstmt.setInt(6, 1);
	         pstmt.setInt(7, daelimCount);
	         pstmt.setInt(8, LikeCount);
	         return pstmt.executeUpdate();         
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return -1;
	   }
	//占쌉시깍옙 占쏙옙占쏙옙트 占쌨소듸옙
	public ArrayList<Daelim> getList(int pageNumber){
	      String SQL="SELECT * from DAELIM where daelimID < ? AND daelimAvailable = 1 order by daelimID desc limit 10";
	      ArrayList<Daelim> list = new ArrayList<Daelim>();
	      try {
	         PreparedStatement pstmt=conn.prepareStatement(SQL);
	         pstmt.setInt(1, getNext()-(pageNumber-1)*10);
	         rs=pstmt.executeQuery();
	         while(rs.next()) {
	            Daelim daelim = new Daelim();
	            daelim.setDaelimID(rs.getInt(1));
	            daelim.setDaelimTitle(rs.getString(2));
	            daelim.setUserID(rs.getString(3));
	            daelim.setDaelimDate(rs.getString(4));
	            daelim.setDaelimContent(rs.getString(5));
	            daelim.setDaelimAvailable(rs.getInt(6));
	            daelim.setDaelimCount(rs.getInt(7));
	            daelim.setLikeCount(rs.getInt(8));
	            list.add(daelim);
	         }         
	      } catch(Exception e) {
	         e.printStackTrace();
	      }
	      return list;
	   }
		
		//占쏙옙占쏙옙징 처占쏙옙 占쌨소듸옙
		public boolean nextPage(int pageNumber) {
			String sql = "select * from daelim where daelimID < ? and daelimAvailable = 1";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, getNext() - (pageNumber - 1) * 10);
				rs = pstmt.executeQuery();
				if(rs.next()) {
					return true;
				}
			}catch (Exception e) {
				e.printStackTrace();
			}
			return false;
		}
		
		
		//�븯�굹�쓽 寃뚯떆湲��쓣 蹂대뒗 硫붿냼�뱶
		public Daelim getDaelim(int daelimID) {
		      String SQL="SELECT * from Daelim where daelimID = ?";
		      try {
		         PreparedStatement pstmt=conn.prepareStatement(SQL);
		         pstmt.setInt(1, daelimID);
		         rs=pstmt.executeQuery();
		         if(rs.next()) {
		            Daelim daelim = new Daelim();
		            daelim.setDaelimID(rs.getInt(1));
		            daelim.setDaelimTitle(rs.getString(2));
		            daelim.setUserID(rs.getString(3));
		            daelim.setDaelimDate(rs.getString(4));
		            daelim.setDaelimContent(rs.getString(5));
		            daelim.setDaelimAvailable(rs.getInt(6));
		            int daelimCount=rs.getInt(7);
		            daelim.setDaelimCount(daelimCount);
		            daelimCount++;
		            countUpdate(daelimCount,daelimID);
		   
		            daelim.setLikeCount(rs.getInt(8));
		            
		            return daelim;
		         }         
		      } catch(Exception e) {
		         e.printStackTrace();
		      }
		      return null;
		   }
		
		public int update(int daelimID, String daelimTitle, String daelimContent) {
			String sql = "update daelim set daelimTitle = ?, daelimContent = ? where daelimID = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, daelimTitle);
				pstmt.setString(2, daelimContent);
				pstmt.setInt(3, daelimID);
				return pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -1; //데이터베이스 오류
		}
		
		//게시글 삭제 메소드
		public int delete(int daelimID) {
			//실제 데이터를 삭제하는 것이 아니라 게시글 유효숫자를 '0'으로 수정한다
			String sql = "DELETE FROM daelim where daelimID = ?";
			try {
				PreparedStatement pstmt = conn.prepareStatement(sql);
				pstmt.setInt(1, daelimID);
				return pstmt.executeUpdate();
			}catch (Exception e) {
				e.printStackTrace();
			}
			return -1; //데이터베이스 오류 
		}
		
		
		
		
		public int countUpdate(int daelimCount, int daelimID) {
	         String SQL = "update daelim set daelimCount = ? where daelimID =?";
	         try {
	            PreparedStatement pstmt=conn.prepareStatement(SQL);
	            pstmt.setInt(1, daelimCount);
	            pstmt.setInt(2, daelimID);
	            return pstmt.executeUpdate();
	         } catch(Exception e) {
	            e.printStackTrace();
	         }
	         return -1;
	      }
		
		
		public int like(int daelimID) {
		      String SQL = "update daelim set likeCount = likeCount + 1 where daelimID = ?";
		      try {
		         PreparedStatement pstmt = conn.prepareStatement(SQL);
		         pstmt.setInt(1, daelimID);
		         return pstmt.executeUpdate();
		      } catch(Exception e) {
		         e.printStackTrace();
		      } 
		      return -1;
		   }
		
		
	}
		
	
    
