<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Video.aspx.cs" Inherits="Video" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <style>
        .maps{
            width:100%;
            height:250px;
            margin-left:0px;
            margin-right:0px;
            margin-bottom:0px;
            border:2px solid #002639;
            border-radius:2px;

        }
        @media only screen and (min-width:992px) {
            .contact{
                margin-top:180px;
            }
        }
        @media only screen and (max-width: 992px) {
            .contact .contact-block {
                margin-top:20px;
            }
}
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="wrapper">

        <header>

            <div class="inc:_header.html"></div>

        </header>

        <!-- ======================== Contact ======================== -->

        <section class="page">

            <!-- ===  Page header === -->

            <div class="page-header" style="background-image:url(assets/images/header-1.jpg)">
                <div class="container">
                    <h2 class="title">Videos</h2>
                    <p style="text-transform:none;">See our video gallery</p>
                </div>
            </div>

            <!-- ===  Contact === -->

            <div class="contact">

                <div class="container">

                    <!-- === Google map === -->
                     <div class="map" style="height:0px;"></div>
               

                    <div class="row">
                        <div class="col-sm-6">
                            <iframe style="width:95%;margin-left:2.5%;height:320px;margin-right:2.5%;border-radius:15px;border:2px solid #002639;" src="https://www.youtube.com/embed/sT-gba9S5LU?si=TKmfEXm-E3N44iix" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                          <%--  <iframe style="width:95%;margin-left:2.5%;height:320px;margin-right:2.5%;border-radius:15px;border:2px solid #002639;" src="https://www.youtube.com/embed/Mqa0A4IfzJE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>--%>
                            
                        </div>

                        <div class="col-sm-6">
                            <iframe style="width:95%;margin-left:2.5%;height:320px;margin-right:2.5%;border-radius:15px;border:2px solid #002639;" src="https://www.youtube.com/embed/8VWssi9ZP3Q?si=aMJjCVEROVppebi0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" referrerpolicy="strict-origin-when-cross-origin" allowfullscreen></iframe>
                            <%--<iframe style="width:95%;margin-left:2.5%;height:320px;margin-right:2.5%;border-radius:15px;border:2px solid #002639;" src="https://www.youtube.com/embed/Mqa0A4IfzJE" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                            --%>
                        </div>
                        <%--<div class="col-sm-6">
                            <iframe style="width:95%;margin-left:2.5%;height:320px;margin-right:2.5%;border-radius:15px;border:2px solid #002639;" src="https://www.youtube.com/embed/r_bYJVVKOWY" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
                           
                        </div>--%>
                       
                    </div> <!--/row-->
                </div> <!--/container-->
            </div> <!--/contact-->
        </section>

        <div class="inc:_footer.html"></div>

    </div>
</asp:Content>

