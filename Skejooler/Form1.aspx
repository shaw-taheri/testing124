<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Form1.aspx.cs" Inherits="Skejooler.Form1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="SqlDataSource1">
            <Columns>
                <asp:BoundField DataField="latitude" HeaderText="latitude" SortExpression="latitude" />
                <asp:BoundField DataField="longitude" HeaderText="longitude" SortExpression="longitude" />
                <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:invigSkejoolerConnectionString %>" ProviderName="<%$ ConnectionStrings:invigSkejoolerConnectionString.ProviderName %>" SelectCommand="Select latitude, longitude, city FROM invigilation_centre"></asp:SqlDataSource>
    
    </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
