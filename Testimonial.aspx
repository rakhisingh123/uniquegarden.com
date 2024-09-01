<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Testimonial.aspx.cs" Inherits="Testimonial" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        .contact .contact-block .banner {
            padding: 0px 0px;
        }

        @media only screen and (max-width: 992px) {
            .contact .contact-block {
                margin-top: 20px;
            }
        }
    </style>
    <link rel="stylesheet" href="testimonial.css" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="wrapper">

        <header>

            <div class="inc:_header.html"></div>

        </header>

        <!-- ======================== Contact ======================== -->

        <section class="page">

            <!-- ===  Page header === -->

            <div class="page-header" style="background-image: url(assets/images/header-1.jpg)">
                <div class="container">
                    <h2 class="title" style="font-weight:bold;">Testimonial</h2>
                    <p style="text-transform: none;font-weight:bold;">
                        Take a look at the stories of some of the happy couples who have already experienced our fantastic wedding packages and come away with memories to last a lifetime
                    </p>
                </div>
            </div>

            <!-- ===  Contact === -->

            <div class="contact">

                <div class="container">


                    <div class="row">

                        <div class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1">

                            <!-- === Contact block === -->

                            <div class="contact-block">

                                <!-- === Contact banner === -->

                                <div class="banner" style="background: none;">
                                    <div class="row">
                                        <div class=" col-md-12 text-center" style="background: none;">
                                            <h2 class="title" style="color: black;">Let's see what's our client say about us.</h2>
                                        </div>
                                        <div class="col-md-6 ">
                                            <figure class="snip1390" style="height:500px;">
                                           <img src="assets/images/photoicon.png"  alt="profile-sample3" class="profile" />
                                                <figcaption>
                                                    <h2>Rakhi Singh</h2>
                                                    <blockquote>Just wanted to write and thank you so much for working so hard to provide us with a wonderful reception!!!! Everything went just as expected if not better. We would recommend the Unique Garden and yourself in a heartbeat!</blockquote>
                                                </figcaption>
                                            </figure>
                                        </div>
                                        <%--<div class="col-md-6">
                                            <figure class="snip1390" style="height:500px;">
                                                <img src="manyaImages/testimonial/harveen.png" alt="profile-sample5" class="profile" />
                                                <figcaption>
                                                    <h2>Harveen Chopra</h2>

                                                    <blockquote>We celebrated our wedding at the Manya Premier Resort at the end of November 2015, our guests all had a wonderful time, the venue itself looked fantastic and the staff were friendly and helpful throughout. We had complete peace of mind that anything we needed. </blockquote>
                                                </figcaption>
                                            </figure>
                                        </div>--%>
                                       <%-- <div class="col-md-6 ">
                                            <figure class="snip1390" style="height:500px;">
                                                <img src="manyaImages/testimonial/testimonial.png" alt="profile-sample6" class="profile" />
                                                <figcaption>
                                                    <h2>Kajal Kumari</h2>
                                                    <blockquote>On May 19 my daughter's wedding reception was held at the Manya Premier Resort. After months of planning and details galore, the day came and went much too quickly. I am writing to praise all of your staff with whom we had contact but especially Manya Premier Resort.</blockquote>
                                                </figcaption>
                                            </figure>
                                        </div>--%>
                                        <div class="col-md-6">
                                            <figure class="snip1390" style="height:500px;">
                                                <img src="assets/images/photoicon.png"  alt="profile-sample3" class="profile" />
                                                <figcaption>
                                                    <h2>Swati</h2>
                                                    <blockquote>My wedding turned out more perfect than I could have ever imagined. The perfect location for pre-wedding, we enjoy every part of the hotel for the our shooting. Thank you again for make our dream come true.</blockquote>
                                                </figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-md-6">
                                            <figure class="snip1390" style="height:500px;">
                                               <img src="assets/images/photoicon.png"   alt="profile-sample5" class="profile" />
                                                <figcaption>
                                                    <h2>Sulekha</h2>
                                                    <blockquote> Unique Garden team did a great job on our wedding day. They were all very professional. They provided personal service not only to my husband and I but, to all those who needed them during the event. Manya Premier Resort has been very accommodating and patient in giving me reminders and advices throughout the preparation of the wedding! !!! </blockquote>
                                                </figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-md-6">
                                            <figure class="snip1390" style="height:500px;">
                                            <img src="assets/images/photoicon.png" alt="profile-sample6" class="profile" />
                                                <figcaption>
                                                    <h2>Vatsal</h2>
                                                    <blockquote>We would like to thank  Unique Garden  and company for a job well done during our wedding last year. They we’re very professional, very prompt, and they’ve been assisting all throughout from the preparation to the ceremony until the reception that’s why we had nothing else to worry.</blockquote>
                                                </figcaption>
                                            </figure>
                                        </div>

                                    </div>
                                </div>
                                    </div>
                            </div>

                            <!-- === Contact info === -->




                        </div>
                        <!--/contact-block-->
                    </div>
                    <!--col-sm-8-->
                </div>
                <!--/row-->
            </div>
            <!--/container-->
    </div>
    <!--/contact-->
    </section>

        <div class="inc:_footer.html"></div>

    </div>
    <script>
        /* Demo purposes only */
        $(".hover").mouseleave(
            function () {
                $(this).removeClass("hover");
            }
        );
    </script>
</asp:Content>

