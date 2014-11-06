<%@ Page Title="" Language="C#" MasterPageFile="~/Master.Master" AutoEventWireup="true" CodeBehind="Map.aspx.cs" Inherits="Skejooler.Map" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="style/style.css" rel="stylesheet" />    
    <script type="text/javascript"
      src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTKSdSyVw_EXKaW_IubVgS6g0izh6_6R4&sensor=false">
    </script>
    
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">  
   
   <div onload="initialize()" id="map-canvas"></div>
   
      <asp:Literal ID="Literal1" runat="server"></asp:Literal> 
  
</asp:Content>



