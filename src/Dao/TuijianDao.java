package Dao;

import Entity.Course;
import Entity.Tuijian;
import Util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class TuijianDao {

    public ArrayList<Tuijian> getAllTuijian() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Tuijian> list = new ArrayList<Tuijian>();
        try {

            conn = DBHelper.getConnection();
            String sql = "select * from tuijian;";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Tuijian item = new Tuijian();
                item.setId(rs.getInt("id"));
                item.setId_tuijian(rs.getString("id_tuijian"));
                item.setReason(rs.getString("reason"));
                item.setTuijian(rs.getString("tuijian"));
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

    public ArrayList<Tuijian> getTuijian() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Tuijian> list = new ArrayList<Tuijian>();
        try {

            conn = DBHelper.getConnection();
            String sql = "select * from tuijian where tuijian=1;";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Tuijian item = new Tuijian();
                item.setId(rs.getInt("id"));
                item.setId_tuijian(rs.getString("id_tuijian"));
                item.setReason(rs.getString("reason"));
                item.setTuijian(rs.getString("tuijian"));
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
