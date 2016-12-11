<%-- 
    Document   : container
    Created on : Dec 9, 2016, 5:27:44 PM
    Author     : SUALAPTOP24h.NET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Dao.spDao"%>
<%@page import="model.sp"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            spDao y = new spDao();
        %>
        <div class="container">
            <div class="women_main">
                <div class="col-md-12 w_content">
                    <img src="images/anhbia.png" width="100%">
                </div>
                <div class="clearfix"></div>
                <h3 style="text-align:center">SAN PHAM</h3>
                <div class="col-md-12 w_content">
                    <%
                        for (sp b : y.getListsp()) {
                    %>
                    <div class="grids_of_4">
                        <div class="grid1_of_4 simpleCart_shelfItem">
                            <div class="content_box">
                                <a href="details.jsp?sanpham=<%=b.getMasp()%>">
                                    <div class="view view-fifth">
                                        <img src="<%=b.getHinhanh()%>" class="img-responsive" alt=""/>
                                        <div class="mask1">
                                            <div class="info"> </div>
                                        </div>
                                    </div>
                                </a>
                                <h5><a href="single.html"> <%=b.getTensp()%></a></h5>
                                <div class="size_1">
                                    <span class="item_price">$<%=b.getGia()%></span>
                                    <select class="item_Size">
                                        <option value="Small">L</option>
                                        <option value="Medium">S</option>
                                        <option value="Large">M</option>	
                                        <option value="Large">XL</option>	
                                    </select>
                                    <div class="clearfix"></div>
                                </div>
                                <div class="size_2">
                                    <div class="size_2-left"> 
                                        <input type="text" class="item_quantity quantity_1" value="1" />
                                    </div>
                                    <div class="size_2-right"><input type="button" class="item_add add3" value="" /></div>
                                    <div class="clearfix"> </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <%
                        }
                    %>
                </div>
            </div>
        </div>
    </body>
</html>
