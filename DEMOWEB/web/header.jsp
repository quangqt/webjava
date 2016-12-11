<%-- 
    Document   : header
    Created on : Dec 9, 2016, 5:27:16 PM
    Author     : SUALAPTOP24h.NET
--%>

<%@page import="model.Users"%>
<%@page import="model.loaisp" %>
<%@page import="Dao.LoaiDao" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            LoaiDao x = new LoaiDao();
            Users users = null;
            if (session.getAttribute("user") != null) {
                users = (Users) session.getAttribute("user");
            }
        %>
        <div class="header_top">
            <div class="container">
                <div class="one-fifth column row_1">
                    <span class="selection-box"><select class="domains valid" name="domains">
                            <option>English</option>
                            <option>French</option>
                            <option>German</option>
                        </select></span>
                </div>
                <div class="cssmenu">
                    <ul>
                        <li class="active"><a href="login.html">My Account</a></li> 
                    </ul>
                </div>
            </div>
        </div>	
        <div class="wrap-box"></div>
        <div class="header_bottom">
            <div class="container">
                <h3> Xin Chao:<%if (users != null) {%>
                                    <%=users.getUserEmail()%>
                                    <%}%></h3>
                <div class="col-xs-8 header-bottom-left">
                    <div class="col-xs-2 logo">
                        <h3><a href="index.jsp"><span>ShopQuang</span></a></h3>
                    </div>
                    <div class="col-xs-6 menu">
                        <ul class="megamenu skyblue">
                            <%
                                for (loaisp c : x.getListLoaisp()) {
                            %>
                            <li><a class="color5" href="sanpham.jsp?loaisp=<%=c.getMaloai()%>"><%=c.getTenloai()%></a></li>
                                <%
                                    }
                                %>
                        </ul> 
                    </div>
                </div>

                <div class="col-xs-4 header-bottom-right">
                    <div class="box_1-cart">
                        <div class="box_11"><a href="checkout.html">

                                <h4><p>Cart: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</p><img src="images/bag.png" alt=""/><div class="clearfix"> </div></h4>
                            </a></div>
                        <p class="empty"><a href="register.jsp" class="simpleCart_empty">Đăng Ký</a></p>
                        <p class="empty"><a href="login.jsp" class="simpleCart_empty">Đăng Nhập</a></p>
                    </div>
                    <div class="search">	  
                        <input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Search';
                                }">
                        <input type="submit" value="Subscribe" id="submit" name="submit">
                        <div id="response"> </div>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
