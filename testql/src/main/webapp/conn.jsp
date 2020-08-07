<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@page language="java" import="java.util.*,java.sql.*" %>

<%
    Class.forName("oracle.jdbc.driver.OracleDriver");
    Connection conn = DriverManager.getConnection("jdbc:oracle:thin:@192.125.66.92:1521:dzda02", "jaaalkh", "jaaalkhssd");
    Statement stmt = conn.createStatement();

%>
