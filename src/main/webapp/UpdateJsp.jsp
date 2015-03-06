<%-- 
    Document   : UpdateJsp
    Created on : Mar 6, 2015, 1:49:21 AM
    Author     : kasem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body id ="body">
        <link rel="stylesheet" href="MvcCss.css" > 
        <%
            String id = "", fname = "", lname = "", email = "", phone = "", salary = "", key = "";
            id = request.getParameter("txtid");
            fname = request.getParameter("txtfname");
            lname = request.getParameter("txtlname");
            email = request.getParameter("txtemail");
            phone = request.getParameter("txtphone");
            salary = request.getParameter("txtsalary");
            key = request.getParameter("txtid");

        %>

       
        <div id="containner">



        </form>            <form method="post" action="InsertJsp.jsp">
            <button id="buttonupdate">Insert</button>
        </form>
        <form method="post" action="DeleteJsp.jsp">
            <button id="buttondelete">Delete</button>
        </form>
        <form method="post" action="SearchJsp.jsp">
            <button id="buttoninsert">Back start</button>
        </form>

        <form id="fromadd" method="post" action="SearchJsp.jsp">
            <div id="id"><h3>Id</h3></div>  
            <input id="inputid" name="txtid" value="<%=id%>">

            <div id="firstname"><h3>First Name</h3></div>  
            <input id="inputfirstname" name="txtfname" value="<%=fname%>"  >
            <div id="lastname"><h3>Last Name</h3></div>  
            <input id="inputlastname" name="txtlname" value="<%=lname%>" >

            <div id="email1"><h3>E-mail</h3></div>  
            <input id="inputemail" name="txtemail" value="<%=email%>" >
            <div id="phone1"><h3>Phone Number</h3></div>  
            <input id="inputphone" name="txtphone" value="<%=phone%>" >

            <div id="salary"><h3>Salary</h3></div>  
            <input id="inputsalary" name="txtsalary" value="<%=salary%>" >
            <input type="hidden" value="1" name="txtcode">
            <input type="hidden" value="<%=key%>" name="txtkey">
            <button id="btnadd" type="submit">Update</button>


        </form>
    </div
</body>
</html>
