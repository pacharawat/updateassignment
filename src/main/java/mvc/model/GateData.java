/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package mvc.model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import mvc.controler.ConDatabase;

/**
 *
 * @author kasem
 */
public class GateData {    
    
    ArrayList<String> EmployeeId;
    ArrayList<String> Firstn;
    ArrayList<String> Lastn;
    ArrayList<String> Email;
    ArrayList<String> Phone;
    ArrayList<String> Saraly;
        
    public void show(String searchby , String key) throws ClassNotFoundException, SQLException{
        
        String search = "";
        if(searchby.equals("employee id")){
            search = "employee_id";
        }
        if(searchby.equals("first name")){
           search = "first_name"; 
        }
        if(searchby.equals("last name")){
             search = "last_name";
        }
        if(searchby.equals("email")){
             search = "email";
        }
        if(searchby.equals("salary")){
            
             search = "salary";
        }
        if(searchby.equals("phone")){
             search = "phone_number";
        }
        
        String sql = ""; 
        if(key.equals("")){
            sql = "select * from employees";
        }
        else{
            sql = "select * from employees where "+search+" Like('%"+key+"%')";
        }
        
        Connection cont = new ConDatabase().connect();
              
        EmployeeId = new ArrayList<String>();
        Firstn = new ArrayList<String>();
        Lastn = new ArrayList<String>();
        Email = new ArrayList<String>();
        Phone = new ArrayList<String>();
        Saraly = new ArrayList<String>();
        
        
        ResultSet result = cont.createStatement().executeQuery(sql);
        
        while(result.next()){
            EmployeeId.add(result.getString("employee_id"));
           Firstn.add(result.getString("first_name"));
            Lastn.add(result.getString("last_name"));
            Email.add(result.getString("email"));
            Phone.add(result.getString("phone_number"));
            Saraly.add(result.getString("salary"));
        }   
    }

    public ArrayList<String> getEmployeeId() {
        return EmployeeId;
    }

    public void setEmployeeId(ArrayList<String> EmployeeId) {
        this.EmployeeId = EmployeeId;
    }

    public ArrayList<String> getFirstn() {
        return Firstn;
    }

    public void setFirstn(ArrayList<String> Firstn) {
        this.Firstn = Firstn;
    }

    public ArrayList<String> getLastn() {
        return Lastn;
    }

    public void setLastn(ArrayList<String> Lastn) {
        this.Lastn = Lastn;
    }

    public ArrayList<String> getEmail() {
        return Email;
    }

    public void setEmail(ArrayList<String> Email) {
        this.Email = Email;
    }

    public ArrayList<String> getPhone() {
        return Phone;
    }

    public void setPhone(ArrayList<String> Phone) {
        this.Phone = Phone;
    }

    public ArrayList<String> getSaraly() {
        return Saraly;
    }

    public void setSaraly(ArrayList<String> Saraly) {
        this.Saraly = Saraly;
    }
    
    
    public static void main(String[] args) throws ClassNotFoundException, SQLException {
        GateData gate = new GateData();
        gate.show("","");
        for(int i=0;i<gate.getEmployeeId().size();i++){
            System.out.println(gate.getEmployeeId().get(i));
        }
    }
}
