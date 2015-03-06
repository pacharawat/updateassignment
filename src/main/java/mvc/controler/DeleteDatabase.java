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
public class DeleteDatabase {
    public void Delete(String id) throws ClassNotFoundException, SQLException{
        Connection conn = new ConDatabase().connect();
        String sql = "delete from employees where employee_id = ?";
         PreparedStatement pre = conn.prepareStatement(sql);
         pre.setString(1, id);
         pre.executeUpdate();
        
        if(pre.executeUpdate() != -1){
            System.out.println("Sucsess ");
        }
    }
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        DeleteDatabase delete = new DeleteDatabase();
        delete.Delete("222");
    }
}
