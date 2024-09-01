<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN_PANEL/Admin.master" AutoEventWireup="true" CodeFile="Enquiries.aspx.cs" Inherits="ADMIN_PANEL_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
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
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Enquiries</h1>
                    <div class="row">
                        <div class="col-xl-3 col-md-6 table">
                            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="2" CellSpacing="5" Width="100%" OnRowCommand="GridView1_RowCommand">
                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                    <asp:BoundField DataField="Query" HeaderText="Query" SortExpression="Query" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                    <asp:TemplateField headertext="Action">               
                                        <ItemTemplate>
                                            <a><asp:Button ID="Button1" type="button" class="btn btn-outline-danger" runat="server" Text="Remove" CommandName="Remove" OnClientClick="return confirm_Delete();" CommandArgument='<%# Eval("Id") %>'/></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>
                                <HeaderStyle BackColor="#363636" ForeColor="White" HorizontalAlign="Center" />
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:PyneSquareConnectionString %>" SelectCommand="SELECT * FROM [Enquiries]"></asp:SqlDataSource>

                        </div>
                    </div>

                </div>
            </form>
        </main>
    </div>
</asp:Content>

