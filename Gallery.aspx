<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Gallery.aspx.cs" Inherits="Gallery" %>


<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
    .gals {
            width: 95%;
            height: 220px;
            margin-top:10px;
            margin-left: 1.75%;
            margin-right: 1.75%;
            margin-bottom: 15px;
            border: 2px solid #c0aa80;
            box-shadow: 0 4px 8px 0 rgba(0, 0, 0, 0.2), 0 6px 20px 0 rgba(0, 0, 0, 0.19);
            overflow: hidden;
        }

        .gals img
        {
            height:220px;
            width: 100%;
        }

        </style>
    <%-- <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">--%>
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
    <!--Get your own code at fontawesome.com-->
    <script async src="https://pagead2.googlesyndication.com/pagead/js/adsbygoogle.js?client=ca-pub-4638549725433695" crossorigin="anonymous"></script>
    <script src="//www.p2hp.com/tj.js"></script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <section class="page">

        <!-- ===  Page header === -->

        <div class="page-header" style="background-image: url(assets/images/header-1.jpg)">
            <div class="container text-center">
                <h2 class="title" style="font-weight:bold;">Photo Gallery</h2>
            </div>
        </div>

        <div class="facility">

            <div class="container">
                <div class="facility-gallery">
                    <div class="owl-slider owl-theme owl-slider-gallery">

                        <!-- === slide item === -->
                        
                        <div class="item" style="background-image: url(assets/images/uniquegarden/uniquegarden.jpg)">
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
        </div>

        <h2 class="text-center">Memorable Experiences Through Creative Event Management and Wedding Planning</h2>
        <div class="container-fluid" style="background-image:url(manyaImages/galleryImages/TEXTURE.jpg);">
            
        <div class="container" >



            
                <div class="row" id="gallery" runat="server">
                </div>
          



           <%-- <div class="row my-5">
                <div class="col-sm-3 mx-auto" style="border-style:dotted; border-color:tan;">
                    <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G1.jpeg'>
                                <img src="manyaImages/galleryImages/G1.jpeg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G2.jpg'>
                                <img src="manyaImages/galleryImages/G2.jpg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G3.jpeg'>
                                <img src="manyaImages/galleryImages/G3.jpeg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G4.jpg'>
                                <img src="manyaImages/galleryImages/G4.jpg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 mx-auto" style="border-style:dotted; border-color:tan;">
                   <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G5.jpeg'>
                                <img src="manyaImages/galleryImages/G5.jpeg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G6.jpeg'>
                                <img src="manyaImages/galleryImages/G6.jpeg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G7.jpg'>
                                <img src="manyaImages/galleryImages/G7.jpg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G8.jpg'>
                                <img src="manyaImages/galleryImages/G8.jpg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                </div>
                <div class="col-sm-3 mx-auto" style="border-style:dotted; border-color:tan;">
                    <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G9.jpeg'>
                                <img src="manyaImages/galleryImages/G9.jpeg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G10.jpg'>
                                <img src="manyaImages/galleryImages/G10.jpg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G11.jpg'>
                                <img src="manyaImages/galleryImages/G11.jpg" style="height: 100%" />
                            </a>
                        </div>
                    </div>
                     <div class="row" style="margin-top: 25PX; height: 250PX;">
                        <div class="gals">
                            <a href='manyaImages/galleryImages/G12.jpg'>
                                <img src="manyaImages/galleryImages/G12.jpg" style="height: 100%" />
                            </a>
                        </div>
                    </div>

            </div>

        </div>--%>
            </div>
            </div>
        <br />
        <br />


    </section>
</asp:Content>

