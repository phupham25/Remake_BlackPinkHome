<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="detailProduct.aspx.cs" Inherits="BlackPinkHome.detailProduct" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/normalize/8.0.1/normalize.css">
    <link rel="stylesheet" href="fonts/fontawesome/css/all.min.css">
    <link rel="stylesheet" href="CSS/base.css">
    <link rel="stylesheet" href="CSS/detailProduct.css">
    <link rel="stylesheet" href="CSS/navbar.css">
    <link rel="stylesheet" href="CSS/footer.css">
    <style>
        
        @media only screen and (max-width: 768px) {
            .detailProductBlock{
                width:80%;
            }
            .detailProductBlock {
                grid-template-columns:100%;
                margin-bottom:25px;
            }
            #imageBox img{
                width:100%;
                max-height:450px;
            }
            .container{
                height:100%;
            }
            

        }
        
    </style>
    <title>Detail Product</title>
</head>
<body>
    <div class="narbar">
        <div class="narbar__content">
            <div class="navbar__logo">
                <a href="Store.aspx" class="navbar__logo--link">
                    <img src="image/LogoBP-transparent.png" alt="">
                </a>
            </div>

            <!-- Làm Mobile: start -->
            <label for="navbar__mobile--input" class="navbar__mobile--bars">
                <i class="fa-solid fa-bars"></i>
            </label>

            <input type="checkbox" name="" class="navbar__mobile--input" id="navbar__mobile--input">
            
            <label for="navbar__mobile--input" class="navbar__mobile--overlay"></label>

            <div class="narbar__options--mobile">
                <div class="taskBar">
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span >APPAREL</span>
                        </a>
                    </div>
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span>MUSIC</span>
                        </a>
                    </div>
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span>COLLECTIONS</span>
                        </a>
                    </div>
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span >ACCESSORIES</span>
                        </a>
                    </div>
                    <div class="narbar__options--item">
                        <a href="" class="options__title">
                            <span >BORN PINK TOUR</span>
                        </a>
                    </div>
                </div>
                <label for="navbar__mobile--input" class="cancel">
                    <i class="fa-solid fa-xmark"></i>
                </label>
            </div>
            <!-- Làm Mobile: end -->

            <div class="narbar__options">
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span >APPAREL</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </a>
                    <ul class="list">
                        <li><a class="listOption" href="">ALL</a></li>
                        <li><a class="listOption" href="">TOPS</a></li>
                        <li><a class="listOption" href="">BOTTOMS</a></li>
                    </ul>
                </div>
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span>MUSIC</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </a>
                    <ul class="list">
                        <li><a class="listOption" href="">ALL</a></li>
                        <li><a class="listOption" href="">VINYL</a></li>
                        <li><a class="listOption" href="">CD</a></li>
                        <li><a class="listOption" href="">BOX SETS</a></li>
                    </ul>
                </div>
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span>COLLECTIONS</span>
                        <i class="fa-solid fa-chevron-down"></i>
                    </a>
                    <ul class="list">
                        <li><a class="listOption" href="">JISOO</a></li>
                        <li><a class="listOption" href="">BORN PINK</a></li>
                        <li><a class="listOption" href="">PINK VENOM</a></li>
                        <li><a class="listOption" href="">THE ALBUM</a></li>
                        <li><a class="listOption" href="">LISA</a></li>
                        <li><a class="listOption" href="">SHUTDOWN</a></li>
                    </ul>
                </div>
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span >ACCESSORIES</span>
                    </a>
                </div>
                <div class="narbar__options--item">
                    <a href="" class="options__title">
                        <span >BORN PINK TOUR</span>
                    </a>
                </div>
            </div>
             <div class="narbar__extra">
                <div class="log" id="log" runat="server">
                    <%--<a href="signin.aspx" class="">
                        <span >Sign in</span>
                        <a href=""><i class="fa-solid fa-caret-down"></i></a>
                    </a>--%>
                </div>
                <div class="iconCart">
                    <a href="Cart.aspx"><i class="cartIcon fa-solid fa-cart-shopping"></i></a>

                </div>
            </div>
        </div>
    </div>

    <div class="container">
        <div class="detailProductBlock" runat="server">
            <div class="imageBlock" id="imageBox" runat="server">
                <img src="image/sp12.jpg" alt="">
            </div>
            <div class="contentBlock">
                <div class="nameProduct" id="nameBox" runat="server">
                    <span>SHUT DOWN CHARCOAL CREW</span>
                </div>
                <div class="priceProduct" id="priceBox" runat="server">
                    <span>$75.00</span>
                </div>
                <div class="sizeProduct">
                    <div>
                        <input class="size" type="radio" id="S" name="size" value="S" checked="checked">
                        <label id="box-S" class="sizeBox" for="S">S</label>
                    </div>
                    <div>
                        <input class="size" type="radio" id="M" name="size" value="M">
                        <label class="sizeBox" for="M">M</label>
                    </div>
                    <div>
                        <input class="size" type="radio" id="L" name="size" value="L">
                        <label class="sizeBox" for="L">L</label>
                    </div>
                    <div>
                        <input class="size" type="radio" id="XL" name="size" value="XL">
                        <label class="sizeBox" for="XL">XL</label>
                    </div>
                    <div>
                        <input class="size" type="radio" id="2XL" name="size" value="2XL">
                        <label class="sizeBox" for="2XL">2XL</label>
                    </div>
                    <div>
                        <input class="size" type="radio" id="3XL" name="size" value="3XL">
                        <label class="sizeBox" for="3XL">3XL</label>
                    </div>
                </div>
                <%--<div class="quantityProduct">
                    <div class="quantityProduct__more">
                        <i class="fa-solid fa-minus"></i>
                    </div>
                    <div class="currentNumber">
                        <span>1</span>
                    </div>
                    <div class="quantityProduct__less">
                        <i class="fa-solid fa-plus"></i>
                    </div>
                </div>--%>
                <div class="addCart" id="addToCart" runat="server">
                    <span><a href="" style="color: #333; padding: 8px 12px; display: block; border-radius: 3px;">ADD TO CART</a></span>
                </div>
                <div class="detail">
                    Ships on or around May 1, 2023
                </div>
            </div>
        </div>
    </div>


    <div class="footer">
        <div class="footer__contact">
            <div class="social">
                <div class="social-icon"><a href="" ><i class="fa-brands fa-facebook"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-twitter"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-instagram"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-tiktok"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-youtube"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-apple"></i></a></div>
                <div class="social-icon"><a href="" ><i class="fa-brands fa-spotify"></i></a></div>
            </div>
            <span>© 2023 BLACKPINK | SHOP. All Rights Reserved.</span>
            <div class="footer__contact--options">
                <span class="option">Help</span>
                <span class="option">Terms</span>
                <span class="option">Privacy</span>
                <span class="option">Do Not Sell My Personal Infomation</span>
                <span class="option">Cookie Choise</span>
            </div>
            <span>IF YOU ARE USING A SCREEN READER AND ARE HAVING PROBLEMS USING THIS WEBSITE, PLEASE CALL 866-682-4413 FOR ASSISTANCE.</span>
        </div>
    </div>
</body>
</html>
