<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="UserProfile.aspx.cs" Inherits="Skejooler.UserProfile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
        <title>User Profile</title>
    </head>
<body>
    <h1>User Profile</h1>
        <div>
        
            <asp:Label ID="Label1" runat="server" Text="Name: "></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Phone Number: "></asp:Label>
        
        </div>
</body>
</html>
</asp:Content>
