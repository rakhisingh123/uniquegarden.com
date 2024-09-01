<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Contact.aspx.cs" Inherits="Contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
     <script type="text/javascript">
        function validate() {
            var Name = document.getElementById('<%=Name.ClientID%>').value;
            var Mobile = document.getElementById('<%=Mobile.ClientID%>').value;
            var Message = document.getElementById('<%=Message.ClientID%>').value;
            if (Name == "") {
                alert("Please enter your name...");
                document.getElementById('<%=Name.ClientID%>').focus();
                return false;
            }
            else if (Mobile == ""){
                alert("Please enter your mobile...");
                document.getElementById('<%=Mobile.ClientID%>').focus();
                return false;
            }
            
            else if (Message == "") {
                alert("Please write a message..");
                document.getElementById('<%=Message.ClientID%>').focus();
                return false;
            }
            else if (Name != "" && Mobile != "" && Feedback_text != "") {
                alert("Thankyou...");
                document.getElementById('Contactus').submit();
                return false;
            }
        }
     </script>
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
                    <h2 class="title" style="font-weight:bold;">Contact</h2>
                    <p style="text-transform:none;">If you want to contact us please feel free to drop in or contact us during our business hours.</p>
                </div>
            </div>

            <!-- ===  Contact === -->

            <div class="contact">

                <div class="container">

                    <!-- === Google map === -->
                     <div class="map" style="height:0px;"></div>
                    

                    <div class="row">

                        <div class="col-sm-10 col-sm-offset-1 col-md-10 col-md-offset-1">

                            <!-- === Contact block === -->

                            <div class="contact-block">

                                <!-- === Contact banner === -->

                                <div class="banner">
                                    <div class="row">
                                        <div class=" col-md-12 text-center">
                                            <h2 class="title">Send us your question.</h2>
                                            <p>
                                                Please use this form if you have any questions about us <br /> and we'll get back with you very soon.
                                            </p>

                                            <div class="contact-form-wrapper">

<%--                                                <a class="btn btn-clean open-form" data-text-open="Contact us via form" data-text-close="Close form">Contact us with this form.</a>--%>

                                                <div class="contact-form clearfix" style="display:block;">
                                                    <div>
                                                        <div class="row">
                                                            <form id="Contactus" runat="server">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="Name" type="text" class="form-control" runat="server" placeholder="Your name" required="required"></asp:TextBox>

                                                                </div>
                                                            </div>

                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="Mobile" type="text" class="form-control" placeholder="Your Mobile" required="required" runat="server"></asp:TextBox>

                                                                </div>
                                                            </div>


                                                            <%-- <div class="col-md-12">

                                                                <div class="form-group">
                                                                    <input type="text" value="" class="form-control" placeholder="Subject" required="required">
                                                                </div>
                                                            </div>--%>

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="Message" type="text" class="form-control" runat="server" placeholder="Leave your message here" rows="10" runat="server" TextMode="MultiLine" ForeColor="Black" Width="100%"></asp:TextBox>

                                                                </div>
                                                            </div>

                                                            <div class="col-md-12 text-center">
                                                                <asp:Button ID="submit" type="submit" class="btn btn-clean" runat="server" Text="Submit" OnClientClick="return validate();" OnClick="submit_Click"></asp:Button>

                                                            </div>
                                                                </form>
                                                        </div>
                                                       
                                                    </div>
                                                </div>
                                            </div>

                                        </div>
                                    </div>
                                </div>

                                <!-- === Contact info === -->

                                <div class="contact-info">
                                    <div class="row">
                                        <div class="col-sm-4">
                                            <figure class="text-center">
                                                <span class="icon icon-map-marker"></span>
                                                <figcaption>
                                                    <strong>Where are we?</strong>
                                                    <span>Pillar No.1 , Jagdeo Path, Bailey Road,<br /> Near Cafe Hideout, Bailey<br /> Opp. Indian Oil Petrol Pump,patna - 800014</span>
                                                </figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-sm-3">
                                            <figure class="text-center">
                                                <span class="icon icon-phone"></span>
                                                <figcaption>
                                                    <strong>Call us</strong>
                                                    <span>
                                                        <strong>M</strong> +91 9973931009 <br />
                                                        <strong>M</strong> +91 6124141611 <br />
                                                        <strong>M</strong> +91 9121582737
                                                    </span>
                                                </figcaption>
                                            </figure>
                                        </div>
                                        <div class="col-sm-5">
                                            <figure class="text-center">
                                                <span class="icon icon-envelope"></span>
                                                <figcaption>
                                                    <strong>Our mail & website</strong>
                                                    <span>
                                                        <strong>mail</strong> uniquegarden@gmail.com <br />
                                                        <strong>website</strong> www.uniquegarden.co.in
                                                    </span>
                                                </figcaption>
                                            </figure>
                                        </div>
                                    </div>
                                </div>

                                <div class="contact-info" style="background-color:transparent;">
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <%--<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3597.5234724555194!2d85.04345591541865!3d25.620746383701004!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ed5731d1d69461%3A0x3362f43e4f64fb9e!2sCafe%20Hideout!5e0!3m2!1sen!2sin!4v1671269652348!5m2!1sen!2sin" allowfullscreen="" class="maps"></iframe>--%>
                                       <iframe src="https://www.google.com/maps/embed?pb=!1m14!1m8!1m3!1d14391.928778795684!2d85.0714725!3d25.6055079!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x39ed57b2f2f32c3f%3A0xecf92aa4d2e99821!2sUnique%20Garden!5e0!3m2!1sen!2sin!4v1720158289946!5m2!1sen!2sin" allowfullscreen="" class="maps">></iframe> 
                                        </div>
                                        
                                    </div>
                                </div>


                            </div> <!--/contact-block-->
                        </div><!--col-sm-8-->
                    </div> <!--/row-->
                </div> <!--/container-->
            </div> <!--/contact-->
        </section>

        <div class="inc:_footer.html"></div>

    </div>
</asp:Content>

