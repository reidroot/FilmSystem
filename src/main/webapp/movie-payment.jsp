<%--
  Created by IntelliJ IDEA.
  User: Lenovo
  Date: 2022/5/1
  Time: 10:27
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Movie Payment</title>
    <link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
    <!-- Custom Theme files -->
    <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
    <!-- Custom Theme files -->
    <script src="js/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <!-- Custom Theme files -->
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta name="keywords" content="My Show Responsive web template, Bootstrap Web Templates, Flat Web Templates, Andriod Compatible web template,
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyErricsson, Motorola web design" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <!--webfont-->
    <link href='http://fonts.useso.com/css?family=Oxygen:400,700,300' rel='stylesheet' type='text/css'>
    <link href='http://fonts.useso.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
    <!-- start menu -->
    <link href="css/megamenu.css" rel="stylesheet" type="text/css" media="all" />
    <script type="text/javascript" src="js/megamenu.js"></script>
    <script>$(document).ready(function(){$(".megamenu").megamenu();});</script>
    <script type="text/javascript" src="js/jquery.leanModal.min.js"></script>
    <link rel="stylesheet" href="css/font-awesome.min.css" />
    <link rel="stylesheet" href="css/menu.css" />
    <script src="js/easyResponsiveTabs.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#horizontalTab').easyResponsiveTabs({
                type: 'default', //Types: default, vertical, accordion
                width: 'auto', //auto or any width like 600px
                fit: true   // 100% fit in a container
            });
        });
    </script>
    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
    <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
    <![endif]-->
    <!---- start-smoth-scrolling---->
    <script type="text/javascript" src="js/move-top.js"></script>
    <script type="text/javascript" src="js/easing.js"></script>
    <script type="text/javascript">
        jQuery(document).ready(function($) {
            $(".scroll").click(function(event){
                event.preventDefault();
                $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
            });
        });
    </script>
    <!---- start-smoth-scrolling---->
</head>
<body>
<!-- header-section-starts -->

<div class="header-top-strip" id="home">
    <div class="container">
        <div class="header-top-left">
            <p><a href="support.html">24/7 Customer Care</a> | <a class="play-icon popup-with-zoom-anim" href="#small-dialog" href="#"> Resend Booking Confirmation</a> </p>
            <div id="small-dialog" class="mfp-hide">
                <div class="select-city">
                    <h3>Resend Confirmation</h3>
                    <p>Lorem Ipsum is simply dummy text of the printing and typesetting industry</p>
                    <div class="confirmation">
                        <form>
                            <input type="text" class="email" placeholder="Email" required="required" pattern="([\w-\.]+@([\w-]+\.)+[\w-]{2,4})?" title="Enter a valid email"/>
                            <input type="text" class="email" placeholder="Mobile Number" maxlength="10" pattern="[1-9]{1}\d{9}" title="Enter a valid mobile number" />
                            <input type="submit" value="SEND">
                        </form>
                    </div>
                    <div class="clearfix"></div>
                </div>
            </div>
        </div>
        <div class="header-top-right">
            <div class="modal fade">
                <div class="modal-dialog">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
                            <h4 class="modal-title">Modal title</h4>
                        </div>
                        <div class="modal-body">
                            <p>One fine body&hellip;</p>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                            <button type="button" class="btn btn-primary">Save changes</button>
                        </div>
                    </div><!-- /.modal-content -->
                </div><!-- /.modal-dialog -->
            </div><!-- /.modal -->
            <!-- Button trigger modal  -->
            <a class="play-icon popup-with-zoom-anim" href="#small-dialog1">Select a Region</a>
            <!---pop-up-box---->
            <link href="css/popuo-box.css" rel="stylesheet" type="text/css" media="all"/>
            <script src="js/jquery.magnific-popup.js" type="text/javascript"></script>
            <!---//pop-up-box---->
            <div id="small-dialog1" class="mfp-hide">
                <div class="select-city">
                    <h3>Select Your City</h3>
                    <select class="list_of_cities"><option value="">Select Your City</option><optgroup label="Andhra Pradesh"><option style="padding-left: 10px;" value="ANAN">Anantapur</option><option style="padding-left: 10px;" value="CHDM">Chinnamandem</option><option style="padding-left: 10px;" value="GUDR">Gudur</option><option style="padding-left: 10px;" value="GUNT">Guntur</option><option style="padding-left: 10px;" value="JANG">Jangareddy Gudem</option><option style="padding-left: 10px;" value="KAKI">Kakinada</option><option style="padding-left: 10px;" value="KURN">Kurnool</option><option style="padding-left: 10px;" value="MART">Martur</option><option style="padding-left: 10px;" value="PRVT">Parvathipuram</option><option style="padding-left: 10px;" value="RAJA">Rajahmundry</option><option style="padding-left: 10px;" value="TENA">Tenali</option><option style="padding-left: 10px;" value="TIRU">Tirupati</option><option style="padding-left: 10px;" value="VIJA">Vijayawada</option><option style="padding-left: 10px;" value="VIZA">Vizag</option><option style="padding-left: 10px;" value="VIZI">Vizianagaram</option></optgroup><optgroup label="Arunachal Pradesh"><option style="padding-left: 10px;" value="TAWA">Tawang</option><option style="padding-left: 10px;" value="ZIRO">Ziro</option></optgroup><optgroup label="Assam"><option style="padding-left: 10px;" value="DIB">Dibrugarh</option><option style="padding-left: 10px;" value="GUW">Guwahati</option><option style="padding-left: 10px;" value="JORT">Jorhat</option><option style="padding-left: 10px;" value="SIL">Silchar</option><option style="padding-left: 10px;" value="TINS">Tinsukia</option></optgroup><optgroup label="Bihar"><option style="padding-left: 10px;" value="HAJI">Hajipur</option><option style="padding-left: 10px;" value="PATN">Patna</option></optgroup><optgroup label="Chhattisgarh"><option style="padding-left: 10px;" value="BHILAI">Bhilai</option><option style="padding-left: 10px;" value="BILA">Bilaspur</option><option style="padding-left: 10px;" value="CHAM">Champa</option><option style="padding-left: 10px;" value="DHMT">Dhamtari</option><option style="padding-left: 10px;" value="DURG">Durg</option><option style="padding-left: 10px;" value="JAGD">Jagdalpur</option><option style="padding-left: 10px;" value="KAWA">Kawardha</option><option style="padding-left: 10px;" value="KNGN">Kondagaon</option><option style="padding-left: 10px;" value="KRBA">Korba</option><option style="padding-left: 10px;" value="RAIG">Raigarh</option><option style="padding-left: 10px;" value="RAIPUR">Raipur</option><option style="padding-left: 10px;" value="TNO">Tilda Neora</option></optgroup><optgroup label="Croatia"><option style="padding-left: 10px;" value="DBRV">Dubrovnik</option></optgroup><optgroup label="Goa"><option style="padding-left: 10px;" value="GOA">Goa</option></optgroup><optgroup label="Gujarat"><option style="padding-left: 10px;" value="ADPR">Adipur</option><option style="padding-left: 10px;" value="AHD">Ahmedabad</option><option style="padding-left: 10px;" value="AND">Anand</option><option style="padding-left: 10px;" value="ANKL">Ankleshwar</option><option style="padding-left: 10px;" value="BHAR">Bharuch</option><option style="padding-left: 10px;" value="BHNG">Bhavnagar</option><option style="padding-left: 10px;" value="DAMA">Daman</option><option style="padding-left: 10px;" value="GDHAM">Gandhidham</option><option style="padding-left: 10px;" value="GNAGAR">Gandhinagar</option><option style="padding-left: 10px;" value="HIMM">Himmatnagar</option><option style="padding-left: 10px;" value="IDAR">Idar</option><option style="padding-left: 10px;" value="JAM">Jamnagar</option><option style="padding-left: 10px;" value="JETP">Jetpur</option><option style="padding-left: 10px;" value="JUGH">Junagadh</option><option style="padding-left: 10px;" value="KTCH">Kutch</option><option style="padding-left: 10px;" value="NADI">Nadiad</option><option style="padding-left: 10px;" value="NVSR">Navsari</option><option style="padding-left: 10px;" value="PALN">Palanpur</option><option style="padding-left: 10px;" value="PATA">Patan</option><option style="padding-left: 10px;" value="RAJK">Rajkot</option><option style="padding-left: 10px;" value="SANA">Sanand</option><option style="padding-left: 10px;" value="SILV">Silvassa</option><option style="padding-left: 10px;" value="SURT">Surat</option><option style="padding-left: 10px;" value="VAD">Vadodara</option><option style="padding-left: 10px;" value="VLSD">Valsad</option><option style="padding-left: 10px;" value="VAPI">Vapi</option></optgroup><optgroup label="Haryana"><option style="padding-left: 10px;" value="AMB">Ambala</option><option style="padding-left: 10px;" value="DHRA">Dharuhera</option><option style="padding-left: 10px;" value="FARI">Faridabad</option><option style="padding-left: 10px;" value="HISR">Hisar</option><option style="padding-left: 10px;" value="JHAJ">Jhajjar</option><option style="padding-left: 10px;" value="JIND">Jind</option><option style="padding-left: 10px;" value="KAIT">Kaithal</option><option style="padding-left: 10px;" value="KARN">Karnal</option><option style="padding-left: 10px;" value="KUND">Kundli</option><option style="padding-left: 10px;" value="KURU">Kurukshetra</option><option style="padding-left: 10px;" value="PNCH">Panchkula</option><option style="padding-left: 10px;" value="PAN">Panipat</option><option style="padding-left: 10px;" value="REWA">Rewari</option><option style="padding-left: 10px;" value="ROH">Rohtak</option><option style="padding-left: 10px;" value="SISA">Sirsa</option><option style="padding-left: 10px;" value="RAIH">Sonipat</option><option style="padding-left: 10px;" value="YAMU">Yamunanagar</option></optgroup><optgroup label="Himachal Pradesh"><option style="padding-left: 10px;" value="BADD">Baddi</option><option style="padding-left: 10px;" value="DMSL">Dharamsala</option><option style="padding-left: 10px;" value="HAMI">Hamirpur (HP)</option><option style="padding-left: 10px;" value="KANG">Kangra</option><option style="padding-left: 10px;" value="KULU">Kullu</option><option style="padding-left: 10px;" value="MANA">Manali</option><option style="padding-left: 10px;" value="SMLA">Shimla</option><option style="padding-left: 10px;" value="SCO">Solan</option></optgroup><optgroup label="Jammu and Kashmir"><option style="padding-left: 10px;" value="JAMM">Jammu</option><option style="padding-left: 10px;" value="KATH">Kathua</option><option style="padding-left: 10px;" value="KATR">Katra</option><option style="padding-left: 10px;" value="LEHA">Ladakh</option></optgroup><optgroup label="Jharkhand"><option style="padding-left: 10px;" value="BOKA">Bokaro</option><option style="padding-left: 10px;" value="DOGH">Deoghar</option><option style="padding-left: 10px;" value="DHAN">Dhanbad(Jharkhand)</option><option style="padding-left: 10px;" value="JMDP">Jamshedpur</option><option style="padding-left: 10px;" value="RANC">Ranchi</option></optgroup><optgroup label="Karnataka"><option style="padding-left: 10px;" value="BELG">Belgaum</option><option style="padding-left: 10px;" value="BANG">Bengaluru</option><option style="padding-left: 10px;" value="BIDR">Bidar</option><option style="padding-left: 10px;" value="COOR">Coorg</option><option style="padding-left: 10px;" value="DAVA">Davangere</option><option style="padding-left: 10px;" value="GULB">Gulbarga</option><option style="padding-left: 10px;" value="HUBL">Hubli</option><option style="padding-left: 10px;" value="KWAR">Karwar</option><option style="padding-left: 10px;" value="MLR">Mangalore</option><option style="padding-left: 10px;" value="MANI">Manipal</option><option style="padding-left: 10px;" value="MYS">Mysore</option><option style="padding-left: 10px;" value="TUMK">Tumkur</option><option style="padding-left: 10px;" value="UDUP">Udupi</option></optgroup><optgroup label="Kerala"><option style="padding-left: 10px;" value="99">Alappuzha</option><option style="padding-left: 10px;" value="ANHL">Anchal</option><option style="padding-left: 10px;" value="ANGA">Angamaly</option><option style="padding-left: 10px;" value="ERNK">Ernakulam</option><option style="padding-left: 10px;" value="KANN">Kannur</option><option style="padding-left: 10px;" value="KARG">Karunagapally</option><option style="padding-left: 10px;" value="KOCH">Kochi</option><option style="padding-left: 10px;" value="KOLM">Kollam</option><option style="padding-left: 10px;" value="KTYM">Kottayam</option><option style="padding-left: 10px;" value="MVLR">Mavellikara</option><option style="padding-left: 10px;" value="THAL">Thalayolaparambu</option><option style="padding-left: 10px;" value="THSR">Thrissur</option><option style="padding-left: 10px;" value="TRIV">Trivandrum</option></optgroup><optgroup label="Madhya Pradesh"><option style="padding-left: 10px;" value="BLGT">Balaghat</option><option style="padding-left: 10px;" value="BETU">Betul</option><option style="padding-left: 10px;" value="BHOP">Bhopal</option><option style="padding-left: 10px;" value="CHIN">Chhindwara</option><option style="padding-left: 10px;" value="DEWAS">Dewas</option><option style="padding-left: 10px;" value="GWAL">Gwalior</option><option style="padding-left: 10px;" value="HRDA">Harda</option><option style="padding-left: 10px;" value="IND">Indore</option><option style="padding-left: 10px;" value="JABL">Jabalpur</option><option style="padding-left: 10px;" value="KHDW">Khandwa</option><option style="padding-left: 10px;" value="NMCH">Neemuch</option><option style="padding-left: 10px;" value="RATL">Ratlam</option><option style="padding-left: 10px;" value="SAMP">Sagar</option><option style="padding-left: 10px;" value="SARN">Sarni</option><option style="padding-left: 10px;" value="SEHO">Sehore</option><option style="padding-left: 10px;" value="SEON">Seoni</option><option style="padding-left: 10px;" value="SHIV">Shivpuri</option><option style="padding-left: 10px;" value="UJJN">Ujjain</option></optgroup><optgroup label="Maharashtra"><option style="padding-left: 10px;" value="AHMED">Ahmednagar</option><option style="padding-left: 10px;" value="AKOL">Akola</option><option style="padding-left: 10px;" value="ALBG">Alibaug</option><option style="padding-left: 10px;" value="AMRA">Amravati</option><option style="padding-left: 10px;" value="AURA">Aurangabad</option><option style="padding-left: 10px;" value="BARA">Baramati</option><option style="padding-left: 10px;" value="BEED">Beed</option><option style="padding-left: 10px;" value="BHIW">Bhiwandi</option><option style="padding-left: 10px;" value="BOIS">Boisar</option><option style="padding-left: 10px;" value="BULD">Buldana</option><option style="padding-left: 10px;" value="CHAN">Chandrapur</option><option style="padding-left: 10px;" value="DHLE">Dhule</option><option style="padding-left: 10px;" value="DHUL">Dhulia</option><option style="padding-left: 10px;" value="INDA">Indapur</option><option style="padding-left: 10px;" value="JALG">Jalgaon</option><option style="padding-left: 10px;" value="KHED">Khed</option><option style="padding-left: 10px;" value="KHOP">Khopoli</option><option style="padding-left: 10px;" value="KOLH">Kolhapur</option><option style="padding-left: 10px;" value="LAT">Latur</option><option style="padding-left: 10px;" value="LAVA">Lavasa</option><option style="padding-left: 10px;" value="LNVL">Lonavala</option><option style="padding-left: 10px;" value="MHAD">Mahad</option><option style="padding-left: 10px;" value="MALE">Malegaon</option><option style="padding-left: 10px;" value="MUMBAI">Mumbai</option><option style="padding-left: 10px;" value="NAGP">Nagpur</option><option style="padding-left: 10px;" value="NAND">Nanded</option><option style="padding-left: 10px;" value="NASK">Nashik</option><option style="padding-left: 10px;" value="PALG">Palghar</option><option style="padding-left: 10px;" value="PANC">Panchgani</option><option style="padding-left: 10px;" value="PARB">Parbhani</option><option style="padding-left: 10px;" value="PEN">Pen</option><option style="padding-left: 10px;" value="PHAL">Phaltan</option><option style="padding-left: 10px;" value="PIMP">Pimpri</option><option style="padding-left: 10px;" value="PUNE">Pune</option><option style="padding-left: 10px;" value="RAI">Raigad</option><option style="padding-left: 10px;" value="SANG">Sangli</option><option style="padding-left: 10px;" value="SATA">Satara</option><option style="padding-left: 10px;" value="SOLA">Solapur</option><option style="padding-left: 10px;" value="TMB">Tembhode</option><option style="padding-left: 10px;" value="UDGR">Udgir</option><option style="padding-left: 10px;" value="WARD">Wardha</option></optgroup><optgroup label="Meghalaya"><option style="padding-left: 10px;" value="RNG">Rongjeng</option><option style="padding-left: 10px;" value="SHLG">Shillong</option></optgroup><optgroup label="Nagaland"><option style="padding-left: 10px;" value="DMPR">Dimapur</option></optgroup><optgroup label="NCR"><option style="padding-left: 10px;" value="NCR">National Capital Region (NCR)</option></optgroup><optgroup label="Orissa"><option style="padding-left: 10px;" value="BLSR">Balasore</option><option style="padding-left: 10px;" value="BHUB">Bhubaneshwar</option><option style="padding-left: 10px;" value="PURI">Puri</option><option style="padding-left: 10px;" value="SAMB">Sambalpur</option></optgroup><optgroup label="Punjab"><option style="padding-left: 10px;" value="ABOR">Abohar</option><option style="padding-left: 10px;" value="AHMG">Ahmedgarh</option><option style="padding-left: 10px;" value="AMRI">Amritsar</option><option style="padding-left: 10px;" value="BNGA">Banga</option><option style="padding-left: 10px;" value="BAR">Barnala</option><option style="padding-left: 10px;" value="BHAT">Bathinda</option><option style="padding-left: 10px;" value="CHD">Chandigarh</option><option style="padding-left: 10px;" value="HOSH">Hoshiarpur</option><option style="padding-left: 10px;" value="JALA">Jalandhar</option><option style="padding-left: 10px;" value="KHAN">Khanna</option><option style="padding-left: 10px;" value="KOTK">Kotkapura</option><option style="padding-left: 10px;" value="LUDH">Ludhiana</option><option style="padding-left: 10px;" value="MNSA">Mansa</option><option style="padding-left: 10px;" value="MOGA">Moga</option><option style="padding-left: 10px;" value="MOHL">Mohali</option><option style="padding-left: 10px;" value="NAVN">Nawanshahr</option><option style="padding-left: 10px;" value="PATH">Pathankot</option><option style="padding-left: 10px;" value="PATI">Patiala</option><option style="padding-left: 10px;" value="PATR">Patran</option><option style="padding-left: 10px;" value="RUPN">Rupnagar</option><option style="padding-left: 10px;" value="SANR">Sangrur</option><option style="padding-left: 10px;" value="ZIRK">Zirakpur</option></optgroup><optgroup label="Rajasthan"><option style="padding-left: 10px;" value="ABRD">Abu Road</option><option style="padding-left: 10px;" value="AJMER">Ajmer</option><option style="padding-left: 10px;" value="ALSR">Alsisar (Rajasthan)</option><option style="padding-left: 10px;" value="ALWR">Alwar</option><option style="padding-left: 10px;" value="BANS">Banswara</option><option style="padding-left: 10px;" value="BEAW">Beawar</option><option style="padding-left: 10px;" value="BHIL">Bhilwara</option><option style="padding-left: 10px;" value="BHWD">Bhiwadi</option><option style="padding-left: 10px;" value="BIK">Bikaner</option><option style="padding-left: 10px;" value="DAUS">Dausa</option><option style="padding-left: 10px;" value="JAIP">Jaipur</option><option style="padding-left: 10px;" value="JSMR">Jaisalmer</option><option style="padding-left: 10px;" value="JODH">Jodhpur</option><option style="padding-left: 10px;" value="KISH">Kishangarh</option><option style="padding-left: 10px;" value="KOTA">Kota</option><option style="padding-left: 10px;" value="NEEM">Neemrana</option><option style="padding-left: 10px;" value="SIKR">Sikar</option><option style="padding-left: 10px;" value="SRIG">Sri Ganganagar</option><option style="padding-left: 10px;" value="UDAI">Udaipur</option></optgroup><optgroup label="Singapore"><option style="padding-left: 10px;" value="SING">Singapore</option></optgroup><optgroup label="Tamil Nadu"><option style="padding-left: 10px;" value="ARIY">Ariyalur</option><option style="padding-left: 10px;" value="ARNI">Arni</option><option style="padding-left: 10px;" value="ARUP">Aruppukottai</option><option style="padding-left: 10px;" value="CHEN">Chennai</option><option style="padding-left: 10px;" value="COIM">Coimbatore</option><option style="padding-left: 10px;" value="CUDD">Cuddalore</option><option style="padding-left: 10px;" value="DHAR">Dharapuram</option><option style="padding-left: 10px;" value="DMPI">Dharmapuri</option><option style="padding-left: 10px;" value="DIND">Dindigul</option><option style="padding-left: 10px;" value="EROD">Erode</option><option style="padding-left: 10px;" value="KNPM">Kanchipuram</option><option style="padding-left: 10px;" value="KUMB">Kumbakonam</option><option style="padding-left: 10px;" value="MADU">Madurai</option><option style="padding-left: 10px;" value="MTPM">Mettuppalayam</option><option style="padding-left: 10px;" value="OOTY">Ooty</option><option style="padding-left: 10px;" value="POND">Pondicherry</option><option style="padding-left: 10px;" value="PUDH">Pudhukottai</option><option style="padding-left: 10px;" value="SALM">Salem</option><option style="padding-left: 10px;" value="SIV">Sivakasi</option><option style="padding-left: 10px;" value="TAJO">Tanjore</option><option style="padding-left: 10px;" value="TENK">Tenkasi</option><option style="padding-left: 10px;" value="TIRV">Tirunelveli</option><option style="padding-left: 10px;" value="TIRP">Tirupur</option><option style="padding-left: 10px;" value="TRIC">Trichy</option><option style="padding-left: 10px;" value="VELL">Vellore</option></optgroup><optgroup label="Telangana"><option style="padding-left: 10px;" value="ADIL">Adilabad</option><option style="padding-left: 10px;" value="AMAN">Amangal</option><option style="padding-left: 10px;" value="HYD">Hyderabad</option><option style="padding-left: 10px;" value="KARIM">Karimnagar</option><option style="padding-left: 10px;" value="KHAM">Khammam</option><option style="padding-left: 10px;" value="MRGD">Miryalaguda</option><option style="padding-left: 10px;" value="NIZA">Nizamabad</option><option style="padding-left: 10px;" value="PEDA">Peddapalli</option><option style="padding-left: 10px;" value="POCH">Pochampally</option><option style="padding-left: 10px;" value="SDDP">Siddipet</option><option style="padding-left: 10px;" value="SURY">Suryapet</option><option style="padding-left: 10px;" value="UPPA">Uppal</option><option style="padding-left: 10px;" value="WAR">Warangal</option></optgroup><optgroup label="Tripura "><option style="padding-left: 10px;" value="AGAR">Agartala</option></optgroup><optgroup label="Uttar Pradesh"><option style="padding-left: 10px;" value="AGRA">Agra</option><option style="padding-left: 10px;" value="ALI">Aligarh</option><option style="padding-left: 10px;" value="ALLH">Allahabad</option><option style="padding-left: 10px;" value="BARE">Bareilly</option><option style="padding-left: 10px;" value="BIJ">Bijnor</option><option style="padding-left: 10px;" value="GHAR">Ghazipur</option><option style="padding-left: 10px;" value="GRKP">Gorakhpur</option><option style="padding-left: 10px;" value="KANP">Kanpur</option><option style="padding-left: 10px;" value="LUCK">Lucknow</option><option style="padding-left: 10px;" value="MATH">Mathura</option><option style="padding-left: 10px;" value="MERT">Meerut</option><option style="padding-left: 10px;" value="MORA">Moradabad</option><option style="padding-left: 10px;" value="MUZ">Muzaffarnagar</option><option style="padding-left: 10px;" value="RENU">Renukoot</option><option style="padding-left: 10px;" value="SAHA">Saharanpur</option><option style="padding-left: 10px;" value="VAR">Varanasi</option></optgroup><optgroup label="Uttarakhand"><option style="padding-left: 10px;" value="DEH">Dehradun</option><option style="padding-left: 10px;" value="HRDR">Haridwar</option><option style="padding-left: 10px;" value="MSS">Mussoorie</option><option style="padding-left: 10px;" value="NAIN">Nainital</option><option style="padding-left: 10px;" value="RAMN">Ramnagar</option><option style="padding-left: 10px;" value="RKES">Rishikesh</option><option style="padding-left: 10px;" value="ROOR">Roorkee</option><option style="padding-left: 10px;" value="RUDP">Rudrapur</option></optgroup><optgroup label="West Bengal"><option style="padding-left: 10px;" value="ASANSOL">Asansol</option><option style="padding-left: 10px;" value="BEHA">Berhampore</option><option style="padding-left: 10px;" value="BLPR">Bolpur</option><option style="padding-left: 10px;" value="BURD">Burdwan</option><option style="padding-left: 10px;" value="COBE">Cooch Behar</option><option style="padding-left: 10px;" value="DARJ">Darjeeling</option><option style="padding-left: 10px;" value="DURGA">Durgapur</option><option style="padding-left: 10px;" value="HALD">Haldia</option><option style="padding-left: 10px;" value="HOOG">Hooghly</option><option style="padding-left: 10px;" value="HWRH">Howrah</option><option style="padding-left: 10px;" value="JPG">Jalpaiguri</option><option style="padding-left: 10px;" value="KOLK">Kolkata</option><option style="padding-left: 10px;" value="RANA">Ranaghat</option><option style="padding-left: 10px;" value="SILI">Siliguri</option></optgroup></select>
                    <div class="clearfix"></div>
                </div>
            </div>

            <script>
                $(document).ready(function() {
                    $('.popup-with-zoom-anim').magnificPopup({
                        type: 'inline',
                        fixedContentPos: false,
                        fixedBgPos: true,
                        overflowY: 'auto',
                        closeBtnInside: true,
                        preloader: false,
                        midClick: true,
                        removalDelay: 300,
                        mainClass: 'my-mfp-zoom-in'
                    });

                });
            </script>
            <!-- Large modal -->
            <button class="btn btn-primary" data-toggle="modal" data-target="#myModal">
                Login</button>
            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myLargeModalLabel"
                 aria-hidden="true">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <button type="button" class="close" data-dismiss="modal" aria-hidden="true">
                                &times;</button>
                            <h4 class="modal-title" id="myModalLabel">
                                Login/Registration</h4>
                        </div>
                        <div class="modal-body">
                            <div class="row">
                                <div class="col-md-8" style="border-right: 1px dotted #C2C2C2;padding-right: 30px;">
                                    <!-- Nav tabs -->
                                    <ul class="nav nav-tabs">
                                        <li class="active"><a href="#Login" data-toggle="tab">Login</a></li>
                                        <li><a href="#Registration" data-toggle="tab">Registration</a></li>
                                    </ul>
                                    <!-- Tab panes -->
                                    <div class="tab-content">
                                        <div class="tab-pane active" id="Login">
                                            <form role="form" class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="email" class="col-sm-2 control-label">
                                                        Email</label>
                                                    <div class="col-sm-10">
                                                        <input type="email" class="form-control" id="email1" placeholder="Email" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="exampleInputPassword1" class="col-sm-2 control-label">
                                                        Password</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="exampleInputPassword1" placeholder="password" />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-2">
                                                    </div>
                                                    <div class="col-sm-10">
                                                        <button type="submit" class="btn btn-primary btn-sm">
                                                            Submit</button>
                                                        <a href="javascript:;">Forgot your password?</a>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                        <div class="tab-pane" id="Registration">
                                            <form role="form" class="form-horizontal">
                                                <div class="form-group">
                                                    <label for="email" class="col-sm-2 control-label">
                                                        Name</label>
                                                    <div class="col-sm-10">
                                                        <div class="row">
                                                            <div class="col-md-3">
                                                                <select class="form-control">
                                                                    <option>Mr.</option>
                                                                    <option>Ms.</option>
                                                                    <option>Mrs.</option>
                                                                </select>
                                                            </div>
                                                            <div class="col-md-9">
                                                                <input type="text" class="form-control" placeholder="Name" />
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="email" class="col-sm-2 control-label">
                                                        Email</label>
                                                    <div class="col-sm-10">
                                                        <input type="email" class="form-control" id="email" placeholder="Email" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="mobile" class="col-sm-2 control-label">
                                                        Mobile</label>
                                                    <div class="col-sm-10">
                                                        <input type="email" class="form-control" id="mobile" placeholder="Mobile" />
                                                    </div>
                                                </div>
                                                <div class="form-group">
                                                    <label for="password" class="col-sm-2 control-label">
                                                        Password</label>
                                                    <div class="col-sm-10">
                                                        <input type="password" class="form-control" id="password" placeholder="Password" />
                                                    </div>
                                                </div>
                                                <div class="row">
                                                    <div class="col-sm-2">
                                                    </div>
                                                    <div class="col-sm-10">
                                                        <button type="button" class="btn btn-primary btn-sm">
                                                            Save & Continue</button>
                                                        <button type="button" class="btn btn-default btn-sm">
                                                            Cancel</button>
                                                    </div>
                                                </div>
                                            </form>
                                        </div>
                                    </div>
                                    <div id="OR" class="hidden-xs">
                                        OR</div>
                                </div>
                                <div class="col-md-4">
                                    <div class="row text-center sign-with">
                                        <div class="col-md-12">
                                            <h3 class="other-nw">
                                                Sign in with</h3>
                                        </div>
                                        <div class="col-md-12">
                                            <div class="btn-group btn-group-justified">
                                                <a href="#" class="btn btn-primary">Facebook</a> <a href="#" class="btn btn-danger">
                                                Google</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <script>
                $('#myModal').modal('no');
            </script>
        </div>
        <div class="clearfix"></div>
    </div>
</div>
<div class="container">
    <div class="main-content">
        <div class="header">
            <div class="logo">
                <a href="index.html"><h1>My Show</h1></a>
            </div>
            <div class="search">
                <div class="search2">
                    <form>
                        <i class="fa fa-search"></i>
                        <input type="text" value="Search for a movie, play, event, sport or more" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Search for a movie, play, event, sport or more';}"/>
                    </form>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
        <div class="bootstrap_container">
            <nav class="navbar navbar-default w3_megamenu" role="navigation">
                <div class="navbar-header">
                    <button type="button" data-toggle="collapse" data-target="#defaultmenu" class="navbar-toggle"><span class="icon-bar"></span><span class="icon-bar"></span><span class="icon-bar"></span></button><a href="index.html" class="navbar-brand"><i class="fa fa-home"></i></a>
                </div><!-- end navbar-header -->

                <div id="defaultmenu" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                        <li><a href="index.html">Home</a></li>
                        <!-- Mega Menu -->
                        <li class="dropdown w3_megamenu-fw active"><a href="movies.html" data-toggle="dropdown" class="dropdown-toggle">Movies<b class="caret"></b></a>
                            <ul class="dropdown-menu fullwidth">
                                <li class="w3_megamenu-content">
                                    <div class="row">
                                        <h5 class="movies-page">for movies page - <a href="movies.html">Click here</a> </h5>
                                        <div class="col-sm-4">
                                            <h3 class="title">Now Showing</h3>
                                            <ul class="mov_list">
                                                <li>99%</li>
                                                <li><a href="movie-single.html">Baahubali (Telugu) (U/A)</a></li>
                                            </ul>
                                            <ul class="mov_list">
                                                <li>100%</li>
                                                <li><a href="movie-single.html">Baahubali (Hindi) (U/A)</a></li>
                                            </ul>
                                            <ul class="mov_list">
                                                <li>98%</li>
                                                <li><a href="movie-single.html">Baahubali (English) (U/A)</a></li>
                                            </ul>
                                            <ul class="mov_list">
                                                <li>80%</li>
                                                <li><a href="movie-single.html">Jurassic World (3D Hindi) (U/A)</a></li>
                                            </ul>
                                            <ul class="mov_list">
                                                <li>65%</li>
                                                <li><a href="movie-single.html">Hamari Adhuri Kahani (U)</a></li>
                                            </ul>
                                        </div><!-- end col-4 -->
                                        <div class="col-sm-4 movie-dd">
                                            <h3 class="title">Next Change</h3>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                        </div><!-- end col-4 -->
                                        <div class="col-sm-4 movie-dd">
                                            <h3 class="title">Comming Soon</h3>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                            <p><a href="movie-single.html">ABCD 2 (3D) (4DX)</a><span>... (Tomorrow, 19 Jun)</span></p>
                                        </div><!-- end col-4 -->
                                        <div class="clearfix"></div>
                                        <div class="menu-featured-movies">
                                            <h3 class="title">Featured Trailers</h3>
                                            <div class="col-md-2 menu-featured-movies-img">
                                                <a href="movie-single.html"><img src="images/mf1.jpg" alt="" /></a>
                                            </div>
                                            <div class="col-md-2 menu-featured-movies-img">
                                                <a href="movie-single.html"><img src="images/mf2.jpg" alt="" /></a>
                                            </div>
                                            <div class="col-md-2 menu-featured-movies-img">
                                                <a href="movie-single.html"><img src="images/mf3.jpg" alt="" /></a>
                                            </div>
                                            <div class="col-md-2 menu-featured-movies-img">
                                                <a href="movie-single.html"><img src="images/mf3.jpg" alt="" /></a>
                                            </div>
                                            <div class="col-md-2 menu-featured-movies-img">
                                                <a href="movie-single.html"><img src="images/mf3.jpg" alt="" /></a>
                                            </div>
                                            <div class="col-md-2 menu-featured-movies-img">
                                                <a href="movie-single.html"><img src="images/mf3.jpg" alt="" /></a>
                                            </div>
                                            <div class="clearfix"></div>
                                        </div>
                                    </div><!-- end row -->
                                    <hr>

                                </li>
                            </ul>
                        </li>
                        <li class="dropdown w3_megamenu-fw"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Events<b class="caret"></b></a>
                            <ul class="dropdown-menu half">
                                <li class="w3_megamenu-content withdesc">
                                    <div class="row">
                                        <h5 class="movies-page">for events page - <a href="events.html">Click here</a> </h5>
                                        <h3 class="title">Featured Events</h3>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="events.html"><img src="images/f2.jpg" alt="" /></a>
                                                </div>
                                                <div class="e-buy-tickets">
                                                    <a href="event-payment.html">BUY TICKETS</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="events.html"><img src="images/f3.jpg" alt=""></a>
                                                </div>
                                                <div class="e-buy-tickets">
                                                    <a href="event-payment.html">BUY TICKETS</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="events.html"><img src="images/f4.jpg" alt="" /></a>
                                                </div>
                                                <div class="e-buy-tickets">
                                                    <a href="event-payment.html">BUY TICKETS</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="events.html"><img src="images/f1.jpg" alt="" /></a>
                                                </div>
                                                <div class="e-buy-tickets">
                                                    <a href="event-payment.html">BUY TICKETS</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown w3_megamenu-fw"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Plays<b class="caret"></b></a>
                            <ul class="dropdown-menu half3">
                                <li class="w3_megamenu-content withoutdesc">
                                    <div class="row">
                                        <h5 class="movies-page">for plays page - <a href="plays.html">Click here</a> </h5>
                                        <h3 class="title">Featured Events</h3>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="plays.html"><img src="images/f2.jpg" alt="" /></a>
                                                </div>
                                                <div class="e-buy-tickets">
                                                    <a href="event-payment.html">BUY TICKETS</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="plays.html"><img src="images/f3.jpg" alt=""></a>
                                                </div>
                                                <div class="e-buy-tickets">
                                                    <a href="event-payment.html">BUY TICKETS</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="plays.html"><img src="images/f4.jpg" alt="" /></a>
                                                </div>
                                                <div class="e-buy-tickets">
                                                    <a href="event-payment.html">BUY TICKETS</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="plays.html"><img src="images/f1.jpg" alt="" /></a>
                                                </div>
                                                <div class="e-buy-tickets">
                                                    <a href="event-payment.html">BUY TICKETS</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                        </li>
                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Sports<b class="caret"></b></a>
                            <ul class="dropdown-menu half3">
                                <li class="w3_megamenu-content withoutdesc">
                                    <div class="row">
                                        <h5 class="movies-page">for sports page - <a href="sports.html">Click here</a> </h5>
                                        <h3 class="title">Featured Sports</h3>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="sports.html"><img src="images/me1.jpg" alt="" /></a>
                                                    <a class="plays-go" href="#">Volleyball is a team sport</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="sports.html"><img src="images/me2.jpg" alt="" /></a>
                                                    <a class="plays-go" href="#">Chase, we're going to win races.</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="sports.html"><img src="images/me3.jpg" alt="" /></a>
                                                    <a class="plays-go" href="#">2015 The action or activity of skating on ice skates</a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-sm-3">
                                            <div class="e-movie">
                                                <div class="e-movie-img">
                                                    <a href="sports.html"><img src="images/me4.jpg" alt="" /></a>
                                                    <a class="plays-go" href="#">SVM Bowling & Gaming</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </li>
                            </ul>
                            <!-- end dropdown-menu -->
                        </li>
                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Pages<b class="caret"></b></a>
                            <ul class="dropdown-menu" role="menu">

                                <li><a href="about.html">About</a></li>
                                <li><a href="blog.html">Blog</a></li>
                                <li><a href="404.html">404</a></li>
                                <li><a href="contact.html">Contact us</a></li>
                                <li><a href="faq.html">FAQs</a></li>
                                <li><a href="about.html">Current Openings</a></li>
                                <li class="dropdown-submenu">
                                    <a href="#">News</a>
                                    <ul class="dropdown-menu">
                                        <li><a href="press.html">Press Release</a></li>
                                        <li><a href="public-relations.html">Public Relations</a></li>
                                        <li><a href="press.html">Press Coverage</a></li>
                                    </ul><!-- end dropdown-menu -->
                                </li><!-- end dropdown-submenu -->
                            </ul>
                            <!-- end dropdown-menu -->
                        </li><!-- end standard drop down -->
                        <!-- end dropdown w3_megamenu-fw -->
                    </ul><!-- end nav navbar-nav -->

                    <ul class="nav navbar-nav navbar-right">
                        <li class="dropdown"><a href="#" data-toggle="dropdown" class="dropdown-toggle">Contact Us<b class="caret"></b></a>
                            <ul class="dropdown-menu">
                                <li>
                                    <form id="contact1" action="#" name="contactform" method="post">
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input type="text" name="name" id="name1" class="form-control" placeholder="Name">
                                            <input type="text" name="email" id="email1" class="form-control" placeholder="Email">
                                        </div>
                                        <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12">
                                            <input type="text" name="phone" id="phone1" class="form-control" placeholder="Phone">
                                            <input type="text" name="subject" id="subject1" class="form-control" placeholder="Subject">
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <textarea class="form-control" name="comments" id="comments1" rows="6" placeholder="Your Message ..."></textarea>
                                        </div>
                                        <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
                                            <div class="pull-right">
                                                <input type="submit" value="SEND" id="submit1" class="btn btn-primary small">
                                            </div>
                                        </div>
                                        <div class="clearfix"></div>
                                    </form>
                                </li>
                            </ul>
                        </li>
                    </ul><!-- end nav navbar-nav navbar-right -->
                </div><!-- end #navbar-collapse-1 -->

            </nav><!-- end navbar navbar-default w3_megamenu -->
        </div><!-- end container -->

        <!-- AddThis Smart Layers END -->

        <div class="e-payment-section">
            <div class="col-md-8 payment-left">
                <div class="confirm-details">
                    <h3>Confirm Your Contact Details</h3>
                    <input type="text" value="Email address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email address';}">
                    <input type="text" value="Mobile number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Mobile number';}">
                    <p><i>Your number will be used for transaction confirmations & none of those painful promotions.</i></p>
                    <div class="c-lang">
                        <input type="checkbox" id="c1" name="cc">
                        <label class="lang">International number?</label>
                    </div>
                    <div class="c-lang">
                        <input type="checkbox" id="c1" name="cc">
                        <label class="lang">Keep me updated on the latest in entertainment, offers and much more</label>
                    </div>
                </div>
                <div class="payment-options">
                    <h3>payment-options</h3>
                    <div class="tabs-box">
                        <ul class="tabs-menu booking-menu">
                            <li><a href="#tab1">Debit/Credit Card</a></li>
                            <li><a href="#tab2">Credit Card EMI</a></li>
                            <li><a href="#tab3">Net Banking</a></li>
                            <li><a href="#tab4">PayPal</a></li>
                        </ul>
                        <div class="clearfix"> </div>
                        <div class="tab-grids event-tab-grids">
                            <div id="tab1" class="tab-grid">
                                <img src="images/payment.png" alt="payment" />
                                <input type="text" class="payment" value="Enter Your Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Card Number';}">
                                <input type="text" class="payment" value="Your Name On Card" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Your Name On Card';}">
                                <p>Expiry:<select class="month">
                                    <option value="">Select</option>
                                    <option value="01">Jan</option>
                                    <option value="02">Feb</option>
                                    <option value="03">Mar</option>
                                    <option value="04">Apr</option>
                                    <option value="05">May</option>
                                    <option value="06">Jun</option>
                                    <option value="07">Jul</option>
                                    <option value="08">Aug</option>
                                    <option value="09">Sep</option>
                                    <option value="10">Oct</option>
                                    <option value="11">Nov</option>
                                    <option value="12">Dec</option>
                                </select>
                                    <select class="year">
                                        <option value="">Year</option>
                                        <option value="2015">2015</option><option value="2016">2016</option><option value="2017">2017</option><option value="2018">2018</option><option value="2019">2019</option><option value="2020">2020</option><option value="2021">2021</option><option value="2022">2022</option><option value="2023">2023</option><option value="2024">2024</option><option value="2025">2025</option><option value="2026">2026</option><option value="2027">2027</option><option value="2028">2028</option><option value="2029">2029</option><option value="2030">2030</option><option value="2031">2031</option><option value="2032">2032</option><option value="2033">2033</option><option value="2034">2034</option><option value="2035">2035</option><option value="2036">2036</option><option value="2037">2037</option><option value="2038">2038</option><option value="2039">2039</option><option value="2040">2040</option><option value="2041">2041</option><option value="2042">2042</option><option value="2043">2043</option><option value="2044">2044</option><option value="2045">2045</option><option value="2046">2046</option><option value="2047">2047</option><option value="2048">2048</option><option value="2049">2049</option><option value="2050">2050</option><option value="2051">2051</option><option value="2052">2052</option><option value="2053">2053</option><option value="2054">2054</option><option value="2055">2055</option><option value="2056">2056</option><option value="2057">2057</option><option value="2058">2058</option><option value="2059">2059</option><option value="2060">2060</option><option value="2061">2061</option><option value="2062">2062</option><option value="2063">2063</option><option value="2064">2064</option><option value="2065">2065</option><option value="2066">2066</option><option value="2067">2067</option><option value="2068">2068</option><option value="2069">2069</option><option value="2070">2070</option><option value="2071">2071</option><option value="2072">2072</option><option value="2073">2073</option><option value="2074">2074</option></select>
                                    <input type="text" class="cvv" value="cvv" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'cvv';}">
                                </p>
                                <input type="submit" class="go-to-pay" value="make payment">
                            </div>
                            <div id="tab2" class="tab-grid">
                                <p>Currently available for ICICI Bank Credit Cardholders only.</p>
                                <input type="text" class="payment" value="Enter Your Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Enter Your Card Number';}">
                            </div>
                            <div id="tab3" class="tab-grid">
                                <h4>Net Banking</h4>
                                <div class="c-lang">
                                    <input type="checkbox" id="c1" name="cc">
                                    <label class="lang">ICICI bank</label>
                                </div>
                                <div class="c-lang">
                                    <input type="checkbox" id="c1" name="cc">
                                    <label class="lang">HDFC bank</label>
                                </div>
                                <div class="c-lang">
                                    <input type="checkbox" id="c1" name="cc">
                                    <label class="lang">SBI bank</label>
                                </div>
                                <div class="c-lang">
                                    <input type="checkbox" id="c1" name="cc">
                                    <label class="lang">IDBI bank</label>
                                </div>
                                <div class="c-lang">
                                    <input type="checkbox" id="c1" name="cc">
                                    <label class="lang">AXIS bank</label>
                                </div>
                                <div class="c-lang">
                                    <input type="checkbox" id="c1" name="cc">
                                    <label class="lang">KOTAK bank</label>
                                </div>
                                <p>Select Other Banks :<select class="year"><option value="">=== Other Banks ===</option><option value="ALB-NA">Allahabad Bank NetBanking</option><option value="ADB-NA">Andhra Bank</option><option value="BBK-NA">Bank of Bahrain and Kuwait NetBanking</option><option value="BBC-NA">Bank of Baroda Corporate NetBanking</option><option value="BBR-NA">Bank of Baroda Retail NetBanking</option><option value="BOI-NA">Bank of India NetBanking</option><option value="BOM-NA">Bank of Maharashtra NetBanking</option><option value="CSB-NA">Catholic Syrian Bank NetBanking</option><option value="CBI-NA">Central Bank of India</option><option value="CUB-NA">City Union Bank NetBanking</option><option value="CRP-NA">Corporation Bank</option><option value="DBK-NA">Deutsche Bank NetBanking</option><option value="DCB-NA">Development Credit Bank</option><option value="DC2-NA">Development Credit Bank - Corporate</option><option value="DLB-NA">Dhanlaxmi Bank NetBanking</option><option value="FBK-NA">Federal Bank NetBanking</option><option value="IDS-NA">Indusind Bank NetBanking</option><option value="IOB-NA">Indian Overseas Bank</option><option value="ING-NA">ING Vysya Bank (now Kotak)</option><option value="JKB-NA">Jammu and Kashmir NetBanking</option><option value="JSB-NA">Janata Sahakari Bank Limited</option><option value="KBL-NA">Karnataka Bank NetBanking</option><option value="KVB-NA">Karur Vysya Bank NetBanking</option><option value="LVR-NA">Lakshmi Vilas Bank NetBanking</option><option value="OBC-NA">Oriental Bank of Commerce NetBanking</option><option value="CPN-NA">PNB Corporate NetBanking</option><option value="PNB-NA">PNB NetBanking</option><option value="RSD-DIRECT">Rajasthan State Co-operative Bank-Debit Card</option><option value="RBS-NA">RBS (The Royal Bank of Scotland)</option><option value="SWB-NA">Saraswat Bank NetBanking</option><option value="SBJ-NA">SB Bikaner and Jaipur NetBanking</option><option value="SBH-NA">SB Hyderabad NetBanking</option><option value="SBM-NA">SB Mysore NetBanking</option><option value="SBT-NA">SB Travancore NetBanking</option><option value="SVC-NA">Shamrao Vitthal Co-operative Bank</option><option value="SIB-NA">South Indian Bank NetBanking</option><option value="SBP-NA">State Bank of Patiala NetBanking</option><option value="SYD-NA">Syndicate Bank NetBanking</option><option value="TNC-NA">Tamil Nadu State Co-operative Bank NetBanking</option><option value="UCO-NA">UCO Bank NetBanking</option><option value="UBI-NA">Union Bank NetBanking</option><option value="UNI-NA">United Bank of India NetBanking</option><option value="VJB-NA">Vijaya Bank NetBanking</option></select></p>
                            </div>
                            <div id="tab4" class="tab-grid">
                                <div class="row">
                                    <div class="col-md-6">
                                        <img class="pp-img" src="images/paypal.png" alt="Image Alternative text" title="Image Title">
                                        <p>Important: You will be redirected to PayPal's website to securely complete your payment.</p><a class="btn btn-primary">Checkout via Paypal</a>
                                    </div>
                                    <div class="col-md-6">
                                        <form class="cc-form">
                                            <div class="clearfix">
                                                <div class="form-group form-group-cc-number">
                                                    <label>Card Number</label>
                                                    <input class="form-control" placeholder="xxxx xxxx xxxx xxxx" type="text"><span class="cc-card-icon"></span>
                                                </div>
                                                <div class="form-group form-group-cc-cvc">
                                                    <label>CVV</label>
                                                    <input class="form-control" placeholder="xxxx" type="text">
                                                </div>
                                            </div>
                                            <div class="clearfix">
                                                <div class="form-group form-group-cc-name">
                                                    <label>Card Holder Name</label>
                                                    <input class="form-control" type="text">
                                                </div>
                                                <div class="form-group form-group-cc-date">
                                                    <label>Valid Thru</label>
                                                    <input class="form-control" placeholder="mm/yy" type="text">
                                                </div>
                                            </div>
                                            <div class="checkbox checkbox-small">
                                                <label>
                                                    <input class="i-check" type="checkbox" checked="">Add to My Cards</label>
                                            </div>
                                            <input class="btn btn-primary" type="submit" value="Proceed Payment">
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="clearfix"> </div>
                    </div>
                    <!--start-carrer-->
                    <!----- Comman-js-files ----->
                    <script>
                        $(document).ready(function() {
                            $("#tab2").hide();
                            $("#tab3").hide();
                            $("#tab4").hide();
                            $(".tabs-menu a").click(function(event){
                                event.preventDefault();
                                var tab=$(this).attr("href");
                                $(".tab-grid").not(tab).css("display","none");
                                $(tab).fadeIn("slow");
                            });
                        });
                    </script>

                </div>
            </div>
            <div class="col-md-4">
                <div class="payment-right">
                    <h3>Ticket Summary</h3>
                    <h6><span>Movie-Name:</span>Baahubali</h6>
                    <p><span>Theatre:</span> Lorem Ipsum </p>
                    <p><span>Lake:</span> Kerala</p>
                    <p><span>Location:</span> Trivandrum, Trivandrum</p>
                    <p><span>Date:</span> Sat, 8 Aug, 2015</p>
                    <p><span>Time:</span> 11:30am</p>
                    <p><span>Seat Info:</span> Balkani-s12(a)</p>
                    <p><span>Qty:</span> 4</p>
                    <h4><span>Total :</span>Rs. 150.00</h4>
                    <p>+ (Internet handling fees : Rs. 42.00 (incl. of Service Tax))</p>
                    <h5>Grand Total :Rs. 192.00</h5>
                </div>
                <div class="ticket-note">
                    <h3>Note:</h3>
                    <ol>
                        <li><p>Registrations/Tickets once booked cannot be exchanged, cancelled or refunded.</p></li>
                        <li><p>In case of Credit/Debit Card bookings, the Credit/Debit Card and Card holder must be present at the ticket counter while collecting the ticket(s).</p></li>
                    </ol>
                </div>
            </div>
            <div class="clearfix"></div>
        </div>
    </div>
    <div class="footer">
        <div class="col-md-3 footer-left">
            <div class="f-mov-list">
                <h4>Latest Movies</h4>
                <ul>
                    <li><a href="now-showing.html">Now Showing</a></li>
                    <li><a href="comming-soon.html">Coming Soon</a></li>
                    <li><a href="celebrities.html">Movie Celebrities</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="f-mov-list">
                <h4>Movie Reviews</h4>
                <ul>
                    <li><a href="404.html" target="target_blank">Entertainment News</a></li>
                    <li><a href="blog.html" target="target_blank">Rajeev Masand</a></li>
                    <li><a href="blog.html" target="target_blank">Film Reviews</a></li>
                    <li><a href="write-us.html" target="target_blank">Guest Blogging</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="f-mov-list">
                <h4>Movie Trailers</h4>
                <ul>
                    <li><a href="trailers-now-showing.html">Now Showing</a></li>
                    <li><a href="trailers-comming-soon.html">Coming Soon</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-md-3 footer-left">
            <div class="f-mov-list">
                <h4>Cinemas & Regions</h4>
                <ul>
                    <li><a href="regions.html">All Regions</a></li>
                    <li><a href="cinema-chain.html">Cinema Chains</a></li>
                    <li><a href="cinemas.html">Cinemas</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="f-mov-list">
                <h4>Movies by Language</h4>
                <ul>
                    <li><a href="movies.html">Hindi</a></li>
                    <li><a href="movies.html">English</a></li>
                    <li><a href="movies.html">Marathi</a></li>
                    <li><a href="movies.html">Bengali</a></li>
                    <li><a href="movies.html">Tamil</a></li>
                    <li><a href="movies.html">Telugu</a></li>
                    <li><a href="movies.html">Malayalam</a></li>
                    <li><a href="movies.html">Bhojpuri</a></li>
                    <li><a href="movies.html">Kannada</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-md-3 footer-left">
            <div class="f-mov-list">
                <h4>Exclusives</h4>
                <ul>
                    <li><a href="donate.html">Book A Smile</a></li>
                    <li><a href="vochers.html">Corporate Vouchers</a></li>
                    <li><a href="gift-cards.html">Gift Cards</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="f-mov-list">
                <h4>Help</h4>
                <ul>
                    <li><a href="site-map.html">Sitemap</a></li>
                    <li><a href="feed-back.html">Feedback</a></li>
                    <li><a href="faq.html">FAQs</a></li>
                    <li><a href="terms-and-conditions.html">Terms and Conditions</a></li>
                    <li><a href="privacy-policy.html">Privacy Policy</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="col-md-3 footer-left">
            <div class="f-mov-list">
                <h4>Movies by Genre</h4>
                <ul>
                    <li><a href="movies.html">Action</a></li>
                    <li><a href="movies.html">Romance</a></li>
                    <li><a href="movies.html">Comedy</a></li>
                    <li><a href="movies.html">Adult</a></li>
                    <li><a href="movies.html">Adventure</a></li>
                    <li><a href="movies.html">Classic</a></li>
                    <li><a href="movies.html">Crime</a></li>
                    <li><a href="movies.html">Drama</a></li>
                    <li><a href="movies.html">Family </a></li>
                    <li><a href="movies.html">Fantasy</a></li>
                    <li><a href="movies.html">Musical</a></li>
                    <li><a href="movies.html">Mystery</a></li>
                    <li><a href="movies.html">Suspense</a></li>
                    <li><a href="movies.html">Thriller</a></li>
                </ul>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
        <div class="col-md-12">
            <div class="footer-right">
                <div class="follow-us">
                    <h5 class="f-head">Follow us</h5>
                    <ul class="social-icons">
                        <li><a href="#"><i class="fa fa-facebook"></i></a></li>
                        <li><a href="#"><i class="fa fa-twitter"></i></a></li>
                        <li><a href="#"><i class="fa fa-youtube"></i></a></li>
                        <li><a href="#"><i class="fa fa-pinterest"></i></a></li>
                        <li><a href="#"><i class="fa fa-google-plus"></i></a></li>
                        <li><a href="#"><i class="fa fa-linkedin"></i></a></li>
                    </ul>
                    <div class="clearfix"></div>
                </div>
                <div class="subscribe">
                    <h5 class="f-head">Subscribe to our newsletters</h5>
                    <input type="text" class="text" value="Enter Email ID" onfocus="this.value = '';" onblur="if (this.value == 'Enter email...') {this.value = 'Enter Email ID';}">
                    <input type="submit" value="submit">
                    <div class="clearfix"></div>
                </div>
                <div class="recent_24by7">
                    <a class="play-icon popup-with-zoom-anim" href="#small-dialog" href="#"><i class="fa fa-calendar-o"></i>Resend Booking Confirmation</a>
                    <a href="support.html"><i class="fa fa-question"></i>24/7 Customer Care</a>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <div class="clearfix"></div>
    </div>
    <div class="clearfix"></div>
</div>
<div class="copy-rights text-center">
    <p>Copyright &copy; 2015.Company name All rights reserved.<a target="_blank" href="http://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p>
</div>
</div>
<script src="js/responsive-tabs.js"></script>
<script type="text/javascript">
    $( '#myTab a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
    } );

    $( '#moreTabs a' ).click( function ( e ) {
        e.preventDefault();
        $( this ).tab( 'show' );
    } );

    ( function( $ ) {
        // Test for making sure event are maintained
        $( '.js-alert-test' ).click( function () {
            alert( 'Button Clicked: Event was maintained' );
        } );
        fakewaffle.responsiveTabs( [ 'xs', 'sm' ] );
    } )( jQuery );

</script>
<script type="text/javascript">
    $(document).ready(function() {
        /*
        var defaults = {
              containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 1200,
            easingType: 'linear'
         };
        */

        $().UItoTop({ easingType: 'easeOutQuart' });

    });
</script>
<a href="#home" class="scroll" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
</body>
</html>