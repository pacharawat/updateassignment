/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.controler;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author kasem
 */
public class InsertDatabase {
    public void Insert(String id,String fname,String lname,String email,String phone,double salary) throws ClassNotFoundException, SQLException{
        Connection conn = new ConDatabase().connect();
      
         try {
              
             String idemp = id+"";
             String sql = "INSERT INTO employees "
                          +"(employee_id,first_name,last_name, email ,phone_number,salary,job_id,hire_date)" 
                          + "values (?,?,?,?,?,?,?,SYSDATE)";
             
             PreparedStatement pre = conn.prepareStatement(sql);
             pre.setString(1, idemp);
             pre.setString(2, fname);
             pre.setString(3, lname);
             pre.setString(4, email);
             pre.setString(5, phone);
             pre.setDouble(6, salary);
             pre.setString(7, "IT_PROG");
           
             if(pre.executeUpdate() != -1){
                 System.out.println("Success");
             }
             
          
        } catch (SQLException ex) {
             ex.printStackTrace();
         }finally{
             if(conn != null){
                 try {
                     conn.close();
                 } catch (SQLException ex) {
                    
                 }
             }
         }
    }
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        InsertDatabase insert = new InsertDatabase();
        insert.Insert("444", "aim", "hipler", "aim@gmail.com", "055555", 100000);
        
    }

}
