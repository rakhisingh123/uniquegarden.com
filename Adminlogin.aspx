
<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Adminlogin.aspx.cs" Inherits="Adminlogin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.108.0">
    <script src='https://kit.fontawesome.com/a076d05399.js' crossorigin='anonymous'></script>
     <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js" integrity="sha384-w76AqPfDkMBDXo30jS1Sgez6pr3x5MlQ1ZAGC+nuZB+EYdgRZgiwxhTBTkF7CXvN" crossorigin="anonymous"></script>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-GLhlTQ8iRABdZLl6O3oVMWSktQOp6b7In1Zl3/Jr59b6EGGoI1aFkw7cmDA6j6gD" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.2/css/all.min.css" integrity="sha512-SnH5WK+bZxgPHs44uWIX+LLJAJ9/2PkPKZ5QiAj6Ta86w+fsb2TkcmfRyVX3pBnMFcV7oQPJkl9QevSCWr3W6A==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <style>
        #signin {
            font-weight:bold;
        }
            #signin:hover {
                color:blue;
            }
        .btn-success {
            box-shadow: rgba(0, 0, 0, 0.35) 0px 5px 15px;
          
        }
            .btn-success:hover {
                          background-color:white;
            }

    </style>
</head>
<body class="text-center" style="background-color:white;">
    <div class="card mx-auto" style="margin-top:250px; width: 25rem; height:26rem; background-color:white; top: 0px; left: 0px;box-shadow: rgba(0, 0, 0, 0.3) 0px 19px 38px, rgba(0, 0, 0, 0.22) 0px 15px 12px;">
        <div class="card-body">
            <img src="assets/images/unique-garden-logo.png" style="width:50%;" />
            <h5 class="card-title">Please sign in</h5>
            <p>
                <%--<i class='fas fa-user-alt mx-auto' style='font-size: 48px;'></i>--%>
            </p>
            <form runat="server">
                <div class="form-floating mb-3">
                    <asp:TextBox ID="Username" class="form-control" placeholder="Username" runat="server"></asp:TextBox>
                    <label>Username</label>
                </div>
                <div class="form-floating">
                    <asp:TextBox ID="Password" type="password" class="form-control" placeholder="Password" runat="server"></asp:TextBox>
                    <label>Password</label>
                </div>
                <asp:Button ID="signin" Text="Sign in" type="submit" class="btn btn-success btn-lg my-3" runat="server" OnClick="signin_Click"></asp:Button>
                 <asp:Label ID="Label1" runat="server" Text="" ></asp:Label>
                <div id="td_message" runat="server" style="text-align:center;color:black; margin-top:20px;" ></div>
            </form>
        </div>
    </div>

    
</body>
</html>
