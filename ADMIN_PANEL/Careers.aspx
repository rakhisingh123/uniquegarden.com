<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN_PANEL/Admin.master" AutoEventWireup="true" CodeFile="Careers.aspx.cs" Inherits="ADMIN_PANEL_Default2" %>

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
      <%--<script>
          function SelectAllRows(checkbox) {
              var gridView = document.getElementById('<%= GridView1.ClientID %>');
             var checkboxes = gridView.getElementsByTagName('input');

             for (var i = 0; i < checkboxes.length; i++) {
                 if (checkboxes[i].type === 'checkbox' && checkboxes[i] !== checkbox) {
                     checkboxes[i].checked = checkbox.checked;
                 }
             }
         }
</script>--%>

    <div id="layoutSidenav_content">
        <main>
            <form id="form1" runat="server">
                <div class="container-fluid px-4">
                    <h1 class="mt-4">Careers</h1>
                    <div class="row">
                        <div class="col-xl-3 col-md-4 table" >
                            <div class="col-sm-2" style="display:flex;flex-direction:row;margin-right:20px; margin-top:1%;">
                <%--<asp:Button id="btnExporttoExcel" runat="server"  OnClick="btnExporttoExcel_Click" Style="width: 200px;margin-bottom:25px;" Text="Export to Excel" class="btn btn-outline-success" />--%>
              
          </div>
         <asp:Label ID="lblRecord" runat="server" />
                           

                            <asp:GridView ID="GridView1" runat="server" CssClass="table" AutoGenerateColumns="false" DataKeyNames="ID" EmptyDataText="No Record Found"  Width="100%" >
                    <Columns>
                        <asp:TemplateField HeaderText="S No.">
                            <ItemTemplate>
                                <%# Container.DisplayIndex + 1%>
                            </ItemTemplate>
                        </asp:TemplateField>
                         <asp:TemplateField HeaderText="id" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                 <%#Eval("id")%>
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
                        
                         <asp:TemplateField HeaderText="Email." HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%#Eval("Email")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="Role" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%#Eval("Role")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                         <asp:TemplateField HeaderText="FilePath" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                <%#Eval("FilePath")%>
                            </ItemTemplate>
                        </asp:TemplateField>

                       
                       <%-- <asp:TemplateField HeaderText="Resume" HeaderStyle-HorizontalAlign="Center">
                            <ItemTemplate>
                                
                               
                            <a href="resume/<%#Eval("resume")%>" target="_blank">Download</a>
                                 </ItemTemplate>
                            
                        </asp:TemplateField>--%>
                       <asp:TemplateField HeaderText="Date" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="104px">
                            <ItemTemplate>
                                <%#Eval("Date","{0:dd-MM-yyyy}")%>
                            </ItemTemplate>
                        </asp:TemplateField>
                       <%-- <asp:TemplateField HeaderText="Action" HeaderStyle-HorizontalAlign="Center" HeaderStyle-Width="88px">
                            <ItemTemplate>
                             <%--   <a href="javascript:" class="btn btn-primary" onclick='javascript:window.open("view_candidate_career.aspx?id=<%#Eval("id") %>","","height=300,width=600,left=320;top=100,status=yes,resizable=no,toolbar=no,menubar=no,location=center,scrollbars=no")'>View</a>&nbsp;&nbsp;|&nbsp;
                                <asp:LinkButton ID="lbldelete" CssClass="btn btn-primary" runat="server" CommandName="del" CommandArgument='<%#Eval("id")%>'
                                    OnClientClick="return confirm_Delete()">Delete</asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>--%>

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
                    <HeaderStyle Height="30" BackColor="#0187BC" Font-Bold="True" ForeColor="White" HorizontalAlign="Center" />
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

