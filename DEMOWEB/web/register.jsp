<%-- 
    Document   : register
    Created on : Dec 9, 2016, 11:45:20 PM
    Author     : SUALAPTOP24h.NET
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
        <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
        <link href="css/style.css" rel='stylesheet' type='text/css' />
        <script src="js/simpleCart.min.js"></script>
        <link href='http://fonts.googleapis.com/css?family=Lato:100,200,300,400,500,600,700,800,900' rel='stylesheet' type='text/css'>
        <script type="text/javascript" src="js/jquery-1.11.1.min.js"></script>
        <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
        <script type="text/javascript" src="js/megamenu.js"></script>
        <script>$(document).ready(function () {
                $(".megamenu").megamenu();
            });</script>
        <script type="text/javascript">
            $(document).ready(function () {
                var x_timer;
                $("#email").keyup(function (e) {
                    clearTimeout(x_timer);
                    var user_name = $(this).val();
                    x_timer = setTimeout(function () {
                        check_username_ajax(user_name);
                    }, 1000);
                });

                function check_username_ajax(username) {
                    $("#user-result").html('<img src="images/loading.png" />');
                    $.post('CheckEmailServlet', {'username': username}, function (data) {
                        $("#user-result").html(data);
                    });
                }
            });
        </script>
    </head>
    <body>
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
        <div class="header_bottom men_border">
            <div class="container">
                <div class="col-xs-8 header-bottom-left">
                    <div class="col-xs-2 logo">
                        <h1><a href="index.html"><span>Buy</span>shop</a></h1>
                    </div>
                    <div class="col-xs-6 menu">
                        <ul class="megamenu skyblue">
                            <li class="active grid"><a class="color1" href="index.html">Men</a><div class="megapanel">
                                    <div class="row">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="men.html">Accessories</a></li>
                                                    <li><a href="men.html">Bags</a></li>
                                                    <li><a href="men.html">Caps & Hats</a></li>
                                                    <li><a href="men.html">Hoodies & Sweatshirts</a></li>
                                                    <li><a href="men.html">Jackets & Coats</a></li>
                                                    <li><a href="men.html">Jeans</a></li>
                                                    <li><a href="men.html">Jewellery</a></li>
                                                    <li><a href="men.html">Jumpers & Cardigans</a></li>
                                                    <li><a href="men.html">Leather Jackets</a></li>
                                                    <li><a href="men.html">Long Sleeve T-Shirts</a></li>
                                                    <li><a href="men.html">Loungewear</a></li>
                                                </ul>	
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="men.html">Shirts</a></li>
                                                    <li><a href="men.html">Shoes, Boots & Trainers</a></li>
                                                    <li><a href="men.html">Shorts</a></li>
                                                    <li><a href="men.html">Suits & Blazers</a></li>
                                                    <li><a href="men.html">Sunglasses</a></li>
                                                    <li><a href="men.html">Sweatpants</a></li>
                                                    <li><a href="men.html">Swimwear</a></li>
                                                    <li><a href="men.html">Trousers & Chinos</a></li>
                                                    <li><a href="men.html">T-Shirts</a></li>
                                                    <li><a href="men.html">Underwear & Socks</a></li>
                                                    <li><a href="men.html">Vests</a></li>
                                                </ul>	
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Popular Brands</h4>
                                                <ul>
                                                    <li><a href="men.html">Levis</a></li>
                                                    <li><a href="men.html">Persol</a></li>
                                                    <li><a href="men.html">Nike</a></li>
                                                    <li><a href="men.html">Edwin</a></li>
                                                    <li><a href="men.html">New Balance</a></li>
                                                    <li><a href="men.html">Jack & Jones</a></li>
                                                    <li><a href="men.html">Paul Smith</a></li>
                                                    <li><a href="men.html">Ray-Ban</a></li>
                                                    <li><a href="men.html">Wood Wood</a></li>
                                                </ul>	
                                            </div>												
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li class="grid"><a class="color2" href="#">Women</a>
                                <div class="megapanel">
                                    <div class="row">
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="men.html">Accessories</a></li>
                                                    <li><a href="men.html">Bags</a></li>
                                                    <li><a href="men.html">Caps & Hats</a></li>
                                                    <li><a href="men.html">Hoodies & Sweatshirts</a></li>
                                                    <li><a href="men.html">Jackets & Coats</a></li>
                                                    <li><a href="men.html">Jeans</a></li>
                                                    <li><a href="men.html">Jewellery</a></li>
                                                    <li><a href="men.html">Jumpers & Cardigans</a></li>
                                                    <li><a href="men.html">Leather Jackets</a></li>
                                                    <li><a href="men.html">Long Sleeve T-Shirts</a></li>
                                                    <li><a href="men.html">Loungewear</a></li>
                                                </ul>	
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <ul>
                                                    <li><a href="men.html">Shirts</a></li>
                                                    <li><a href="men.html">Shoes, Boots & Trainers</a></li>
                                                    <li><a href="men.html">Shorts</a></li>
                                                    <li><a href="men.html">Suits & Blazers</a></li>
                                                    <li><a href="men.html">Sunglasses</a></li>
                                                    <li><a href="men.html">Sweatpants</a></li>
                                                    <li><a href="men.html">Swimwear</a></li>
                                                    <li><a href="men.html">Trousers & Chinos</a></li>
                                                    <li><a href="men.html">T-Shirts</a></li>
                                                    <li><a href="men.html">Underwear & Socks</a></li>
                                                    <li><a href="men.html">Vests</a></li>
                                                </ul>	
                                            </div>							
                                        </div>
                                        <div class="col1">
                                            <div class="h_nav">
                                                <h4>Popular Brands</h4>
                                                <ul>
                                                    <li><a href="men.html">Levis</a></li>
                                                    <li><a href="men.html">Persol</a></li>
                                                    <li><a href="men.html">Nike</a></li>
                                                    <li><a href="men.html">Edwin</a></li>
                                                    <li><a href="men.html">New Balance</a></li>
                                                    <li><a href="men.html">Jack & Jones</a></li>
                                                    <li><a href="men.html">Paul Smith</a></li>
                                                    <li><a href="men.html">Ray-Ban</a></li>
                                                    <li><a href="men.html">Wood Wood</a></li>
                                                </ul>	
                                            </div>												
                                        </div>
                                    </div>
                                </div>
                            </li>
                            <li><a class="color4" href="about.html">About</a></li>				
                            <li><a class="color5" href="404.html">Blog</a></li>
                            <li><a class="color6" href="contact.html">Support</a></li>
                        </ul> 
                    </div>
                </div>
                <div class="col-xs-4 header-bottom-right">
                    <div class="box_1-cart">
                        <div class="box_11"><a href="checkout.html">
                                <h4><p>Cart: <span class="simpleCart_total"></span> (<span id="simpleCart_quantity" class="simpleCart_quantity"></span> items)</p><img src="images/bag.png" alt=""/><div class="clearfix"> </div></h4>
                            </a></div>
                        <p class="empty"><a href="javascript:;" class="simpleCart_empty">Empty Cart</a></p>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="search">	  
                        <input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                                    this.value = 'Search';
                                }">
                        <input type="submit" value="Subscribe" id="submit" name="submit">
                        <div id="response"> </div>
                    </div>
                    <div class="clearfix"></div>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="single_top">
            <div class="container"> 
                <div class="register">
                    <form action="UsersServlet" method="POST"> 
                        <div class="register-top-grid">
                            <h3 style="color: #D5331D">ĐĂNG KÝ TÀI KHOẢN</h3>
                            <div>
                                <span>Họ Và Tên(*)<label>*</label></span>
                                <input type="text" name="email" id="email">
                                <span id="user-result"></span>

                            </div>
                            <div>
                                <span>Email(*)<label>*</label></span>
                                <input type="text" name="email" id="email"> 
                            </div>
                            <div class="clearfix"> </div>
                            <a class="news-letter" href="#">
                                <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up for Newsletter</label>
                            </a>
                        </div>
                        <div class="register-bottom-grid">
                            <h3>LOGIN INFORMATION</h3>
                            <div>
                                <span>Mật Khẩu<label>*</label></span>
                                <input type="text" name="pass">
                                <span></span>
                            </div>
                            <div>
                                <input type="hidden" value="insert" name="command">
                                <input type="submit" value="Dang Ky">
                            </div>
                            <div class="clearfix"> </div>
                        </div>
                    </form>
                    <div class="clearfix"> </div>
                </div>
            </div>
        </div>      
        <div class="footer">
            <div class="container">
                <div class="footer_top">
                    <div class="col-md-4 box_3">
                        <h3>Our Stores</h3>
                        <address class="address">
                            <p>9870 St Vincent Place, <br>Glasgow, DC 45 Fr 45.</p>
                            <dl>
                                <dt></dt>
                                <dd>Freephone:<span> +1 800 254 2478</span></dd>
                                <dd>Telephone:<span> +1 800 547 5478</span></dd>
                                <dd>FAX: <span>+1 800 658 5784</span></dd>
                                <dd>E-mail:&nbsp; <a href="mailto@example.com">info(at)buyshop.com</a></dd>
                            </dl>
                        </address>
                        <ul class="footer_social">
                            <li><a href=""> <i class="fb"> </i> </a></li>
                            <li><a href=""><i class="tw"> </i> </a></li>
                            <li><a href=""><i class="google"> </i> </a></li>
                            <li><a href=""><i class="instagram"> </i> </a></li>
                        </ul>
                    </div>
                    <div class="col-md-4 box_3">
                        <h3>Blog Posts</h3>
                        <h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
                        <h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
                        <h4><a href="#">Sed ut perspiciatis unde omnis</a></h4>
                        <p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced</p>
                    </div>
                    <div class="col-md-4 box_3">
                        <h3>Support</h3>
                        <ul class="list_1">
                            <li><a href="#">Terms & Conditions</a></li>
                            <li><a href="#">FAQ</a></li>
                            <li><a href="#">Payment</a></li>
                            <li><a href="#">Refunds</a></li>
                            <li><a href="#">Track Order</a></li>
                            <li><a href="#">Services</a></li>
                        </ul>
                        <ul class="list_1">
                            <li><a href="#">Services</a></li>
                            <li><a href="#">Press</a></li>
                            <li><a href="#">Blog</a></li>
                            <li><a href="#">About Us</a></li>
                            <li><a href="#">Contact Us</a></li>
                        </ul>
                        <div class="clearfix"> </div>
                    </div>
                    <div class="clearfix"> </div>
                </div>
                <div class="footer_bottom">
                    <div class="copy">
                        <p>Copyright © 2015 Buy_shop. All Rights Reserved.<a href="http://w3layouts.com/" target="_blank">W3layouts</a> </p>
                    </div>
                </div>
            </div>
        </div>
    </body>
</html>
