<%-- 
    Document   : MvcJsp
    Created on : Mar 5, 2015, 9:21:15 PM
    Author     : kasem
--%>

<%@page import="mvc.controler.InsertDatabase"%>
<%@page import="mvc.model.GateData"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test MVC Search</title>
    </head>

    <body id ="body">         
        <link rel="stylesheet" href="MvcCss.css" > 
        <% if (request.getParameter("txtfname") != null) {
                String id = request.getParameter("txtid");
                String fname = request.getParameter("txtfname");
                String lname = request.getParameter("txtlname");
                String email = request.getParameter("txtemail");
                String phone = request.getParameter("txtphone");
                String salary = request.getParameter("txtsalary");
                
                InsertDatabase insert = new InsertDatabase();
                insert.Insert(id, fname, lname, email, phone,Double.parseDouble(salary));
            }
        %> 
        <div id="containner">
            <label id="labelsearch">Search</label>
            <input id="inputsearch">
            <select id ="selecttab">
                <option>employee id</option>
                <option>first name</option>
                <option>last name</option>
                <option>email</option>
                <option>phone</option>
                <option>salary</option>
            </select>
            <button id="buttonsearch">Search</button>

            <form method="post" action="InsertJsp.jsp">
                <button id="buttoninsert">Insert</button>
            </form>           
            <form method="post" action="UpdateJsp.jsp">
                <button id="buttonupdate">Update</button>
            </form>
            <form method="post" action="DeleteJsp.jsp">
                <button id="buttondelete">Delete</button>
            </form>

        </div>

        <table>
            <thead>
                <tr>
                    <td id="cno">no</td>
                    <td id="employee">employee id</td>
                    <td id="firstn">first name</td>
                    <td id ="lastn">last name</td>
                    <td id="email">email</td>
                    <td id="phone">phone number</td>
                    <td id="salaly">salary</td>
                    <td id="showdata">show data</td>
                </tr>
            </thead>
            <tbody>
                <%
                    GateData gate = new GateData();
                    gate.show();
                    for (int i = 0; i < gate.getEmployeeId().size(); i++) {
                %>
                <tr>
                    <td><%=i + 1%></td>
                    <td><%=gate.getEmployeeId().get(i)%></td>
                    <td><%=gate.getFirstn().get(i)%></td>
                    <td><%=gate.getLastn().get(i)%></td>
                    <td><%=gate.getEmail().get(i)%></td>
                    <td><%=gate.getPhone().get(i)%></td>
                    <td><%=gate.getSaraly().get(i)%></td>
                    <td></td>
                <tr/>
                <%
                    }
                %>
            </tbody>
        </table>

    </body>
</html>
