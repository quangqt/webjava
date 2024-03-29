<%-- 
    Document   : details
    Created on : Dec 9, 2016, 6:12:03 PM
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
        <script src="js/jquery.easydropdown.js"></script>
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
    $(".megamenu").megamenu();
});</script>
        <link rel="stylesheet" href="css/etalage.css">
        <script src="js/jquery.etalage.min.js"></script>
        <script>
jQuery(document).ready(function ($) {

    $('#etalage').etalage({
        thumb_image_width: 300,
        thumb_image_height: 400,
        source_image_width: 900,
        source_image_height: 1200,
        show_hint: true,
        click_callback: function (image_anchor, instance_id) {
            alert('Callback example:\nYou clicked on an image with the anchor: "' + image_anchor + '"\n(in Etalage instance: "' + instance_id + '")');
        }
    });

});
        </script>
        <!--initiate accordion-->
        <script type="text/javascript">
            $(function () {

                var menu_ul = $('.menu_drop > li > ul'),
                        menu_a = $('.menu_drop > li > a');

                menu_ul.hide();

                menu_a.click(function (e) {
                    e.preventDefault();
                    if (!$(this).hasClass('active')) {
                        menu_a.removeClass('active');
                        menu_ul.filter(':visible').slideUp('normal');
                        $(this).addClass('active').next().stop(true, true).slideDown('normal');
                    } else {
                        $(this).removeClass('active');
                        $(this).next().stop(true, true).slideUp('normal');
                    }
                });

            });
        </script>
    </head>
    <body>
        <%
            spDao x = new spDao();
            sp sanpham = new sp();
            String masp = "";
            if (request.getParameter("sanpham") != null) {
                masp = request.getParameter("sanpham");
                sanpham = x.getProduct(Long.parseLong(masp));
            }
        %>
        <div class="single_top">
            <div class="container"> 
                <div class="single_grid">
                    <div class="grid images_3_of_2">
                        <ul id="etalage">
                            <li>
                                <a href="optionallink.html">
                                    <img class="etalage_thumb_image" src="<%=sanpham.getHinhanh()%>" class="<%=sanpham.getTensp()%>" />
                                    <img class="etalage_source_image" src="<%=sanpham.getHinhanh()%>" class="img-responsive" title="" />
                                </a>
                            </li>
                            <li>
                                <img class="etalage_thumb_image" src="<%=sanpham.getHinhanh()%>" class="<%=sanpham.getTensp()%>" />
                                <img class="etalage_source_image" src="<%=sanpham.getHinhanh()%>" class="<%=sanpham.getTensp()%>" title="" />
                            </li>
                            <li>
                                <img class="etalage_thumb_image" src="<%=sanpham.getHinhanh()%>" class="<%=sanpham.getTensp()%>"  />
                                <img class="etalage_source_image" src="<%=sanpham.getHinhanh()%>"class="<%=sanpham.getTensp()%>"  />
                            </li>
                            <li>
                                <img class="etalage_thumb_image" src="<%=sanpham.getHinhanh()%>" class="<%=sanpham.getTensp()%>"  />
                                <img class="etalage_source_image" src="<%=sanpham.getHinhanh()%>"class="<%=sanpham.getTensp()%>"  />
                            </li>
                        </ul>
                        <div class="clearfix"></div>		
                    </div> 
                    <div class="desc1 span_3_of_2">
                        <ul class="back">
                            <li><i class="back_arrow"> </i> <a href="index.jsp">Trở Về</a></li>
                        </ul>
                        <h1><%=sanpham.getTensp()%></h1>
                        <p><%=sanpham.getMota()%></p>
                        <div class="dropdown_top">
                            <div class="dropdown_left">
                                <select class="dropdown" tabindex="10" data-settings='{"wrapperClass":"metro1"}'>
                                    <option value="0">Select size</option>	
                                    <option value="1">M</option>
                                    <option value="2">L</option>
                                    <option value="3">XL </option>
                                    <option value="4">Fs</option>
                                    <option value="5">S </option>
                                    <option value="5"></option>
                                    <option value="5"></option>
                                </select>
                            </div>
                            <ul class="color_list">
                                <li><a href="#"> <span class="color1"> </span></a></li>
                                <li><a href="#"> <span class="color2"> </span></a></li>
                                <li><a href="#"> <span class="color3"> </span></a></li>
                                <li><a href="#"> <span class="color4"> </span></a></li>
                                <li><a href="#"> <span class="color5"> </span></a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div>
                        <div class="simpleCart_shelfItem">
                            <div class="price_single">
                                <div class="head"><h2><span class="amount item_price">$<%=sanpham.getGia()%></span></h2></div>
                                <div class="head_desc"><a href="#">12 reviews</a><img src="images/review.png" alt=""/></li></div>
                                <div class="clearfix"></div>
                            </div>
                            <!--<div class="single_but"><a href="" class="item_add btn_3" value=""></a></div>-->
                            <div class="size_2-right"><a href="#" class="item_add item_add1 btn_5" value="" />Add to Cart </a></div>

                        </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="single_social_top">   
                    <ul class="single_social">
                        <li><a href="#"> <i class="s_fb"> </i> <div class="social_desc">Share<br> on facebook</div><div class="clearfix"> </div></a></li>
                        <li><a href="#"> <i class="s_twt"> </i> <div class="social_desc">Tweet<br> this product</div><div class="clearfix"> </div></a></li>
                        <li><a href="#"> <i class="s_google"> </i><div class="social_desc">Google+<br> this product</div><div class="clearfix"> </div></a></li>
                        <li class="last"><a href="#"> <i class="s_email"> </i><div class="social_desc">Email<br> a Friend</div><div class="clearfix"> </div></a></li>
                    </ul>
                </div>
                <ul class="menu_drop">
                    <li class="item1"><a href="#"><img src="images/product_arrow.png">Description</a>
                        <ul>
                            <li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor </a></li>
                            <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
                            <li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
                        </ul>
                    </li>
                    <li class="item2"><a href="#"><img src="images/product_arrow.png">Additional information</a>
                        <ul>
                            <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
                            <li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
                        </ul>
                    </li>
                    <li class="item3"><a href="#"><img src="images/product_arrow.png">Reviews (10)</a>
                        <ul>
                            <li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor </a></li>
                            <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
                            <li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
                        </ul>
                    </li>
                    <li class="item4"><a href="#"><img src="images/product_arrow.png">Helpful Links</a>
                        <ul>
                            <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
                            <li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
                        </ul>
                    </li>
                    <li class="item5"><a href="#"><img src="images/product_arrow.png">Make A Gift</a>
                        <ul>
                            <li class="subitem1"><a href="#">Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor </a></li>
                            <li class="subitem2"><a href="#"> Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore</a></li>
                            <li class="subitem3"><a href="#">Mirum est notare quam littera gothica, quam nunc putamus parum claram, anteposuerit litterarum formas humanitatis per seacula quarta decima et quinta decima. Eodem modo typi, qui nunc nobis videntur parum clari, fiant sollemnes </a></li>
                        </ul>
                    </li>
                </ul>
            </div>
            <h3 class="m_2">Related Products</h3>
            <div class="container">
                <div class="box_3">
                    <div class="col-md-3">
                        <div class="content_box"><a href="single.html">
                                <img src="images/pic6.jpg" class="img-responsive" alt="">
                            </a>
                        </div>
                        <h4><a href="single.html">Contrary to popular belief</a></h4>
                    </div>
                    <div class="col-md-3">
                        <div class="content_box"><a href="single.html">
                                <img src="images/pic2.jpg" class="img-responsive" alt="">
                            </a>
                        </div>
                        <h4><a href="single.html">Contrary to popular belief</a></h4>
                        <p>$ 199</p>
                    </div>
                    <div class="col-md-3">
                        <div class="content_box"><a href="single.html">
                                <img src="images/pic4.jpg" class="img-responsive" alt="">
                            </a>
                        </div>
                        <h4><a href="single.html">Contrary to popular belief</a></h4>
                        <p>$ 199</p>
                    </div>
                    <div class="col-md-3">
                        <div class="content_box"><a href="single.html">
                                <img src="images/pic5.jpg" class="img-responsive" alt="">
                            </a>
                        </div>
                        <h4><a href="single.html">Contrary to popular belief</a></h4>
                        <p>$ 199</p>
                    </div>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>
    </body>
</html>
