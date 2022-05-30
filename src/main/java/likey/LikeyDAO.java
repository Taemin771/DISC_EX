package likey;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class LikeyDAO {
   private Connection conn;
   private ResultSet rs;
   
   public LikeyDAO() {
      try {
         String dbURL = "jdbc:mysql://localhost:3306/daelim?serverTimezone=UTC";
         String dbID = "root";
         String dbPassword = "root";
         Class.forName("com.mysql.cj.jdbc.Driver");
         conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
      }catch (Exception e) {
         e.printStackTrace();
      }
   }
   
   public int like(String userID, int daelimID) {
      String SQL = "insert into likey values (?, ?)";
      try {
         PreparedStatement pstmt = conn.prepareStatement(SQL);
         pstmt.setString(1, userID);
         pstmt.setInt(2, daelimID);
         return pstmt.executeUpdate();
      } catch(Exception e) {
         e.printStackTrace();
      }
   return -1;
 }

}