package Dao;

import Entity.Course;
import Entity.TuiSong;
import Entity.Tuijian;
import Util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TuisongDao {

    public ArrayList<TuiSong> getAllTuijian() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<TuiSong> list = new ArrayList<TuiSong>();
        try {

            conn = DBHelper.getConnection();
            String sql = "select * from tuisong;";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                TuiSong item = new TuiSong();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setReason(rs.getString("reason"));
                item.setPicture(rs.getString("picture"));
                item.setUrl(rs.getString("url"));
                item.setTuisong(rs.getString("tuisong"));
                list.add(item);
            }
            return list;

        } catch (Exception ex) {
            ex.printStackTrace();
            return null;

        } finally {
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
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

    public ArrayList<TuiSong> getTuijian() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<TuiSong> list = new ArrayList<TuiSong>();
        try {

            conn = DBHelper.getConnection();
            String sql = "select * from tuisong where tuisong=1;";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                TuiSong item = new TuiSong();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setReason(rs.getString("reason"));
                item.setPicture(rs.getString("picture"));
                item.setUrl(rs.getString("url"));
                item.setTuisong(rs.getString("tuisong"));
                list.add(item);
            }
            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;

        } finally {
            if (rs != null) {
                try {
                    rs.close();
                    rs = null;
                } catch (SQLException e) {
                    e.printStackTrace();
                }
            }
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
