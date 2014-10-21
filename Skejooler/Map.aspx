<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="Skejooler.Map" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <style type="text/css">
      html, body, #map-canvas 
        { 
          height: 500px; 
          width: 500px; 
          margin: 0; 
          padding: 0;
        }
    </style>
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTKSdSyVw_EXKaW_IubVgS6g0izh6_6R4">
    </script>
    <script type="text/javascript">
        function initialize() {
            var mapOptions = {
                center: { lat: 49.261, lng: -123.113 },
                zoom: 13
            };
            var map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions);
        }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    
       <p style="height: 21px"> hello?</p>
       <div id="map-canvas">.</div>
 
</asp:Content>
