package config;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author gcasado0
 */
public class DBconn {
    private String driver = "com.mysql.cj.jdbc.Driver";
    private String server = "localhost";
    private String host = "jdbc:mysql://" + server + ":3306/";
    
    public Connection getConnection(String database, String userDB, String passwordDB){
        Connection conn = null;
        try {
            Class.forName(driver);
            conn = DriverManager.getConnection(host + database, userDB, passwordDB);
        } catch( ClassNotFoundException | SQLException error) {
            error.printStackTrace();
        }
        return conn;
    }

}
