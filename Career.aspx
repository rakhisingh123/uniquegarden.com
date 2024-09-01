<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Career.aspx.cs" Inherits="Career" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <script type="text/javascript">
        function validate() {
            var Name = document.getElementById('<%=Name.ClientID%>').value;
            var Mobile = document.getElementById('<%=Mobile.ClientID%>').value;
            var Email = document.getElementById('<%=Email.ClientID%>').value;
            var Role = document.getElementById('<%=Role.ClientID%>').value;
            var Resume = document.getElementById('<%=Resume.ClientID%>').value;
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
            else if (Email == "") {
                alert("Please enter your email...");
                document.getElementById('<%=Email.ClientID%>').focus();
                return false;
            }
            else if (Role == "") {
                alert("Please enter your role...");
                document.getElementById('<%=Role.ClientID%>').focus();
                return false;
            }
            else if (Resume == "") {
                alert("Please upload your resume");
                document.getElementById('<%=Resume.ClientID%>').focus();
                return false;
            }
            else if (Name != "" && Mobile != "" && Feedback_text != "") {
                alert("Your query will be answered soon...");
                document.getElementById('CareerForm').submit();
                return false;
            }
        }
    </script>
     <script type="text/javascript">
         function num_validate(evt) {
             var charCode = (evt.which) ? evt.which : event.keyCode
             if (charCode > 31 && (charCode < 48 || charCode > 57)) {
                 alert("Please Enter Numbers only");
                 return false;
             }
             return true;
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
                    <h2 class="title" style="font-weight:bold;">Career</h2>
                    <p style="text-transform:none;">If you want to join us please feel free to drop your information here.</p>
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
                                            <h2 class="title">join Unique Garden </h2>
                                            
                                            <div class="contact-form-wrapper">

<%--                                                <a class="btn btn-clean open-form" data-text-open="Contact us via form" data-text-close="Close form">Contact us with this form.</a>--%>

                                                <div class="contact-form clearfix" style="display:block;">
                                                    <div>
                                                        <div class="row">
                                                            <form id="CareerForm" runat="server">
                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="Name" type="text" class="form-control" runat="server" required="required" placeholder="Your name"></asp:TextBox>

                                                                </div>
                                                            </div>


                                                            <div class="col-md-6">
                                                                <div class="form-group">
                                                                    <asp:TextBox ID="Mobile" type="text" class="form-control" placeholder="Your Mobile" runat="server" MaxLength="10" required="required"></asp:TextBox>

                                                                </div>
                                                            </div>

                                                            <div class="col-md-12">

                                                                <div class="form-group">
                                                                    <asp:TextBox ID="Email" type="email" class="form-control" runat="server" placeholder="Your Email" required="required"></asp:TextBox>

                                                                </div>
                                                            </div>

                                                             <div class="col-md-12">

                                                                <div class="form-group">
                                                                    <asp:TextBox ID="Role" type="text" class="form-control" runat="server" placeholder="Role Applying for" required="required"></asp:TextBox>
                                                                </div>
                                                            </div>
                                                            <div class="col-md-12">

                                                                <div class="form-group">
                                                                    <asp:FileUpload id="Resume" type="file" runat="server" class="form-control" placeholder="Add your Resume" required="required"></asp:FileUpload>
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

                              

                            </div> <!--/contact-block-->
                        </div><!--col-sm-8-->
                    </div> <!--/row-->
                </div> <!--/container-->
            </div> <!--/contact-->
        </section>

        <div class="inc:_footer.html"></div>

    </div>
</asp:Content>

