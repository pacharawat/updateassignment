<%-- 
    Document   : MvcJsp
    Created on : Mar 5, 2015, 9:21:15 PM
    Author     : kasem
--%>

<%@page import="mvc.controler.DeleteDatabase"%>
<%@page import="mvc.controler.UpdateDatabase"%>
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

        <%

            String selectfname = request.getParameter("txtfnameselect");
            String selectlname = request.getParameter("txtlnameselect");
            String selectemail = request.getParameter("txtemailselect");
            String selectphone = request.getParameter("txtphoneselect");
            String selectsalary = request.getParameter("txtsalaryselect");
            String code = "0";
            String select = "";
            String search = "";
            code = request.getParameter("txtcode");
            String selectid = request.getParameter("txtidselect");

            if (request.getParameter("select") != null) {
                select = request.getParameter("select");
                search = request.getParameter("txtsearch");
            }
            if (request.getParameter("txtid") != null) {

                String id = request.getParameter("txtid");
                String fname = request.getParameter("txtfname");
                String lname = request.getParameter("txtlname");
                String email = request.getParameter("txtemail");
                String phone = request.getParameter("txtphone");
                String salary = request.getParameter("txtsalary");
                String key = request.getParameter("txtkey");

                if (Integer.parseInt(code) == 1) {
                    UpdateDatabase up = new UpdateDatabase();
                    up.Update(id, fname, lname, email, phone, Double.parseDouble(salary), key);

                }
                if (Integer.parseInt(code) == 0) {
                    InsertDatabase insert = new InsertDatabase();
                    insert.Insert(id, fname, lname, email, phone, Double.parseDouble(salary));

                }
                if (Integer.parseInt(code) == 3) {
                    DeleteDatabase de = new DeleteDatabase();
                    de.Delete(id);
                }
            }
        %> 
        <div id="containner">
            <label id="labelsearch">Search</label>
            <form method="post" action="SearchJsp.jsp">
                <input id="inputsearch" name="txtsearch">
                <select id ="selecttab" name="select">
                    <option>employee id</option>
                    <option>first name</option>
                    <option>last name</option>
                    <option>email</option>
                    <option>phone</option>
                    <option>salary</option>
                </select>
                <button id="buttonsearch">Search</button>
            </form>

            <form method="post" action="InsertJsp.jsp">
                <button id="buttoninsert">Insert</button>
            </form>           
            <form method="post" action="UpdateJsp.jsp">
                <input type="hidden" value="<%=selectid%>" name="txtid">
                <input type="hidden" value="<%=selectfname%>" name="txtfname">
                <input type="hidden" value="<%=selectlname%>" name="txtlname">
                <input type="hidden" value="<%=selectemail%>" name="txtemail">
                <input type="hidden" value="<%=selectphone%>" name="txtphone">
                <input type="hidden" value="<%=selectsalary%>" name="txtsalary">
                <button id="buttonupdate">Update</button>
            </form>

            <form method="post" action="SearchJsp.jsp">
                <input type="hidden" value="<%=selectid%>" name="txtid">
                <input type="hidden" value="3" name="txtcode">
                <button id="buttondelete">Delete</button>
            </form>

            <label><pre>
                You Select 
                Employee Id : <%=selectid%>
                First name  : <%=selectfname%>
                Last name   : <%=selectlname%>
                Email       : <%=selectemail%>
                Phone number: <%=selectphone%>
                Salary      : <%=selectsalary%>
                </pre>                
            </label>                

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
                    gate.show(select, search);
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
                    <td>
                        <form method="post" action="SearchJsp.jsp">
                            <input type="hidden" value="<%=gate.getEmployeeId().get(i)%>" name="txtidselect">
                            <input type="hidden" value="<%=gate.getFirstn().get(i)%>" name="txtfnameselect">
                            <input type="hidden" value="<%=gate.getLastn().get(i)%>" name="txtlnameselect">
                            <input type="hidden" value="<%=gate.getEmail().get(i)%>" name="txtemailselect">
                            <input type="hidden" value="<%=gate.getPhone().get(i)%>" name="txtphoneselect">
                            <input type="hidden" value="<%=gate.getSaraly().get(i)%>" name="txtsalaryselect">
                            <button>Select</button>
                        </form>
                    </td>
                <tr/>
                <% } %>
            </tbody>
        </table>

    </body>
</html>
