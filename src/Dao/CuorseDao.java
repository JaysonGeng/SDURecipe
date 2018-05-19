package Dao;

import Entity.Course;
import Entity.Tuijian;
import Util.DBHelper;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class CuorseDao {

    public ArrayList<Course> getAllCuorse() {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Course> list = new ArrayList<Course>();
        try {

            conn = DBHelper.getConnection();
            String sql = "select * from recipe;";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Course item = new Course();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setPrice(rs.getString("price"));
                item.setPosition(rs.getString("position"));
                item.setDescribe(rs.getString("window"));
                item.setBatching(rs.getString("batching"));
                item.setTag(rs.getString("tag"));
                item.setCookingTechniques(rs.getString("cookingTechniques"));
                item.setPic(rs.getString("picture"));
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

    public ArrayList<Course> getTuijianCuorse(int ifs) {

        TuijianDao tuijianDao = new TuijianDao();

        ArrayList<Tuijian> TuijianList = null;

        if (ifs == 0) {
            TuijianList = tuijianDao.getAllTuijian();
        } else {
            TuijianList = tuijianDao.getTuijian();
        }
        ArrayList<Course> list = new ArrayList<Course>();
        try {
            if (list != null) {
                for (Tuijian t : TuijianList) {
                    Course course = null;
                    course = getCourseById(Integer.valueOf(t.getId_tuijian()));
                    course.setReason(t.getReason());
                    list.add(course);
                }
            }

            return list;
        } catch (Exception ex) {
            ex.printStackTrace();
            return null;
        }
    }

    public Course getCourseById(int id) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from recipe where id=?;";
            stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            rs = stmt.executeQuery();
            if (rs.next()) {
                Course item = new Course();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setPrice(rs.getString("price"));
                item.setPosition(rs.getString("position"));
                item.setDescribe(rs.getString("window"));
                item.setBatching(rs.getString("batching"));
                item.setTag(rs.getString("tag"));
                item.setCookingTechniques(rs.getString("cookingTechniques"));
                item.setPic(rs.getString("picture"));
                return item;
            } else {
                return null;
            }

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

    public ArrayList<Course> getCourseByName(String name) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Course> list = new ArrayList<Course>();
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from recipe where name like '%" + name + "%';";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Course item = new Course();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setPrice(rs.getString("price"));
                item.setPosition(rs.getString("position"));
                item.setDescribe(rs.getString("window"));
                item.setBatching(rs.getString("batching"));
                item.setTag(rs.getString("tag"));
                item.setCookingTechniques(rs.getString("cookingTechniques"));
                item.setPic(rs.getString("picture"));
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

    public ArrayList<Course> getCourseByTag(String tag) {
        Connection conn = null;
        PreparedStatement stmt = null;
        ResultSet rs = null;
        ArrayList<Course> list = new ArrayList<Course>();
        try {
            conn = DBHelper.getConnection();
            String sql = "select * from recipe where tag like '%" + tag + "%';";
            stmt = conn.prepareStatement(sql);
            rs = stmt.executeQuery();
            while (rs.next()) {
                Course item = new Course();
                item.setId(rs.getInt("id"));
                item.setName(rs.getString("name"));
                item.setPrice(rs.getString("price"));
                item.setPosition(rs.getString("position"));
                item.setDescribe(rs.getString("window"));
                item.setBatching(rs.getString("batching"));
                item.setTag(rs.getString("tag"));
                item.setCookingTechniques(rs.getString("cookingTechniques"));
                item.setPic(rs.getString("picture"));
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
