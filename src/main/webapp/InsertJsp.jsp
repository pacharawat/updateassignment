<%-- 
    Document   : insertjsp
    Created on : Mar 6, 2015, 1:17:53 AM
    Author     : kasem
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Test MVC delete</title>
    </head>
    <body id ="body">           
        <link rel="stylesheet" href="MvcCss.css" > 
        <div id="containner">            
            <form method="post" action="UpdateJsp.jsp">
                <button id="buttonupdate">Update</button>
            </form>
            <form method="post" action="DeleteJsp.jsp">
                <button id="buttondelete">Delete</button>
            </form>
            <form method="post" action="SearchJsp.jsp"> 
                <button id="buttoninsert">Back start</button>
            </form>

            <form id="fromadd" method="post" action="SearchJsp.jsp">
                <div id="id"><h3>Id</h3></div>  
                <input id="inputid" name="txtid">

                <div id="firstname"><h3>First Name</h3></div>  
                <input id="inputfirstname" name="txtfname"  >
                <div id="lastname"><h3>Last Name</h3></div>  
                <input id="inputlastname" name="txtlname" >

                <div id="email1"><h3>E-mail</h3></div>  
                <input id="inputemail" name="txtemail" >
                <div id="phone1"><h3>Phone Number</h3></div>  
                <input id="inputphone" name="txtphone" >

                <div id="salary"><h3>Salary</h3></div>  
                <input id="inputsalary" name="txtsalary" >

                <input name="txtcode" value="0" type="hidden">
                <button id="btnadd" type="submit">Add</button>


            </form>
        </div

    </body>
</html>
