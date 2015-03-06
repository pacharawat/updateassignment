<%-- 
    Document   : DeleteJsp
    Created on : Mar 6, 2015, 1:35:45 AM
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
        <div id="containner">
            <label id="labelsearch">Delete</label>
            <input id="inputsearch">
            <select id ="selecttab">
                <option>employee id</option>
                <option>first name</option>
                <option>last name</option>
                <option>email</option>
                <option>phone</option>
                <option>salary</option>                
            </select> 
            <button id="buttonsearch">Delete</button>
            <form method="post" action="UpdateJsp.jsp">
                <button id="buttonupdate">Update</button>
            </form>
            <form method="post" action="InsertJsp.jsp">
                <button id="buttondelete">Insert</button>
            </form>
            <form method="post" action="SearchJsp.jsp">
                <button id="buttoninsert">Back start</button>
            </form>
        </div
    </body>
</html>
