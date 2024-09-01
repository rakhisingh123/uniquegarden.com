<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN_PANEL/Admin.master" AutoEventWireup="true" CodeFile="Sliders.aspx.cs" Inherits="ADMIN_PANEL_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    
    <script type="text/javascript">
        function validate() {
            var FileUpload1 = document.getElementById('<%=Imagename.ClientID%>').value;
            if (FileUpload1 == "") {
                alert("Please Upload Images");
                document.getElementById('<%=Imagename.ClientID%>').focus();
                return false;
            }
        }
    </script>
    <script type="text/javascript">
        function confirm_Delete() {
            var r = confirm("Are you sure you want to Delete this Record!");
            if (r == true) {
                return true;
            }
            else {
                return false;
            }
        }
    </script>

    <div id="layoutSidenav_content">
        <main>
            <form id="form1" runat="server">
                <div class="card mx-5 my-2" style="width:50%;">
                    <div class="card-header text-center bg-dark text-light">
                        Upload New Slider Image
                    </div>
                    <div class="card-body">
                        <div class="row g-3 align-items-center mx-3">
                            <div class="col-auto">
                                <label class="col-form-label fs-0">Upload New Image</label>
                            </div>
                            <div class="mb-3 input-group mb-0" style="width:50%;margin-top:2%;">
                                <asp:FileUpload ID="Imagename" runat="server" class="form-control" aria-describedby="UploadImage"></asp:FileUpload>
                                <asp:Button ID="UploadImage" runat="server" class="btn btn-outline-primary" Text="Upload" OnClientClick="return validate();" OnClick="UploadImage_Click"></asp:Button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="card mx-5 my-2" style="width:50%;">
                    <div class="card-header text-center bg-dark text-light">
                        Slider Images
                    </div>
                    <div class="card-body"">
                        <div class="row g-3 align-items-center mx-3">
                            <div class="row my-2">
                                <div class="col-xl-3 col-md-6 table">
                                    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="2" CellSpacing="5" OnRowCommand="GridView1_RowCommand" Width="100%">
                                        <HeaderStyle BackColor="#292929" ForeColor="White" />
                                        <EmptyDataRowStyle BorderStyle="Solid" />
                                        <Columns>
                                            
                                            <asp:TemplateField HeaderText="S No.">
                                                <ItemTemplate>
                                                    <%# Container.DisplayIndex + 1%>
                                                </ItemTemplate>
                                            </asp:TemplateField>

                                            <asp:TemplateField HeaderText="Photo" HeaderStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <asp:Image ID="Imagename" runat="server" ImageUrl='<%#Eval("FilePath", "./SliderImages/{0}") %>' Height="70px" Width="100px" Style="text-align:center" />
                                                </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            </asp:TemplateField>
                                            <asp:TemplateField HeaderText="Action" HeaderStyle-HorizontalAlign="Center">
                                                <ItemTemplate>
                                                    <a>
                                                        <asp:Button ID="Button1" type="button" class="btn btn-outline-danger" runat="server" Text="Remove" OnClientClick="return confirm_Delete();" CommandName="Remove" CommandArgument='<%# Eval("Id") %>' /></a>
                                                </ItemTemplate>

<HeaderStyle HorizontalAlign="Center"></HeaderStyle>
                                            </asp:TemplateField>
                                                
                                        </Columns>
                                        <RowStyle Height="25" ForeColor="#003399" BackColor="White" HorizontalAlign="Center" />
                                        <SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" HorizontalAlign="Center" />
                                        <HeaderStyle Height="30" BackColor="#0187BC" Font-Bold="true" ForeColor="White" HorizontalAlign="Center" />
                                        <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                                        <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                                    </asp:GridView>
                                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT * FROM [Slider]"></asp:SqlDataSource>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </main>
    </div>
</asp:Content>

