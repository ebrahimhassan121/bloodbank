<%-- 
    Document   : blood
    Created on : Apr 20, 2017, 9:37:31 AM
    Author     : ahmed
--%>

<%@page import="query.Model_typeblood"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<%@page import="query.Model_hospital"%>

<%
    Model_hospital model_hospital = new Model_hospital();
    String username = (String) session.getAttribute("username");
    String password = (String) session.getAttribute("password");
    String email = model_hospital.select_email_hospital(username, password);


%>
<!DOCTYPE html>
<html>

    <head>

        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="../css/materialize.min.css" media="screen,projection" />
        <!--Import Google Icon Font-->
        <link href="../fonts/font.css" rel="stylesheet">
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link href="../css/stylesheet.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet">
        <link type="text/css" href="style.css" rel="stylesheet">
    </head>

    <body style="direction: rtl;background: #f4f4f4;" class="">


        <ul id="slide-out" class="side-nav fixed " style=" padding-right: 0;padding-left: 0;padding-bottom: 60px;height: 100%;" >

            <li><div class="userView">
                    <div class="background">
                        <img src="../imgs/user-bg.jpg">
                    </div>
                    <a href="#!user" class=""><img class="circle white " src="../imgs/build7-512.png"></a>
                    <a href="profile.jsp"><span class="white-text name"><h6>مستشفي   <%= username%></h6></span></a>
                    <a href="https:// <%= email%>"target="blank"><span class="email " style="color:  #333333;"><%= email%></span></a>
                </div></li>


            <li class="" style="">
                <a href="../index.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">home</i>
                    الرئيسية

                </a>
            </li>

            <li class="" style="">
                <a href="adddonor.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">person_add</i>
                    اضافة متبرع
                </a>
            </li>
            <li class="" style="">
                <a href="blood.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">data_usage</i>
                    عينات الدم
                </a>
            </li>
            <li class="" style="">
                <a href="donatedate.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">date_range</i>
                    مواعيد التبرع
                </a>
            </li>
            <li class="" style="">
                <a href="timeclose.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">date_range</i>
                    مواعيد محجوزة
                </a>
            </li>


            <li class="" style="">
                <a href="history.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">history</i>
                    سجل المتبرعين

                </a>
            </li>
            <li class="" style="">
                <a href="setting.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">settings</i>
                    الاعدادت

                </a>
            </li>
            <li class="" style="">
                <a href="../hospitals.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">local_hospital</i>
                    المستشفيات

                </a>
            </li>




            <li class="white-text" style="">
                <a href="../aboutUs.jsp" style="">
                    <i class="material-icons right" style="margin-left: 10px">info</i>
                    من نحن

                </a>
            </li>

            <li class="" style="">
                <a href="../questions.html" style="">
                    <i class="material-icons right" style="margin-left: 10px">question_answer</i>
                    نصائح و اسئلة

                </a>
            </li>
            <li class="" style="border-bottom: 1px solid white">
                <a href="../events.html" style="">
                    <i class="material-icons right" style="margin-left: 10px">events</i>
                    الاحداث

                </a>
            </li>


            <li class="" style="border-bottom: 1px solid white">
                <a href="../Logout" style="">
                    <i class="material-icons right" style="margin-left: 10px">power_settings_new</i>
                    تسجيل الخروج

                </a>
            </li>

        </ul>



        <div class="navbar-fixed ">
            <nav class="white">
                <div class="nav-wrapper  ">

                    <a href="../Logout" class="brand-logo green-text right" style="margin-right: 1%;"><img class="responsive-img" src="../logo.png" width="50" alt="logo"/> بنك الدم</a>
                    <a href="#" data-activates="slide-out" class="button-collapse show-on-medium-and-down"><i class="material-icons green-text">menu</i></a>
                    <ul class=" hide-on-small-and-down">
                        <li class="" style="">
                            <a href="../Logout" style="">

                                تسجيل الخروج
                            </a>
                        </li>
                    </ul>

                </div>
            </nav>
        </div>

        <div class="row">
            <nav class="green" id="breadcrumb">
                <div class="nav-wrapper">
                    <div class="col s12">
                        <a href="hospital/profile.jsp" class="breadcrumb">حسابي</a>
                        <a href="hospital/blood.jsp" class="breadcrumb">فصائل الدم</a>
                    </div>
                </div>
            </nav>
        </div>

        <div class="row ">
            <div class=" col l6 m12 s12 offset-l2 left ">
                <div class="row " style="">
                    <div class="col  left s12  card white " style="">

                        <h5 class="right black-text" >سحب عينة من المخزون</h5>
                    </div>


                    <div class="col  left s12  card white " style="padding: 20px">

                        <form action="../blood" method="Post" class="row">


                            <select  name="bloodtype"class="right browser-default col l4 m3 s12" style="">
                                <option value="" disabled selected>فصيلة الدم</option>
                                <option value="O+">O+</option>
                                <option value="O-"> O-</option>
                                <option value="A+"> A+</option>
                                <option value="A-"> A-</option>
                                <option value="B+"> B+</option>
                                <option value="B-"> B-</option>
                                <option value="AB+">AB+</option>
                                <option value="AB-">AB-</option>
                            </select>
                            <div class="col l5 m7 s12 right">
                                <!--
                                <div class="row">
                                    <div class="col l2 m2 s2 right"><label for="test5 " class="black-text" >عدد الاكياس</label></div>
                                    <div class="col l9 m9 s9 ">

                                        <p class="range-field right">
                                            <input type="range" id="test5" style="margin-top: unset" min="0" max="100"/>
                                        </p>
                                       
                                    </div>
                                </div>
                                -->
                                <div class="row ">
                                    <label class="col l4 s4 m4 right black-text" for="blood-quantity" style="margin-top: 15px">عدد الاكياس</label>
                                    <div class="col l8 s8 m8 left row">
                                        <span class=" " style="width: 5%"><button type="button" class="btn black " style="padding:0 0.75rem" onclick="
                                                var min = 1;
                                                var newval = parseInt($('#blood-quantity').val()) || 1;
                                                if (newval > min) {
                                                    $('#blood-quantity').val(newval - 1);
                                                } else {
                                                    $('#blood-quantity').val(newval);
                                                }
                                                                                  ">-</button></span>
                                        <span class="" style="width: 80%">
                                            <input  name="numberofbage" required="" id="blood-quantity" class="black-text" type="number" value="1" min="1" max="100"  oninvalid="setCustomValidity('خطــأ ')"  style="text-align: center;width: 50% ">


                                        </span>
                                        <span class="" style="width: 5%"><button type="button" class="btn black" style="padding:0 0.75rem" 
                                                                                 onclick="
                                                                                         var max = 100;
                                                                                         var newval = parseInt($('#blood-quantity').val()) || 0;
                                                                                         if (newval < max) {
                                                                                             $('#blood-quantity').val(newval + 1);
                                                                                         } else {
                                                                                             $('#blood-quantity').val(newval);
                                                                                         }
                                                                                 ">+</button></span>
                                    </div>
                                </div>



                            </div>

                            <button class=" btn col left l3 m2 s12 white waves-effect waves-green green white-textt" type="submit" >سحب </button>
                            <br><br><br>

                        </form>

                    </div>



                </div>


                <div class="row " style="">
                    <div class="col  left s12  card white " style="">

                        <h5 class="right black-text" >مخزون عينات الدم المختلفة</h5>
                    </div>


                    <div class="col  left s12  card white " style="padding: 20px">

                        <table class="white gridview highlight" cellpadding="0" cellspacing="0">
                            <thead style="border: 1px #333 solid">
                                <tr >
                                    <th><h5 class="center"> فَصِيلَة الدَّم</h5></th>
                                    <th><h5 class="center"> الْأَكْيَاس الْمُتَوَفِّرَة</h5></th>
                                    <th><h5 class="center"> الحد الادنى للْأَكْيَاس الْمَطْلُوبَة</h5></th>
                                    <th><h5 class="center"> الْأَكْيَاس الْمَطْلُوبَة</h5></th>

                                </tr>
                            </thead>
                            <% Model_typeblood m = new Model_typeblood();
                                Model_hospital h = new Model_hospital();
                                int id = h.select_id_hospital((String) session.getAttribute("username"), (String) session.getAttribute("password"));
                                int opositive, onegative, apositive, anegative, bpositive, bnegative, abnegative, abpositive;
                                opositive = m.selectCountBlood(id, "opositive");
                                onegative = m.selectCountBlood(id, "onegative");
                                apositive = m.selectCountBlood(id, "apositive");
                                anegative = m.selectCountBlood(id, "anegative");
                                bpositive = m.selectCountBlood(id, "bpositive");//          
                                bnegative = m.selectCountBlood(id, "bnegative");
                                abnegative = m.selectCountBlood(id, "abnegative");
                                abpositive = m.selectCountBlood(id, "abpositive");
                                int count = 200;

                            %>
                            <tbody class="" style="">

                                <tr >    
                                    <td><h6 class="center">-O</h6></td>
                                    <td><h6 class="center"><%=  onegative%> </h6></td>
                                    <td><h6 class="center"><%=count%></h6></td>
                                        <% if (onegative > count) {%>
                                    <td><h6 class="center"> المخزون متوفر</h6></td> 
                                    <%} else if (onegative == count) {
                                    %>
                                    <td><h6  style="color: #ffea00" class="center">     المخزون متوفر</h6></td> 
                                    <%} else {%>
                                    <td><h6  style="color: #ee2200" class="center"> <%= count - onegative%></h6></td> 
                                    <% }%>                                
                                </tr>
                                <tr >
                                    <td><h6 class="center">+O</h6></td>
                                    <td><h6 class="center"><%= opositive%></h6></td>
                                    <td><h6 class="center"><%=count%></h6></td>

                                    <% if (opositive > count) {%>
                                    <td><h6 class="center"> المخزون متوفر</h6></td> 
                                    <%} else if (opositive == count) {
                                    %>
                                    <td><h6  style="color: #ffea00" class="center">     المخزون متوفر</h6></td> 
                                    <%} else {%>
                                    <td><h6  style="color: #ee2200" class="center"> <%= count - opositive%></h6></td> 
                                    <% }%>
                                </tr>
                                <tr >
                                    <td><h6 class="center">-AB</h6></td>   
                                    <td><h6 class="center"><%= abnegative%></h6></td>
                                    <td><h6 class="center"><%=count%></h6></td>

                                    <% if (abnegative > count) {%>
                                    <td><h6 class="center"> المخزون متوفر</h6></td> 
                                    <%} else if (abnegative == count) {
                                    %>
                                    <td><h6  style="color: #ffea00" class="center">     المخزون متوفر</h6></td> 
                                    <%} else {%>
                                    <td><h6  style="color: #ee2200" class="center"> <%= count - abnegative%></h6></td> 
                                    <% }%>                                </tr>
                                <tr >
                                    <td><h6 class="center">+AB</h6></td>
                                    <td><h6 class="center"><%= abpositive%></h6></td>
                                    <td><h6 class="center"><%=count%></h6></td>

                                    <% if (abpositive > count) {%>
                                    <td><h6 class="center"> المخزون متوفر</h6></td> 
                                    <%} else if (abpositive == count) {
                                    %>
                                    <td><h6  style="color: #ffea00" class="center">     المخزون متوفر</h6></td> 
                                    <%} else {%>
                                    <td><h6  style="color: #ee2200" class="center"> <%= count - abpositive%></h6></td> 
                                    <% }%>                                </tr>
                                <tr >
                                    <td><h6 class="center">-A</h6></td>
                                    <td><h6 class="center"><%= anegative%></h6></td>
                                    <td><h6 class="center"><%=count%></h6></td>

                                    <% if (anegative > count) {%>
                                    <td><h6 class="center"> المخزون متوفر</h6></td> 
                                    <%} else if (anegative == count) {
                                    %>
                                    <td><h6  style="color: #ffea00" class="center">     المخزون متوفر</h6></td> 
                                    <%} else {%>
                                    <td><h6  style="color: #ee2200" class="center"> <%= count - anegative%></h6></td> 
                                    <% }%>                                </tr>
                                <tr >
                                    <td><h6 class="center">+A</h6></td>
                                    <td><h6 class="center"><%= apositive%></h6></td>
                                    <td><h6 class="center"><%=count%></h6></td>
                                   
                                    <% if (apositive > count) {%>
                                    <td><h6 class="center"> المخزون متوفر</h6></td> 
                                    <%} else if (apositive == count) {
                                    %>
                                    <td><h6  style="color: #ffea00" class="center">     المخزون متوفر</h6></td> 
                                    <%} else {%>
                                    <td><h6  style="color: #ee2200" class="center"> <%= count - apositive%></h6></td> 
                                    <% }%> 
                                </tr>
                                <tr >
                                    <td><h6 class="center">-B</h6></td>
                                    <td><h6 class="center"><%= bnegative%></h6></td>
                                    <td><h6 class="center"><%=count%></h6></td>

                                    <% if (bnegative > count) {%>
                                    <td><h6 class="center"> المخزون متوفر</h6></td> 
                                    <%} else if (bnegative == count) {
                                    %>
                                    <td><h6  style="color: #ffea00" class="center">     المخزون متوفر</h6></td> 
                                    <%} else {%>
                                    <td><h6  style="color: #ee2200" class="center"> <%= count - bnegative%></h6></td> 
                                    <% }%>                                </tr>
                                <tr >
                                    <td><h6 class="center">+B</h6></td>
                                    <td><h6 class="center"><%= bpositive%></h6></td>
                                    <td><h6 class="center"><%=count%></h6></td>

                                    <% if (bpositive > count) {%>
                                    <td><h6 class="center"> المخزون متوفر</h6></td> 
                                    <%} else if (bpositive == count) {
                                    %>
                                    <td><h6  style="color: #ffea00" class="center">     المخزون متوفر</h6></td> 
                                    <%} else {%>
                                    <td><h6  style="color: #ee2200" class="center"> <%= count - bpositive%></h6></td> 
                                    <% }%>                                </tr>
                            </tbody>
                        </table>

                    </div>



                </div>
            </div>
        </div>







        <footer class=" page-footer green">
            <div class="footer-copyright">
                <div class="container">
                    © جميع الحقوق محفوظة لمطورين بنك الدم ™ 2017
                    <span class="left" style="margin-left:20px"> <a class="grey-text text-lighten-4 " href="#!" style="margin:30px auto">الانضمام لنا</a> </span>
                    <span class="left" style="margin-left:20px"> <a class="grey-text text-lighten-4 " href="#!" style="margin:30px auto">الشروط والاحكام</a> </span>
                    <span class="left" style="margin-left:20px"> <a class="grey-text text-lighten-4 " href="#!" style="margin:30px auto">مركز المساعدة</a> </span>

                </div>
            </div>
        </footer>







        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="../js/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="../js/materialize.js"></script>
        <script type="text/javascript" src="../js/script.js"></script>
        <script>

                                                                                     $(document).ready(function () {
                                                                                         "use strict";
                                                                                         console.clear();
                                                                                         $('#blood-quantity').keypress(validateNumber);
                                                                                     });
                                                                                     function validateNumber(event) {
                                                                                         var key = window.event ? event.keyCode : event.which;
                                                                                         if (event.keyCode === 8 || event.keyCode === 46) {
                                                                                             return true;
                                                                                         } else if (key < 48 || key > 57) {
                                                                                             return false;
                                                                                         } else {
                                                                                             return true;
                                                                                         }
                                                                                     }
                                                                                     ;

        </script>

    </body>

</html>
