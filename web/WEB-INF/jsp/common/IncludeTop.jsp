<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<html xmlns="http://www.w3.org/1999/xhtml">

<head>
    <link rel="StyleSheet" href="css/jpetstore.css" type="text/css" media="screen" />
    <link rel="StyleSheet" href="css/searchProduct.css" type="text/css" media="screen" />
    <link rel="stylesheet" href="css/viewcategoryblock.css" type="text/css" media="screen" />


    <meta name="generator" content="HTML Tidy for Linux/x86 (vers 1st November 2002), see www.w3.org" />
    <title>MyPetStore</title>
    <meta content="text/html; charset=windows-1252" http-equiv="Content-Type" />
    <meta http-equiv="Cache-Control" content="max-age=0" />
    <meta http-equiv="Cache-Control" content="no-cache" />
    <meta http-equiv="expires" content="0" />
    <meta http-equiv="Expires" content="Tue, 01 Jan 1980 1:00:00 GMT" />
    <meta http-equiv="Pragma" content="no-cache" />

    <script type="text/javascript" src="js/jquery-3.3.1.js"></script>

</head>

<body>

<div id="Header">

    <div id="Logo">
        <div id="LogoContent">
            <a href="main"><img src="images/logo-topbar.gif" /></a>
        </div>
    </div>

    <div id="Menu">
        <div id="MenuContent">
            <!--购物车-->
            <a href="viewCart"><img align="middle" name="img_cart" src="images/cart.gif" /></a>
            <img align="middle" src="images/separator.gif" />
            <c:if test="${sessionScope.account == null}">
                <a href="signOnForm">Sign In</a>
            </c:if>
            <c:if test="${sessionScope.account != null}">
                <a href="signOff">Sign Out</a>
                <!---signOff-->
            </c:if>

            <!--分隔符-->
            <c:if test="${sessionScope.account != null}">
                <img align="middle" src="images/separator.gif" />
                <a href="editAccount">My Account</a>
                <img align="middle" src="images/separator.gif" />
                <a href="viewHistory">History</a>
            </c:if>
            <img align="middle" src="images/separator.gif" />
            <!--暂未提供-->
            <a href="viewHelp">?</a>
        </div>
    </div>

    <div id="Search">
        <div id="SearchContent">
            <!--搜索栏目-->
            <form action="searchProduct" method="post">
                <input type="text" id="keyword" name="keyword" size="14" />
                <div class="auto hidden" id="auto">
                    <div class="auto_out">1</div>
                    <div class="auto_out">2</div>
                </div>
                <input type="submit" name="searchProducts" value="Search" />
                <script src="js/searchProduct.js"></script>
            </form>
        </div>
    </div>

    <div id="QuickLinks">
        <a href="viewCategory?categoryId=FISH"><img src="images/sm_fish.gif" /></a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=DOGS"><img src="images/sm_dogs.gif" /></a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=REPTILES"><img src="images/sm_reptiles.gif" /></a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=CATS"><img src="images/sm_cats.gif" /></a>
        <img src="images/separator.gif" />
        <a href="viewCategory?categoryId=BIRDS"><img src="images/sm_birds.gif" /></a>
    </div>
</div>

<div id="Content">
