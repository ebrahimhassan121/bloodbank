<%-- 
    Document   : questions
    Created on : Apr 21, 2017, 12:02:47 AM
    Author     : ahmed
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<!DOCTYPE html>
<html>

<head>

    <!--Import materialize.css-->
    <link type="text/css" rel="stylesheet" href="css/materialize.min.css" media="screen,projection" />
    <!--Import Google Icon Font-->
    <link href="fonts/font.css" rel="stylesheet">
    <!--Let browser know website is optimized for mobile-->
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link href="https://fonts.googleapis.com/css?family=Cairo" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Mada" rel="stylesheet">
    <link type="text/css" href="css/style.css" rel="stylesheet">
</head>

<body class="" style="direction: rtl;background: #f4f4f4">


    <%@include  file="header.jsp" %>


    <nav class="green">
        <div class="nav-wrapper">
            <div class="col s12">
                <a href="index.jsp" class="breadcrumb">الرئيسية</a>
                <a href="questions.jsp" class="breadcrumb">نصائح و اسئلة</a>
            </div>
        </div>
    </nav>

    <br><br>

   <div class="row" style="">
        <div class=" col l6 m6 s12 right" id="collapse1" style="border-right:2px solid #565656;">
            <h4>أسئلة شائعة</h4>
            <ul class="collapsible" data-collapsible="accordion" style="padding-right: 0">
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ما هوالتبرع بالدم؟
                    </div>
                    <div class="collapsible-body">
                        هو اجراء طبى يكمن فى نقل دم من شخص سليم معافى طوعا الى شخص مريض يحتاج للدم
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى الاستخدامات الدم ؟
                    </div>
                    <div class="collapsible-body">

                        يستخدم فى علاج المرضى الدين يحتجون للدم وفى صناعه الادويه

                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى الكميه التى تاخد من المتبرع ؟
                    </div>
                    <div class="collapsible-body">

                        من 400 الى 450 ملبلترات وهو ما يمثل 1/12من حجم الدم الموجود فى جسم الانسان

                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى المده الزمنيه التى يجب ان تمر بين مده التبرع
                        والاخرى ؟
                    </div>
                    <div class="collapsible-body">
                        تتراوح مابين 3الى 4 اشهر
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى الشروط التى تتوافر فى المتبرع ؟
                    </div>
                    <div class="collapsible-body">
                        ان يكون المتبرع يتمتع بصحه جيده ان يكون عمره اكثر من 18 عاما ان يكون مر اكثر من 3 اشهر على اخر مره تم فيها التبرع ان يكون
                        المتبرع لم يسبق له زياره طبيب الاسنان او قام باجراء عمليه جراحيه لمده اقل من 3 اشهر

                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى الاسئله التى يسئل عنها المتبرع قبل عمليه التبرع
                        ؟
                    </div>
                    <div class="collapsible-body">
                        يسئل عن اخر مره تم تم التبرع فيها للتاكد من مرور مده اكثر من 3 اشهر
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماذا بعد التبرع ؟
                    </div>
                    <div class="collapsible-body">
                        يقوم بالاكثارمن تناول العصائر ولايقوم بعمل اى مجهود بدنى وادا شعر المريض بالغثيان يجب ان يستلقى على السرير للراحه بحيث يكون
                        مستوى الراس منخفض عن مستوى الجسم وعدم نزع اللاصق الضاغط على مكان الابره قبل ساعتين

                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى انواع التبرع بالدم ؟
                    </div>
                    <div class="collapsible-body">

                        التبرع المماثل اى ان المتبرع والمتلقى شخصان مختلفان لا يعرفان بعضهما وهو الاكثر شيوعا وانتشارا
                        <br/> التبرع بالدم الداتى ويتمثل فى سحب دم من المتبرع واعاده حقنه به مره اخرى عند اجراء عمليه جراحيه
                        له

                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> هل توجد انواع تبرع اخرى غير الدم وماهى ان وجدت
                        ؟
                    </div>
                    <div class="collapsible-body">
                        التبرع بالبلازما عن طريق الفصاده
                        <br/> التبرع بالخلايا
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى اسباب منع التبرع ؟
                    </div>
                    <div class="collapsible-body">
                        التبرع بالدم خلال الثلاثه اشهر الماضيه
                        <br> وجود اى تعب من المتاعب الصحيه التاليه
                        <br>
                        <ol>
                            <li>
                                جميع انواع الانيميا
                            </li>
                            <li> امراض القلب والحمى</li>
                            <li>
                                امراض القلب والحمى الروماتزميه
                            </li>
                            <li>
                                الامراض الصدريه المزمنه
                            </li>
                            <li>
                                الحمل وامراض نزيف الدم
                            </li>
                            <li>
                                الامراض النفسيه
                            </li>
                            <li>
                                ان يكون المتبرع قد قام باجراء عمليه جراحيه خلال الثلاثه اشهر من قبل عمليه التبرع
                            </li>
                        </ol>
                    </div>
                </li>

                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى منافع التبرع بالدم ؟
                    </div>
                    <div class="collapsible-body">
                        ان التبرع بالدم يدل على سلامه المتبرع حيثان كل متبرع يخضع لفحص شامل وفحص مخبرى على دمه عن مرض التهاب الكبد الوبائى بنوعيه
                        وامراض الملاريا والايدز وفى حاله وجود اى مشكله فان بنك الدم يقوم بتوفير الاستشاره اللازمه من قبل
                        استشارييم متخصصين والتوجيه الى الجهه المناسبه لمتابعه الحاله كما ان التبرع يساعد على تنشيط نخاع العظم
                        فى انتاج خلايا دم جديد يستطيع حمل كميه اكبر من الاكسجيين الى اعضاء الجسم

                    </div>
                </li>

                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> هل توجد مضاعفات للتبرع بالدم ؟
                    </div>
                    <div class="collapsible-body">
                        لا توجد اى مضاعفات للتبرع بالدم طالما قام الطبيب باجراء الفحص الشامل قبل عمليه التبرع ولكن من الممكن ان يشعر المتبرع بالغثيان
                        فينصح بان يتناول بعض من العصائر

                    </div>
                </li>

                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> مااهميه نقل الدم ؟
                    </div>
                    <div class="collapsible-body">
                        حمايه الاخرين من الوفاه
                    </div>
                </li>

                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> ماهى اول عمليه نقل دم فى التاريخ ؟
                    </div>
                    <div class="collapsible-body">
                        قام جين بابتيست دينيس بنقل دم خروف الى فتى عمره 15 عاما عام 1667
                    </div>
                </li>

                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i> هل يوجد بديل لعمليه التبرع بالدم ؟
                    </div>
                    <div class="collapsible-body">
                        لا لم يوجد اى بديل لعمليه التبرع بالدم ولكن الباحثون توصلوا الى مستحضرات تقلل من عمليه نقل الدم ولكنها لا تغنى عنها
                    </div>
                </li>




            </ul>
        </div>
        <div class="col l6 m6 s12 right" id="collapse2" style="border-right:2px solid #565656">
            <h4>اهم النصائح</h4>
            <ul class="collapsible" data-collapsible="accordion" style="padding-right: 0">
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i>فوائد التبرع بالدم</div>
                    <div class="collapsible-body">
                        <span>
                        <ol>
                            <li>تنشيط الدورة الدموية</li>
                            <li>يتم تنشيط نخاع العظم لإنتاج خلايا الدم المختلفة بعد التبرع بالدم</li>
                             <li>التقليل من احتمال الإصابة بأمراض القلب</li>
                              <li>التقلليل من انسداد الشرايين </li>
                               <li>-التبرع بالدم يقلل نسبة الحديد في الدم والتي ثبت علمياً أن زيادة نسبة الحديد تزيد من نسبة الإصابة من هذه</li>
                                <li>التاكد من سلامه المتبرع عن طريق قيام فحص شامل له</li>
                        </ol>
                        </span>
                    </div>
                </li>
                 <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i>نصائح قبل عملية التبرع</div>
                    <div class="collapsible-body">
                        <span>
                        <ol>
                            <li>ان لا يكون المتبرع قد قام باجراء اى عمليه جراحيه قبل التبرع بمده اقل من 6 اشهر </li>
                            <li>ان لا يكون المتبرع قد سبق له التبرع لمده تقل عن 3 اشهر </li>
                             <li>التقليل من احتمال الإصابة بأمراض القلب</li>
                              <li>ان يتناول وجبه غدائيه صصحيه قبل التبرع  </li>
                               <li>تناول بعض العصائر </li>
                                <li>ان لايكون قد تناول بعض العقاقير الطبيه مثل الاسبرين لمده تقل عن 48ساعه </li>
                        </ol>
                        </span>
                    </div>
                </li>
                 <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i>نصائح اثناء عمليه التبرع بالدم</div>
                    <div class="collapsible-body">
                        <span>
                        <ol>
                            <li>ن تتاكد من ان نسبه ضغط الدم ليست اقل من المعدل الطبيعى </li>
                            <li>اكد من ان الادوات المستخدمه لم تستخدم من قبل </li>
                             <li>التقليل من احتمال الإصابة بأمراض القلب</li>
                              <li>اذا شعرت بغثيان اثناء التبرع قم بالنوم على ظهرك وارفع قدميك الى اعلى </li>
                               <li>تناول بعض العصائر </li>
                                <li>	تاكد من ان اللاصقه وضعت بشكل صحيح ومنعت  نزول الدم من الجسم </li>
                        </ol>
                        </span>
                    </div>
                </li>
                <li>
                    <div class="collapsible-header"><i class="material-icons left">add_circle_outline</i>نصائح بعد عملية التبرع</div>
                    <div class="collapsible-body">
                        <span>
                        <ol>
                            <li>تناول العصائر بكميات كبيره</li>
                            <li>البعد عن القيام باعمال مرهقه</li>
                            <li>- اللجوء للراحه عند الشعور بغثيان</li>
                            <li>التقليل من تناول السجائر</li>
                            <li>اذا شعر بغثيان ينام على الظهر ورفع القدمين الى اعلى</li>
                        </ol>
                        </span>
                    </div>
                </li>
                

            </ul>
        </div>

    </div>


    <%@include  file="footer.jsp" %>

    <!--Import jQuery before materialize.js-->
    <script type="text/javascript" src="js/jquery-2.1.1.min.js"></script>
    <script type="text/javascript" src="js/materialize.min.js"></script>
    <script type="text/javascript" src="js/script.js"></script>
    <style>
        ol li {
            list-style-type: arabic-indic !important;
        }
    </style>

</body>

</html>