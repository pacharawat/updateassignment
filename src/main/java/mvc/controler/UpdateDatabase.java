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
public class UpdateDatabase {

    public void Update(String id, String fname, String lname, String email, String phone, double salary,String key) throws ClassNotFoundException, SQLException {
        Connection conn = new ConDatabase().connect();
        String sql = "update employees set employee_id = ?,first_name=?,last_name=?, email=? ,phone_number=?,salary=? "
                + "where employee_id=?";
         PreparedStatement pre = conn.prepareStatement(sql);
             pre.setString(1, id);
             pre.setString(2, fname);
             pre.setString(3, lname);
             pre.setString(4, email);
             pre.setString(5, phone);
             pre.setDouble(6, salary);
             pre.setString(7, key);
             pre.executeUpdate();   
             
             if(pre.executeUpdate() != -1){
                 System.out.println("Sucsess");
             }
    }
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        UpdateDatabase update = new UpdateDatabase();
        update.Update("222", "888", "888", "222", "888", 888, "222");
    }
}
