package Util;

import java.sql.*;

public class DBHelper {
    private static final String driver = "com.mysql.jdbc.Driver";  	//qudong
    private static final String url="jdbc:mysql://202.194.15.234:3306/SDUCanteen?useUnicode=true&characterEncoding=UTF-8";
    private static final String username="SDUCanteen";			//yonghuming
    private static final String password="HDy8yErbzmxW75Lr";		//mima

    private static Connection conn=null;
    //静态代码块加载驱动
    static {

        try
        {
            Class.forName(driver);

        }
        catch (Exception ex) {
            ex.printStackTrace();
        }
    }
    //返回数据库连接对象
    public static Connection getConnection() throws Exception {

        if(conn==null) {
            conn = DriverManager.getConnection(url,username,password);
            return conn;
        }
        return conn;
    }
    public static void closecon(Connection con) {
        if (con != null) {
            try {
                con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            con = null;
        }
    }

    public static Statement getsta(Connection con) {
        Statement sta = null;
        try {
            sta = con.createStatement();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return sta;
    }

    public static void closesta(Statement sta) {
        if (sta != null) {
            try {
                sta.close();
            } catch (SQLException e) {

                e.printStackTrace();
            }
            sta = null;
        }
    }

    public static PreparedStatement getpsta(Connection con, String sql)

    {
        PreparedStatement psta = null;
        try {
            psta = con.prepareStatement(sql);
        } catch (SQLException e) {

            e.printStackTrace();
        }
        return psta;

    }

    public static ResultSet getrs(Statement sta, String sql)

    {
        ResultSet rs = null;
        try {
            rs = sta.executeQuery(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public static void closers(ResultSet rs) {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
            rs = null;
        }
    }

    public static void executeUpdate(Connection con, String sql) {
        Statement sta = null;
        try {
            sta = con.createStatement();
            sta.executeUpdate(sql);
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public static void main(String[] args) throws Exception {
        Connection connection= getConnection();
        if(connection!=null)
            System.out.println("yes");
    }
}
