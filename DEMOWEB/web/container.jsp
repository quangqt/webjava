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

                <div class="col-md-9 w_content">
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
                <div class="col-md-3">
                    <div class="w_sidebar">
                        <div class="w_nav1">
                            <h4>All</h4>
                            <ul>
                                <li><a href="women.html">women</a></li>
                                <li><a href="#">new arrivals</a></li>
                                <li><a href="#">trends</a></li>
                                <li><a href="#">boys</a></li>
                                <li><a href="#">girls</a></li>
                                <li><a href="#">sale</a></li>
                            </ul>	
                        </div>
                        <h3>filter by</h3>
                        <section  class="sky-form">
                            <h4>catogories</h4>
                            <div class="row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>kurtas</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>kutis</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>churidar kurta</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>salwar</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>printed sari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>shree</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>fashion sari</label>	
                                </div>
                            </div>
                        </section>
                        <section  class="sky-form">
                            <h4>brand</h4>
                            <div class="row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i></i>shree</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                                </div>
                                <div class="col col-4">
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>vishud</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>amari</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox" ><i></i>shree</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>shree</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>Anouk</label>
                                    <label class="checkbox"><input type="checkbox" name="checkbox"><i></i>biba</label>																								
                                </div>
                            </div>
                        </section>
                        <section class="sky-form">
                            <h4>colour</h4>
                            <ul class="w_nav2">
                                <li><a class="color1" href="#"></a></li>
                                <li><a class="color2" href="#"></a></li>
                                <li><a class="color3" href="#"></a></li>
                                <li><a class="color4" href="#"></a></li>
                                <li><a class="color5" href="#"></a></li>
                                <li><a class="color6" href="#"></a></li>
                                <li><a class="color7" href="#"></a></li>
                                <li><a class="color8" href="#"></a></li>
                                <li><a class="color9" href="#"></a></li>
                                <li><a class="color10" href="#"></a></li>
                                <li><a class="color12" href="#"></a></li>
                                <li><a class="color13" href="#"></a></li>
                                <li><a class="color14" href="#"></a></li>
                                <li><a class="color15" href="#"></a></li>
                                <li><a class="color5" href="#"></a></li>
                                <li><a class="color6" href="#"></a></li>
                                <li><a class="color7" href="#"></a></li>
                                <li><a class="color8" href="#"></a></li>
                                <li><a class="color9" href="#"></a></li>
                                <li><a class="color10" href="#"></a></li>
                            </ul>
                        </section>
                        <section class="sky-form">
                            <h4>discount</h4>
                            <div class="row1 scroll-pane">
                                <div class="col col-4">
                                    <label class="radio"><input type="radio" name="radio" checked=""><i></i>60 % and above</label>
                                    <label class="radio"><input type="radio" name="radio"><i></i>50 % and above</label>
                                    <label class="radio"><input type="radio" name="radio"><i></i>40 % and above</label>
                                </div>
                                <div class="col col-4">
                                    <label class="radio"><input type="radio" name="radio"><i></i>30 % and above</label>
                                    <label class="radio"><input type="radio" name="radio"><i></i>20 % and above</label>
                                    <label class="radio"><input type="radio" name="radio"><i></i>10 % and above</label>
                                </div>
                            </div>						
                        </section>
                    </div>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </body>
</html>
