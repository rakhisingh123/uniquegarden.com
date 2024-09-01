<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <%-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <!--Get your own code at fontawesome.com-->
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4638549725433695" crossorigin="anonymous"></script>
    <script src="//www.p2hp.com/tj.js"></script>
    <style>
        .facility-info .col p {
            text-align:justify;
            /*font-size:15px;*/
            color:black;
            font-weight:bold;
            letter-spacing:1px;
        }
        .title {
            font-weight:bold;
        }
        .col-6 {
            /*color:white;*/
            font-weight:bold;
        }
            .col-6 i {
                color:white;
            }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <section class="page">

        <!-- ===  Page header === -->

        <div class="page-header" style="background-image: url(assets/images/header-1.jpg)">
            <div class="container text-center">
                <h2 class="title">About Unique Garden </h2>
            </div>
        </div>

        <div class="facility">

            <div class="container">
                <div class="facility-gallery">
                    <div class="owl-slider owl-theme owl-slider-gallery">

                        <!-- === slide item === -->
                        
                        <div class="item" style="background-image: url(assets/images/stage/stage2.png)">
                            <img src="manyaImages/manya2.jpg" alt="flowers" />
                        </div>

                        <!-- === slide item === -->

                        <div class="item" style="background-image: url(manyaImages/servicesImages/flowering.jpg)">
                            <img src="manyaImages/servicesImages/flowering.jpg" alt="flowers" />
                        </div>

                    </div>
                    <!--/owl-slider-->

                </div>
                <!--/facilty-gallery-->

                <div class="row">
                    <div class="col-md-10 col-md-offset-1">

                        <!-- === facility-info === -->

                        <div class="facility-info">
                            <div class="row">
                                <div class="col">
                                    <h2 class="text-center" style="font-size:30px;font-weight:bold;color:maroon;">Welcome to Unique Garden, where elegance meets convenience in the heart of  Patna. </h2>
                                    <p class="card-text">We take pride in offering a premier venue for your special occasions, designed to exceed your expectations every time.
Established with a commitment to exceptional service and unmatched quality, Unique Garden has become a preferred choice for weddings, corporate events, and social gatherings. </p>
                                    <p>our venue boasts 7 Luxurious Rooms Facilities, 1 Mini Dormitory hall for 25 persons, Huge Parking that can facilitate more than 250 Cars, Special Package available for corporate sectors, Open air Party area (Lawn) 40000 Sq. Ft.
At Unique Garden, we understand that every event is unique.</p>
                                    <p> Whether you're planning a grand wedding reception, a corporate gala, or an intimate celebration, our experienced team is dedicated to ensuring that your event is flawless from start to finish. We offer customizable packages tailored to your specific needs, with options for catering, decor, and event planning services to suit every preference.</p>
                                    <p>Our commitment to excellence extends beyond our luxurious facilities. We pride ourselves on our attentive staff who are passionate about making your event a memorable success. From the initial consultation to the final toast, we are here to assist you every step of the way, ensuring a seamless and stress-free experience.</p>
                                    <p>Discover why Unique Garden is the perfect choice for your next event. Contact us today to schedule a tour and see firsthand how we can turn your vision into a spectacular reality.We look forward to welcoming you and creating unforgettable memories together.</p>
                                </div>

                            </div>
                        </div>

                        <!-- === facility-addons === -->

                        <div class="facility-addons">

                            <!-- === tab-panes === -->

                            <div class="tab-content">

                                <!-- ============ tab #1 ============ -->

                                <div role="tabpanel" class="tab-pane active" id="menus">
                                    <div class="content">

                                        <div class="cards">

                                            <div class="row">

                                                <!-- === item === -->

                                                <div class="col-xs-12 col-md-6">
                                                    <figure>
                                                        <figcaption style="background-image: url(assets/images/stage/stage3.png)">
                                                            <img src="assets/images/stage/stage3.png" alt="stage" />
                                                        </figcaption>
                                                    </figure>
                                                </div>

                                                <!-- === item === -->

                                                <div class="col-xs-6 col-md-6">
                                                    <figure>
                                                        <figcaption style="background-image: url(assets/images/mandap/mandap.jpg)">
                                                            <img src="assets/images/mandap/mandap.jpg" alt="mandap" />
                                                        </figcaption>
                                                    </figure>
                                                </div>

                                                <!-- === item === -->

                                                <div class="col-xs-6 col-md-6">
                                                    <figure>
                                                        <figcaption style="background-image: url(assets/images/mandap/mandap1.jpg)">
                                                            <img src="assets/images/mandap/mandap1.jpg" alt="mandap" />
                                                        </figcaption>
                                                    </figure>
                                                </div>

                                                <!-- === item === -->

                                                <div class="col-xs-6 col-md-6">
                                                    <figure>
                                                        <figcaption style="background-image: url(assets/images/entrygate.jpg)">
                                                            <img src="assets/images/entrygate.jpgg" alt="entrygate" />
                                                        </figcaption>
                                                    </figure>
                                                </div>

                                            </div>
                                            <!--/row-->

                                        </div>
                                        <!--/cards-->

                                    </div>
                                </div>


                            </div>
                            <!--/tab-content-->

                        </div>
                        <!--/facility-addons-->
                    </div>
                    <!--/col-md-10-->
                </div>
                <!--/row-->

            </div>
            <!--/container-->
        </div>



    </section>
    <div class="container">
        <div class="card">
            <div class="card-header text-light text-center" style="background-color: #336699; height: 100px; font-family: 'Niconne', cursive; font-size: 70px; padding: 10px;">
                Our Facilities
            </div>
            <div class="card-body" style="background-color: #99ccff; font-weight: 400;box-shadow: rgba(50, 50, 93, 0.25) 0px 6px 12px -2px, rgba(0, 0, 0, 0.3) 0px 3px 7px -3px;">
                <div class="row" style="margin-left: 100px;">
                    <div class="col-6">
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;10000 Sq<sup>2</sup> Banquet Hall with Centralised AC</p>
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;7<sup></sup> Luxurious Rooms </p>
                        <%--<p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;3000 Sq<sup>2</sup> ft Rangoli Banquet Hall with Centralised AC</p>--%>
                            
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;Deluxe Room </p>
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;Full Lighting Decoration</p>
                        <%--<p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;Water Fountain</p>--%>
                          <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;Silent Generator</p>
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;Wi-fi zone</p>

                    </div>
                    <div class="col-6">
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp; 40000 Sq. Ft<sup>2</sup> fOpen air Party area (Lawn).</p>
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;2500 Sq<sup>2</sup> ft Open Ground with attractive plants and garden</p>
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;10000 Sq<sup>2</sup> ft Parking facility</p>
                         <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;Special Package available for corporate sectors.</p>
                        <p><i class='fas fa-hand-point-right' style='font-size: 36px'></i>&emsp;CCTV Camera</p>
                      

                    </div> 

                </div>

            </div>
        </div>
    </div>
    <br />
</asp:Content>

