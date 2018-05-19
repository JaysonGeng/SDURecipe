package Dao;

import Entity.Course;
import Util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class FankuiDao {

    public void postfankui(String content, String qq, String phone) {
        Connection conn = null;
        PreparedStatement stmt = null;
        try {
            conn = DBHelper.getConnection();
            String sql = "insert into fankui (content,qq,phone) values (?,?,?)";
            stmt = conn.prepareStatement(sql);
            stmt.setString(1, content);
            stmt.setString(2, qq);
            stmt.setString(3, phone);
            stmt.executeUpdate();
        } catch (Exception ex) {
            ex.printStackTrace();
        } finally {
            if (stmt != null) {
                try {
                    stmt.close();
                    stmt = null;
                } catch (SQLException e) {
                    e.printStackTrace();
                }

            }
        }
    }

}
