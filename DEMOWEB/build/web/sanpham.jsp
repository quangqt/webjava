<%-- 
    Document   : sanpham
    Created on : Dec 11, 2016, 4:25:44 PM
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
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <!-- Custom Theme files -->
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <script src="js/simpleCart.min.js"></script>
        <!-- Custom Theme files -->
        <!--webfont-->
        <link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <!-- start menu -->
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
        <!-- the jScrollPane script -->
        <script type="text/javascript" src="js/jquery.jscrollpane.min.js"></script>
        <script type="text/javascript" id="sourcecode">
            $(function ()
            {
                $('.scroll-pane').jScrollPane();
            });
        </script>
    </head>
    <body>
        <%
            spDao x = new spDao();
            String Maloai = "";
            if (request.getParameter("loaisp") != null) {
                Maloai = request.getParameter("loaisp");
            }
        %>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="container">
                <div class="women_main">
                    <div class="col-md-12 w_content">
                        <img src="images/anhbia.png" width="100%">
                    </div>
                    <div class="clearfix"></div>
                    <h3 style="text-align:center">SAN PHAM</h3>
                    <div class="col-md-12 w_content">


                    <%
                        for (sp p : x.getListspByloaisp(Long.parseLong(Maloai))) {
                    %>
                    <div class="grids_of_4">
                        <div class="grid1_of_4 simpleCart_shelfItem">
                            <div class="content_box">
                                <a href="details.jsp?sanpham=<%=p.getMasp()%>">
                                    <div class="view view-fifth">
                                        <img src="<%=p.getHinhanh()%>" class="img-responsive" alt=""/>
                                        <div class="mask1">
                                            <div class="info"> </div>
                                        </div>
                                    </div>
                                </a>
                                <h5><a href="single.html"> <%=p.getTensp()%></a></h5>
                                <div class="size_1">
                                    <span class="item_price">$<%=p.getGia()%></span>
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
