<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="Skejooler.Map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/Style.css" rel="stylesheet" />    
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?libraries=places?key=AIzaSyCTKSdSyVw_EXKaW_IubVgS6g0izh6_6R4">
    </script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">   
    
    <div id="mapArea"></div>
    <asp:Literal ID="Literal1" runat="server"></asp:Literal> 
    
    
    <div id="dataList">
       <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" DataSourceID="CityDropDown" DataTextField="city" DataValueField="city" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
    </asp:DropDownList>
    <asp:SqlDataSource ID="CityDropDown" runat="server" ConnectionString="<%$ ConnectionStrings:invigSkejoolerConnectionString %>" ProviderName="<%$ ConnectionStrings:invigSkejoolerConnectionString.ProviderName %>" SelectCommand="SELECT * FROM invigilation_centre
GROUP BY city
"></asp:SqlDataSource>
       <br />
       <br />
   
    <asp:DataList ID="DataList1" runat="server" DataSourceID="CentreList">
        <ItemTemplate>
            name:
            <asp:Label ID="nameLabel" runat="server" Text='<%# Eval("name") %>' />
            <br />
            street_name:
            <asp:Label ID="street_nameLabel" runat="server" Text='<%# Eval("street_name") %>' />
            <br />
            city:
            <asp:Label ID="cityLabel" runat="server" Text='<%# Eval("city") %>' />
            <br />
            province:
            <asp:Label ID="provinceLabel" runat="server" Text='<%# Eval("province") %>' />
            <br />
            postal_code:
            <asp:Label ID="postal_codeLabel" runat="server" Text='<%# Eval("postal_code") %>' />
            <br />
            phone_num:
            <asp:Label ID="phone_numLabel" runat="server" Text='<%# Eval("phone_num") %>' />
            <br />
            cost:
            <asp:Label ID="costLabel" runat="server" Text='<%# Eval("cost") %>' />
            <br />
<br />
        </ItemTemplate>
    </asp:DataList>
    <asp:SqlDataSource ID="CentreList" runat="server" ConnectionString="<%$ ConnectionStrings:invigSkejoolerConnectionString %>" ProviderName="<%$ ConnectionStrings:invigSkejoolerConnectionString.ProviderName %>" SelectCommand="SELECT name, street_name, city, province, postal_code, phone_num, cost FROM invigilation_centre WHERE city='Vancouver'">
        <SelectParameters>
            <asp:ControlParameter ControlID="DropDownList1" Name="city" PropertyName="SelectedValue" Type="String" />
        </SelectParameters>
    </asp:SqlDataSource>
    
   
      
  
    
</div>
  
</asp:Content>



