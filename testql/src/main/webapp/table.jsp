<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>

<table bgcolor="#9999dd" border="1" style='font-size: smaller'>
    <tr>
        <% try {


            //	out.print(rs.getMetaData().getColumnName(1));
            int i = 1;
            for (; i <= (rs.getMetaData().getColumnCount()); i++) {
        %>
        <th>
            <%out.print(rs.getMetaData().getColumnName(i));%>
        </th>
        <%
            }
        %>
    </tr>
    <%
        while (rs.next()) {
    %>
    <tr>
        <%
            for (int ii = 1; ii < i; ii++) {
        %>
        <td><%=rs.getString(ii)%>
        </td>
        <%
            }
        %>
    </tr>
    <%
            }
        } catch (Exception e) {
            out.print(e);
        }

    %>
</table>