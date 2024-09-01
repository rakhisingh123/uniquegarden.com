<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Banquets.aspx.cs" Inherits="Banquets" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Niconne&display=swap" rel="stylesheet">
    <style>
        .col-9 p{
            font-weight:bold;
            text-align:justify;
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="page">

        <!-- ===  Page header === -->

        <div class="page-header" style="background-image: url(assets/images/header-1.jpg)">
            <div class="container text-center">
                <h2 class="title" style="font-weight:bold;">Banquet Hall and Catering Services in Patna</h2>
            </div>
        </div>

        <div class="facility">

            <div class="container">
                <div class="facility-gallery">
                    <div class="owl-slider owl-theme owl-slider-gallery">

                        <!-- === slide item === -->
                      
                        <div class="item" style="background-image: url(assets/images/stage/stage3.png)">
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
            </div>
            <div class="container">
                <h2 class="text-center" style="font-weight:bold;margin-top:10px;">Our Banquet Hall Services and Facility</h2>
                <div class="row">
                    <div class="col-9">
                       <p> Welcome to the exquisite Lavish Banquet Halls at Unique Garden, where elegance meets exceptional service in the heart of
                        Patna. Whether you’re planning a grand wedding reception, a corporate gala, or a milestone celebration, our versatile banquet
                        facilities are designed to exceed your expectations.
Our resort boasts 7 stunning banquet halls, each offering a unique ambiance and flexible configurations to accommodate events of various sizes and
                        styles. From intimate gatherings to large-scale receptions, our venues can be customized to suit your specific needs, ensuring
                        a memorable experience for you and your guests.
.</p>
                    </div>
                    <div class="col-3" style="height: 250px;">
                       <img src="assets/images/uniquegarden/uniquegarden3.jpg"  class="img-thumbnail rounded float-end" alt="uniquegarden" style="height: 250px;">
                    </div>
                </div>
                <div class="row">
                    <div class="col-3">
                       <img src="assets/images/photo.jpg" class="img-thumbnail rounded float-start" alt="photo">
                    </div>
                    <div class="col-9">
                      <p> At Unique Garden, we understand that every event is special. Our team is committed to providing personalized service to ensure your event is seamless and unforgettable. From initial consultation to the final toast, we are here to assist you every step of the way, offering a range of services including catering, audiovisual equipment, and event coordination.
Discover the perfect venue for your next event at Unique Garden Lavish Banquet Halls. Contact us today to schedule a tour and begin planning an extraordinary event experience with us.</p>

                    </div>
                </div>
                <br />
              <p style="font-weight:bold;text-align:justify">  Your guests will remember you warmly and thank you not only for an enjoyable time at the wedding, but also for a comfortable and pleasant stay. We provide and manage total Banquet hall services to make the entire wedding go smoothly for our clients and make their guests feel comfortable and at home.</p>
                
            </div>



        </div>
    </section>

    <br />
</asp:Content>

