<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ include file="conn.jsp" %>

<%@ page language="java" import="tools.rs2json" %>


<% String SQL = "select * from temp_zc_a1 where rownum<10";

    String js = rs2json.resultSetToJson(conn, SQL);
    response.setContentType("application/json");
    response.setCharacterEncoding("UTF-8");
    response.setHeader("Cache-Control", "no-cache");
    out.print(js);

%>


