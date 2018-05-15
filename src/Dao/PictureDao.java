package Dao;

import Util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

public class PictureDao {
    Connection conn = null;
    PreparedStatement ps = null;
    ResultSet rs = null;

    public PictureDao(){

    }

    public byte[] queryPicture(int bookId) {

        String sql = "select picture from recipe where id = ? ";
        byte[] bookPicture = null;
        try{
            conn = DBHelper.getConnection();
            ps = conn.prepareStatement(sql);
            ps.setInt(1, bookId);
            rs = ps.executeQuery();
            if(rs.next()){
                bookPicture = rs.getBytes(1);
            }
        }catch(Exception e){
            e.printStackTrace();
        }finally{
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
            if (ps != null) {
                try {
                    ps.close();
                    ps = null;
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
        }
        return bookPicture;
    }
}