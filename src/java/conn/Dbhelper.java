/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package conn;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author Lenovo
 */
public class Dbhelper {
    static Connection con;
    static Statement st;
    public static void createConnection() throws ClassNotFoundException, SQLException
    {
           Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/student","root","");
            st = con.createStatement();
            
    }
    
    public static int dmlOperation(String sqlstr) throws SQLException
    {
       return st.executeUpdate(sqlstr);
        
    }
    
    public static ResultSet dqlOperation(String sqlstr1) throws SQLException
    {
        return st.executeQuery(sqlstr1);
        
    }
    public static void closeConn() throws SQLException
    {
        con.close();
    }
    
}
