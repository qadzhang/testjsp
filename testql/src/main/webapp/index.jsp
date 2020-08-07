<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="conn.jsp" %>

<%@ page language="java" import="tools.rs2json" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>
<h1>dsdsdsd</h1>
<%
    for (int i = 0; i < 100; i++) {
        out.print(i);
    }
%>
<% String SQL = "select * from temp_zc_a1 where rownum<10";
    ResultSet rs = stmt.executeQuery(SQL);
//	String js = rs2json.resultSetToJson(conn,SQL);
    //out.print(js);
%>
<%@ include file="table.jsp" %>

<%
    rs.close();
    stmt.close();
    conn.close();
%>
</body>
</html>