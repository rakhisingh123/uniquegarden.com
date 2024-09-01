<%@ Page Title="" Language="C#" MasterPageFile="~/ADMIN_PANEL/Admin.master" AutoEventWireup="true" CodeFile="ChangePassword.aspx.cs" Inherits="ADMIN_PANEL_Default2" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
      
    <div class="text-center mx-auto">
        <div class="card mx-auto" style="margin-top: 250px; width: 25rem; height: 25rem; background-color: lightgray; top: 0px; left: 0px;">
            <div class="card-body">
                <h5 class="card-title">Change your Password</h5>
                <p>
                    <i class='fas fa-user-alt mx-auto' style='font-size: 48px;'></i>
                </p>
                <form id="ChangePassword" runat="server">
                    <div class="form-floating mb-1">
                        <asp:TextBox ID="OldPassword" class="form-control" placeholder="Old Password" runat="server"></asp:TextBox>
                        <label>Old Password</label>
                    </div>
                    <div class="form-floating mb-1">
                        <asp:TextBox ID="NewPassword" type="password" class="form-control" placeholder="New Password" runat="server"></asp:TextBox>
                        <label>New Password</label>
                    </div>
                    <div class="form-floating mb-1">
                        <asp:TextBox ID="ConfirmNewPassword" type="password" class="form-control" placeholder="Confirm New Password" runat="server"></asp:TextBox>
                        <label>Confirm New Password</label>
                    </div>
                    <asp:Button ID="UpdatePassword" Text="Update" type="submit" class="btn btn-primary btn-lg my-3" runat="server" OnClientClick="return validate();" OnClick="UpdatePassword_Click"></asp:Button>
                </form>
            </div>
        </div>
            

    </div>
</asp:Content>

