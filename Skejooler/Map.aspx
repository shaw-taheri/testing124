<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="Skejooler.Map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">    
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTKSdSyVw_EXKaW_IubVgS6g0izh6_6R4">
    </script>
    <script type="text/javascript">
        function initialize() {
            var mapOptions = {
                center: { lat: 49.261, lng: -123.113 },
                zoom: 13  };
            var map = new google.maps.Map(document.getElementById('map-canvas'),
                mapOptions); }
        google.maps.event.addDomListener(window, 'load', initialize);
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
       <div id="map-canvas">.</div> 
    <div id="map-results"> 
        <p>results placeholder</p>
       </div>
</asp:Content>
