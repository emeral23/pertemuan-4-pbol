<%@page import="java.util.Enumeration"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Data Mahasiswa</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <div class="container-result">
        <h3>Data Mahasiswa (getParameter)</h3>
        <table class="table-hasil">
            <tr><td>NIM</td><td><%= request.getParameter("nim") %></td></tr>
            <tr><td>Nama</td><td><%= request.getParameter("nama") %></td></tr>
            <tr><td>Email</td><td><%= request.getParameter("email") %></td></tr>
            <tr><td>No Telp</td><td><%= request.getParameter("notelp") %></td></tr>
            <tr><td>Prodi</td><td><%= request.getParameter("prodi") %></td></tr>
            <tr><td>Jenis Kelamin</td><td><%= request.getParameter("jk") %></td></tr>
            <tr><td>Alamat</td><td><%= request.getParameter("alamat") %></td></tr>
            <tr>
                <td>Hobi</td>
                <td>
                    <% 
                        String[] hobbies = request.getParameterValues("hobi");
                        if (hobbies != null) {
                            for (String h : hobbies) { out.print(h + " "); }
                        } else { out.print("-"); }
                    %>
                </td>
            </tr>
        </table>

        <hr>

        <h3>Data Mahasiswa (Loop getParameterNames)</h3>
        <div class="loop-container">
            <%
                Enumeration paramNames = request.getParameterNames();
                while(paramNames.hasMoreElements()) {
                    String name = (String)paramNames.nextElement();
                    out.print("<p><strong>" + name + "</strong> : ");
                    String[] values = request.getParameterValues(name);
                    if (values.length == 1) {
                        out.print(values[0] + "</p>");
                    } else {
                        for (int i=0; i<values.length; i++) {
                            out.print(values[i] + (i < values.length-1 ? ", " : ""));
                        }
                        out.print("</p>");
                    }
                }
            %>
        </div>
    </div>
</body>
</html>