<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN_PANEL/Admin.master" AutoEventWireup="true" CodeFile="Messages.aspx.cs" Inherits="ADMIN_PANEL_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <style>
            th,td{
            border:1px  solid gray;
            padding:1rem;
        }
        th {
            background-color:#99ccff;
        }
    </style>
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
                    <h1 class="mt-4">Messages</h1>
                    <div class="row">
                        <div class="col-xl-3 col-md-6 table">
                             <div class="col-sm-2" style="display:flex;flex-direction:row;margin-right:20px; margin-top:1%;">
                <%--<asp:Button id="btnExporttoExcel" runat="server"  OnClick="btnExporttoExcel_Click" Style="width: 200px;margin-bottom:25px;" Text="Export to Excel" class="btn btn-outline-success" />--%>
              
          </div>
         <asp:Label ID="lblRecord" runat="server" />
                           <%-- <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="SqlDataSource1" EnableModelValidation="True" CellPadding="2" CellSpacing="5" Width="100%" OnRowCommand="GridView1_RowCommand">

                                <Columns>
                                    <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
                                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                                    <asp:BoundField DataField="Mobile" HeaderText="Mobile" SortExpression="Mobile" />
                                    <asp:BoundField DataField="Message" HeaderText="Message" SortExpression="Message" />
                                    <asp:BoundField DataField="Date" HeaderText="Date" SortExpression="Date" />
                                    <asp:TemplateField headertext="Action">               
                                        <ItemTemplate>
                                            <a><asp:Button ID="Button1" type="button" class="btn btn-outline-danger" runat="server" Text="Remove" CommandName="Remove" OnClientClick="return confirm_Delete();" CommandArgument='<%# Eval("Id") %>'/></a>
                                        </ItemTemplate>
                                    </asp:TemplateField>
                                </Columns>

                                <HeaderStyle BackColor="#363636" ForeColor="White" />
                            </asp:GridView>

                            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:mycon %>" SelectCommand="SELECT * FROM [Message]"></asp:SqlDataSource>--%>
                             <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false" DataKeyNames="ID" EmptyDataText="No Record Found"  Width="100%" >
                    <Columns>
                        <asp:TemplateField HeaderText="S No.">
                            <ItemTemplate>
                                <%# Container.DisplayIndex + 1%>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="Id" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                 <%#Eval("Id")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                        <asp:TemplateField HeaderText="Name" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                 <%#Eval("Name")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                        <asp:TemplateField HeaderText="Mobile" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%#Eval("Mobile")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                         <asp:TemplateField HeaderText="Message" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%#Eval("Message")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                       <asp:TemplateField HeaderText="Date" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="104px">
                            <ItemTemplate>
                                <%#Eval("Date","{0:dd-MM-yyyy}")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                     

                          <asp:TemplateField>
                            <HeaderTemplate>
                                <asp:CheckBox ID="chkSelectAll" runat="server" onclick="SelectAllRows(this)" />
                                 <asp:LinkButton ID="lbldelete"  runat="server" 
                                class="btn btn-danger" OnClick="btnDeleteSelected_Click" OnClientClick="return confirm('Do you want to delete this Record');" >Delete</asp:LinkButton>
                            </HeaderTemplate>
                        <ItemTemplate>
                            <asp:CheckBox ID="chkSelect" runat="server"/>
                        </ItemTemplate>
                     </asp:TemplateField>
                    </Columns>
                    <RowStyle Height="25" ForeColor="#003399" BackColor="White" HorizontalAlign="Center" />
                    <SelectedRowStyle BackColor="#009999" ForeColor="#CCFF99" HorizontalAlign="Center" />
                    <HeaderStyle Height="30" BackColor="#0187BC" Font-Bold="True" ForeColor="White" HorizontalAlign="Center"/>
                    <FooterStyle BackColor="#99CCCC" ForeColor="#003399" />
                    <PagerStyle BackColor="#FFFFCC" ForeColor="#330099" HorizontalAlign="Center" />
                </asp:GridView>
                        </div>
                    </div>

                </div>
            </form>
        </main>
    </div>
</asp:Content>

