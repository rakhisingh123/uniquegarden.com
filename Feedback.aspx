<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Feedback.aspx.cs" Inherits="Feedback" %>

<script runat="server">

</script>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function validate() {
            var Name = document.getElementById('<%=Name.ClientID%>').value;
            var Mobile = document.getElementById('<%=Mobile.ClientID%>').value;
            var Feedback_text = document.getElementById('<%=Feedback_text.ClientID%>').value;
            if (Name == "") {
                alert("Please enter your name...");
                document.getElementById('<%=Name.ClientID%>').focus();
                return false;
            }
            else if (Mobile == "") {
                alert("Please enter your mobile...");
                document.getElementById('<%=Mobile.ClientID%>').focus();
                return false;
            }
            else if (Feedback_text == "") {
                alert("Please provide a feedback...");
                document.getElementById('<%=Feedback_text.ClientID%>').focus();
                return false;
            }
            else if (Name != "" && Mobile != "" && Feedback_text != "") {
                alert("Thanks for your valuable feedback...");
                document.getElementById('FeedbackForm').submit();
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
                    <h2 class="title" style="font-weight:bold;">Feedback</h2>
                    <p style="text-transform:none;">You can give us your valuable feedback.</p>
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
                                            <h2 class="title">Send us your feedback.</h2>
                                            <p>
                                                Please use this form to give us <br /> Feedback.
                                            </p>

                                            <div class="contact-form-wrapper">
                                                <div class="contact-form clearfix" style="display:block;">
                                                    
                                                        <div class="row">
                                                            <form runat="server" id="FeedbackForm">
                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <asp:TextBox ID="Name" placeholder="Your name" runat="server" type="text" class="form-control" required="required"></asp:TextBox>

                                                                    </div>
                                                                </div>

                                                                <div class="col-md-6">
                                                                    <div class="form-group">
                                                                        <asp:TextBox ID="Mobile" class="form-control" runat="server" type="mobile" placeholder="Your Mobile" required="required"></asp:TextBox>
                                                                    </div>
                                                                </div>

                                                          

                                                            <div class="col-md-12">
                                                                <div class="form-group">
                                                                    <%--                                                                    <textarea id="Feedback_text" class="form-control" placeholder="Your feedback" rows="10"></textarea>--%>
                                                                    <asp:TextBox ID="Feedback_text" placeholder="Leave your feedback here" Rows="5" runat="server" TextMode="MultiLine" ForeColor="Black"
                                                                        Width="100%"></asp:TextBox>

                                                                </div>
                                                            </div>

                                                             <div class="col-md-12 text-center">
                                                                <asp:Button id="submit" type="submit" class="btn btn-clean" runat="server" Text="Submit" OnClientClick="return validate();" OnClick="submit_Click"></asp:Button>

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




                            </div> <!--/contact-block-->
                        </div><!--col-sm-8-->
                    </div> <!--/row-->
                </div> <!--/container-->
            </div> <!--/contact-->
        </section>

        <div class="inc:_footer.html"></div>

    </div>
</asp:Content>


