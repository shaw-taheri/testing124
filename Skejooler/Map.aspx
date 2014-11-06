<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="Skejooler.Map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/style.css" rel="stylesheet" />    
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTKSdSyVw_EXKaW_IubVgS6g0izh6_6R4">
    </script>
    <script type="text/javascript">
        function initialize() {
            var mapOptions = {
                center: { lat: 49.248657, lng: -123.001364 },
                zoom: 8
            };
            var map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
   <div>
   <div id="map-canvas"></div>
   <div id="map-results"></div>
      <div>
          <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataSourceID="InvigCentres1" Height="50px" Width="125px">
              <Fields>
                  <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                  <asp:BoundField DataField="street_name" HeaderText="street_name" SortExpression="street_name" />
                  <asp:BoundField DataField="city" HeaderText="city" SortExpression="city" />
                  <asp:BoundField DataField="province" HeaderText="province" SortExpression="province" />
                  <asp:BoundField DataField="postal_code" HeaderText="postal_code" SortExpression="postal_code" />
                  <asp:BoundField DataField="phone_num" HeaderText="phone_num" SortExpression="phone_num" />
                  <asp:CheckBoxField DataField="day" HeaderText="day" SortExpression="day" />
                  <asp:CheckBoxField DataField="evenings" HeaderText="evenings" SortExpression="evenings" />
                  <asp:CheckBoxField DataField="weekends" HeaderText="weekends" SortExpression="weekends" />
                  <asp:CheckBoxField DataField="online" HeaderText="online" SortExpression="online" />
                  <asp:BoundField DataField="cost" HeaderText="cost" SortExpression="cost" />
              </Fields>
          </asp:DetailsView>
          <asp:SqlDataSource ID="InvigCentres1" runat="server" ConnectionString="<%$ ConnectionStrings:skejoolerConnectionString2 %>" ProviderName="<%$ ConnectionStrings:skejoolerConnectionString2.ProviderName %>" SelectCommand="Select name, street_name, city, province, postal_code, phone_num, day, evenings, weekends, online, cost FROM invigilation_centre"></asp:SqlDataSource>
       </div> 
   </div>
</asp:Content>



