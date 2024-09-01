<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style>
         .text a{
            color:maroon;
            font-weight:bold;
            text-align:center;
          
        }
           .text .title a:hover {
                color:blue;
            }
        .item .text p {
            font-weight:bold;
            text-align:justify;
            
        }   
        figcaption {
            font-weight:bold;
        }
        .fa-star {
            color:yellow;
        }
      
         @media only screen and (min-width:993px) {
            .itemc{
                margin-top:120px;
            }
        }
        @media only screen and (max-width:992px) {
            .itemc{
                 margin-top:100px;
            }
        }
       
        @media only screen and (max-width:768px)
        {
            .itemc{
                margin-top:50px;
            }
            .why-c {
                color:#fff;
            }
        }
        @media only screen and (min-width:300px)
        {
            #slider{
                height:auto;
            }
        }
   
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <!-- ========================  Header content ======================== -->

    <section class="frontpage-slider" style="height:auto;">
        <div class="owl-slider owl-slider-header" Id="Sliders" runat="server">

           

        </div>

    </section>

        <!-- ======================== Booking ======================== -->

        <section class="booking booking-inner">

        </section>

        <!-- ========================  Services ======================== -->

        <section class="rooms rooms-widget" style="padding-top:15px;">

            <!-- === rooms header === -->

            <div class="section-header">
                <div class="container">
                    <h2 class="title">Our Ideal Services</h2>
                    <p style="font-weight:bold;">One of the Best Wedding Venues and Marriage Banquet Hall Services in Patna</p>
                </div>
            </div>

            <div class="container">
                <div class="owl-rooms owl-theme">

                    <div class="item" >
                        <article>
                            <div class="image">
                                <img src="assets/images/entrygate.jpg"  alt="entrygate" style="height:225px;" />
                            </div>
                            <div class="details">
                                <div class="text">
                                    <h3 class="title" style="color:maroon;"><a href="#">Wedding Planning in Patna</a></h3>
                                </div>
                            </div>
                        </article>
                    </div>

                    <div class="item">
                        <article>
                            <div class="image">
                               <img src="assets/images/catering/catering-services.jpg"  alt="catering" style="height:225px;" />
                            </div>
                            <div class="details">
                                <div class="text">
                                    <h3 class="title"><a href="#">Catering Services in Patna</a></h3>
                                </div>
                            </div>
                        </article>
                    </div>

                   <%-- <div class="item">
                        <article>
                            <div class="image">
                                <img src="manyaimages/servicesImages/swimming.jpg" style="height:225px;" alt="" />
                            </div>
                            <div class="details">
                                <div class="text">
                                    <h3 class="title"><a href="room-overview.html">Swimming Pool Facility</a></h3>
                                </div>
                            </div>
                        </article>
                    </div>--%>

                   <%-- <div class="item">
                        <article>
                            <div class="image">
                                <img src="manyaimages/servicesImages/ground.jpg" alt="" style="height:225px;" />
                            </div>
                            <div class="details">
                                <div class="text">
                                    <h3 class="title"><a href="room-overview.html">Flower Decorationing</a></h3>
                                </div>
                            </div>
                        </article>
                    </div>--%>

                    <div class="item">
                        <article>
                            <div class="image">
                              <img src="assets/images/mandap/mandap.jpg"  alt="mandap" style="height:225px;" />
                            </div>
                            <div class="details">
                                <div class="text">
                                    <h3 class="title"><a href="#"> Mandap Decorationing</a></h3>
                                </div>
                            </div>
                        </article>
                    </div>

                    <div class="item">
                        <article>
                            <div class="image">
                               <img src="assets/images/stage/stage1.jpg"  alt="stage" style="height:225px;" />
                            </div>
                            <div class="details">
                                <div class="text">
                                    <h3 class="title"><a href="#">Stage Decorationing</a></h3>
                                </div>
                            </div>
                        </article>
                    </div>
                   <%-- <div class="item">
                        <article>
                            <div class="image">
                                <img src="manyaimages/servicesImages/fountain.jpg" alt="" style="height:225px;" />
                            </div>
                            <div class="details">
                                <div class="text">
                                    <h3 class="title"><a href="room-overview.html">Attractive Fountain</a></h3>
                                </div>
                            </div>
                        </article>
                    </div>--%>
                </div>
            </div> 
        </section>

        <!-- ========================  Gallery ======================== -->

        <section class="stretcher-wrapper">

            <div class="section-header">
                <div class="container">
                    <h2 class="title">Photo Gallery</h2>
                    <p style="font-weight:bold;">
                        One of the Best Wedding Venues and Marriage Banquet Hall Services in Patna
                    </p>
                </div>
            </div>


            <ul class="stretcher">
              
                <li class="stretcher-item" style="background-image: url(assets/images/entrygate.jpg);">

                    <div class="stretcher-logo">
                        <div class="text">
                            <span class="text-intro h4">Entrance</span>
                        </div>
                    </div>
                    <figure>
                        <h4>Entrance Decoration</h4>
                        <figcaption>Light cum Flower Entrance</figcaption>
                    </figure>
<%--                    <a href="facility.html">Anchor link</a>--%>
                </li>

                <li class="stretcher-item" style="background-image: url(assets/images/stage/stage3.png);">
                    <div class="stretcher-logo">
                        <div class="text">
                            <span class="text-intro h4">Stage</span>
                        </div>
                    </div>
                    <figure>
                        <h4>Stage</h4>
                        <figcaption>Stage Decoration</figcaption>
                    </figure>
<%--                    <a href="facility.html">Anchor link</a>--%>
                </li>

                <li class="stretcher-item" style="background-image: url(assets/images/hall.png);">
                    <div class="stretcher-logo">
                        <div class="text">
                            <span class="text-intro h4">Hall</span>
                        </div>
                    </div>
                    <figure>
                        <h4>Hall</h4>
                        <figcaption>Event Hall</figcaption>
                    </figure>
<%--                    <a href="facility.html">Anchor link</a>--%>
                </li>
                
                <li class="stretcher-item" style="background-image: url(assets/images/mandap/mandap.jpg);">
                    <div class="stretcher-logo">
                        <div class="text">
                            <span class="text-intro h4">Mandap</span>
                        </div>
                    </div>
                    <figure>
                        <h4>Mandap</h4>
                        <figcaption>Rituals Mandap</figcaption>
                    </figure>
                    <%--<a href="facility.html">Anchor link</a>--%>
                </li>

                <li class="stretcher-item more">
                    <div class="more-icon">
                        <span data-title-show="Show more" data-title-hide="+"></span>
                    </div>
                    <a href="Gallery.aspx">Anchor link</a>
                </li>

            </ul>
        </section>

       <br />
    <br>
        <!-- ========================  Cards ======================== -->

<%--        <section class="cards">

           
        </section>--%>


        <!-- ======================== About ======================== -->

        <section class="image-blocks image-blocks-header">

            <div class="section-header" style="background-image:url(assets/images/header-1.jpg)">
                <div class="container">
                    <h2 class="title">Welcome to Unique Garden Patna</h2>
                    <p style="font-weight:bold;">Unique Garden in Patna </p>
                </div>
            </div>

            <div class="container">

                <!--item block -->
                <div class="blocks blocks-left">
                    <div class="item">
                        <div class="text">

                            <!-- === room info === -->
                            <!--<h2 class="title">Presidential <br />Suite</h2>-->
                            <p>
                               Welcome to Unique Garden, where elegance meets convenience in the heart of  Patna. We take pride in offering a premier venue for your special occasions, designed to exceed your expectations every time.
Established with a commitment to exceptional service and unmatched quality, Unique Garden has become a preferred choice for weddings, corporate events, and social gatherings. our venue boasts 7 Luxurious Rooms Facilities, 1 Mini Dormitory hall for 25 persons, Huge Parking that can facilitate more than 250 Cars, Special Package available for corporate sectors, Open air Party area (Lawn) 40000 Sq. Ft.

                            </p>

                            <!-- === room facilities === -->

                            <div class="room-facilities">

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-roomservice"></i> Room service</figcaption>
                                </figure>

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-king-bed"></i> Kingsize bed</figcaption>
                                </figure>

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-kitchen"></i> All inclusive</figcaption>
                                </figure>

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-compas"></i> 800 sqft lawn</figcaption>
                                </figure>

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-tv"></i> LED Screen</figcaption>
                                </figure>

                            </div>


                        </div><!--/text-->
                    </div> <!--/item-->
                    <div class="image" style="background-image: url(assets/images/stage/stage3.png)">
                        <img src="manyaimages/manya1.jpg" alt="stage" />
                    </div>
                </div>

                <!--item block -->
                <div class="blocks blocks-right">
                    <div class="item">
                        <div class="text">

                            <!-- === room info === -->
                            <p>
                               At Unique Garden, we understand that every event is unique. Whether you're planning a grand wedding reception, a corporate gala, or an intimate celebration, our experienced team is dedicated to ensuring that your event is flawless from start to finish. We offer customizable packages tailored to your specific needs, with options for catering, decor, and event planning services to suit every preference.
Our commitment to excellence extends beyond our luxurious facilities. We pride ourselves on our attentive staff who are passionate about making your event a memorable success. From the initial consultation to the final toast, we are here to assist you every step of the way, ensuring a seamless and stress-free experience.
Discover why Unique Garden is the perfect choice for your next event. Contact us today to schedule a tour and see firsthand how we can turn your vision into a spectacular reality.
We look forward to welcoming you and creating unforgettable memories together.

                            </p>

                            <!-- === room facilities === -->

                            <div class="room-facilities">

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-king-bed"></i> Kingsize bed</figcaption>
                                </figure>

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-roomservice"></i> Room service</figcaption>
                                </figure>

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-kitchen"></i> All inclusive</figcaption>
                                </figure>

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-compas"></i> 500 sqft hall</figcaption>
                                </figure>

                                <!--=== icon ===-->

                                <figure>
                                    <figcaption><i class="hotelicon hotelicon-tv"></i> LED Screen</figcaption>
                                </figure>

                            </div>


                        </div>
                    </div>
                    <div class="image" style="background-image: url(assets/images/stage/stage1.jpg)">
                        <img src="manyaimages/manya2.jpg" alt="" />
                    </div>
                </div>

            </div> <!--/container-->
        </section>





        <div class="container-fluid" style="background-color: #00486C;">
            <div class="container">
                <div class="row p-5" style="margin-top:-75px;">
                    <div class="col-sm-5 col-12">
                      <img src="assets/images/uniquegarden/uniquegarden1.jpg"  style="width:75%;" alt="uniquegarden" />
                    </div>
                    <div class="col-sm-7 col-12">
                        <h2 class="title why-c" style="font-weight:bold;">Why choose us</h2>
                        <p class="text-light" style="font-weight:bold;">Located in Rukanpura, Patna, Unique Garden offers a picturesque backdrop and luxurious amenities that set the stage for unforgettable events. Whether you're planning a local gathering or a destination celebration, our resort provides the perfect blend of sophistication, comfort, and convenience for you and your guests.</p>
                    </div>
                </div>
                </div>
            </div>


            <br />
            <br />

            <!-- ======================== Quotes ======================== -->

            <section class="quotes quotes-slider" style="background-image:url(assets/images/header-1.jpg)">
                <div class="container">

                    <!-- === Quotes header === -->

                    <div class="section-header">
                        <h2 class="title">Testimonials</h2>
                        <p>Take a look at the stories of some of the happy couples who have already experienced our fantastic wedding packages and come away with memories to last a lifetime</p>
                    </div>

                    <div class="row">


                        <div class="quote-carousel">

                            <!-- === quoute item === -->

                            <div class="quote">

                                <div class="text">
                                    <h4>by Rakhi Singh</h4>
                                    <p>My wedding turned out more perfect than I could have ever imagined. The perfect location for pre-wedding, we enjoy every part of the hotel for the our shooting. Thank you again for make our dream come true.</p>
                                </div>
                                <div class="more">
                                    <div class="rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                </div>
                            </div>

                            <!-- === quoute item === -->

                            <div class="quote">
                                <div class="text">
                                    <h4>by Swati</h4>
                                    <p>Just wanted to write and thank you so much for working so hard to provide us with a wonderful reception!!!! Everything went just as expected if not better. We would recommend the Unique Garden and yourself in a heartbeat!</p>
                                </div>
                                <div class="more">
                                    <div class="rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                </div>
                            </div>

                            <!-- === quoute item === -->

                            <div class="quote">
                                <div class="text">
                                    <h4>by Sulekha</h4>
                                    <p>Unique Garden team did a great job on our wedding day. They were all very professional. They provided personal service not only to my husband and I but, to all those who needed them during the event. Manya Premier Resort has been very accommodating and patient in giving me reminders and advices throughout the preparation of the wedding!</p>
                                </div>
                                <div class="more">
                                    <div class="rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                </div>
                            </div>

                            <!-- === quoute item === -->

                            <div class="quote">
                                <div class="text">
                                    <h4>by Nirbhay Kumar</h4>
                                    <p>Best Resort in Patna for marriage celebration</p>
                                </div>
                                <div class="more">
                                    <div class="rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                </div>
                            </div>

                            <!-- === quoute item === -->

                            <div class="quote">
                                <div class="text">
                                    <h4>by Vatsal</h4>
                                    <p>We would like to thank  Unique Garden  and company for a job well done during our wedding last year. They we’re very professional, very prompt, and they’ve been assisting all throughout from the preparation to the ceremony until the reception that’s why we had nothing else to worry.</p>
                                </div>
                                <div class="more">
                                    <div class="rating">
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                        <span class="fa fa-star"></span>
                                    </div>
                                </div>
                            </div>
                        </div> <!--/quote-carousel-->
                    </div> <!--/row-->
                </div> <!--/container-->
            </section>
</asp:Content>

