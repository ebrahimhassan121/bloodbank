<%-- 
    Document   : adddonor
    Created on : Apr 19, 2017, 5:33:38 PM
    Author     : ahmed
--%>

 <%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<%@page import="query.Model_hospital"%>
 
<%
    Model_hospital model_hospital = new Model_hospital();
    String username = (String) session.getAttribute("username");
    String password = (String) session.getAttribute("password");
    String email=model_hospital.select_email_hospital(username, password);
     
 

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
                    <a href="https:// <%= email %>"target="blank"><span class="email " style="color:  #333333;"><%= email %></span></a>
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
                    <a href="hospital/adddonor.jsp" class="breadcrumb">اضافة متبرع</a>

                </div>
            </div>
        </nav>
    </div>

    <div class="row ">
        <div class=" col l6 m12 s12 offset-l2 left ">
            <div class="row " style="min-height: 80vh;">
                <div class="col  left s12  card white " style="">

                    <h5 class="right black-text"> اضافة متبرع </h5>
                </div>


                <div class="col  left s12  card white " style="padding: 20px">
                  
                    <form action="../AddDonor" method="POST">
                    
                        <div class="row">
                            <div class="col s12">
                                <div class="row">
                                    <label for="autocomplete-input" class="col s3 right" style="padding-top: 33px"><h6 class="black-text">الكود</h6></label>
                                    <div class="input-field col s9">
                                        <i class="material-icons prefix " style="left: 3rem">textsms</i>
                                        <input name="ssn" type="text" id="autocomplete-input" class="autocomplete" required="">

                                    </div>
                                </div>
                                <div class="row">
                                    <label for="type-blood" class="col s3 right" style=""><h6 class="black-text">فصيلة الدم</h6></label>
                                    <select name="bloodtype" class="browser-default col s8 right" id="type-blood" style="" required="">
                                            <option value="" disabled selected>فصيلة</option>
                                            <option value="O+">O+</option>
                                            <option value="O-">O-</option>
                                            <option value="A+"> A+</option>
                                            <option value="A-"> A-</option>
                                            <option value="B+">B+</option>
                                            <option value="B-">B-</option>
                                            <option value="AB+"> AB+</option>
                                            <option value="AB-"> AB-</option>
                                        </select>
                                </div>

                                 <div class="row" style="margin-bottom: 0;">
                                    <div class="col s12 m6 l6" >
                                        <div class="row " style="margin-bottom: 0;">
                                            <label class="col l4 s3 m4 right black-text" for="blood-quantity" style="margin-top: 15px"><h6>عدد الاكياس</h6></label>
                                            <div class="col l8 s9 m8 left row">
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
                                                    <input name="numberofbage" required="" id="blood-quantity" class="black-text" type="number" value="1" min="1" max="100"  oninvalid="setCustomValidity('خطــأ ')"  style="text-align: center;width: 50% ">
 

                                                    </span>
                                                <span class="" style="width: 5%">
                                                        <button type="button" class="btn black" style="padding:0 0.75rem" 
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



                                    <div class="col s12 m6 l6">
                                        <div class="row" style="padding-top: 11px">
                                            <!-- Switch -->
                                            <div class="switch right">
                                                <label class="black-text" style="font-size: 1rem">
                                                       عينة سليمة 
                                                       <input name="statusblood" type="checkbox">
                                                        <span class="lever"></span>
                                                        عينة مرفوضة
                                                    </label>
                                            </div>

                                        </div>
                                    </div>
                                </div>
                                <div class="row" style="margin-bottom: 0;">
                                    <label for="description" class="col s3 right" style=""><h6 class="black-text">توصيف الحالة </h6></label>

                                    <div class=" col s8 right">


                                        <textarea   class="right-align" rows="4" name="description" id="description" placeholder="توصيف الحالة" required style="height: unset;max-width:100%"></textarea>
                                    </div>


                                </div>

                               
                                <button type="submit" class="btn btn-large waves-effect waves-light green white-text left" style="">اضافة</button>


                            </div>


                        </div>

                    </form>

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
                                                                    $('input.autocomplete').autocomplete({
                                                                        data: {
                                                                              
                                                                            "123456": null,
                                                                            "1234567": null,
                                                                            "1234568": null
                                                                        },
                                                                        limit: 20, // The max amount of results that can be shown at once. Default: Infinity.
                                                                    });
                                                                });
    </script>

</body>

</html>