/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controler;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author kasem
 */
public class ConDatabase {
    public Connection connect() throws ClassNotFoundException, SQLException{
     String user = "HR";
     String password = "HR";
     String url = "jdbc:oracle:thin:@localhost:1521:orcl";
     String driver = "oracle.jdbc.OracleDriver";
     Class.forName(driver);
     
     return  DriverManager.getConnection(url,user,password);
    }
    
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        ConDatabase conn = new ConDatabase();
        conn.connect();
        
        if(conn != null){
            System.out.println("Database is Open" + conn);
            
        }
       
    }
    
}
