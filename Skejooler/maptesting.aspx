<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="maptesting.aspx.cs" Inherits="Skejooler.maptesting" %>

<html xmlns="http://www.w3.org/1999/xhtml" >
<head runat="server">
     <title>
          Adding Markers to a Google Maps from database
     </title>
 
     <script type="text/javascript"
     src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCTKSdSyVw_EXKaW_IubVgS6g0izh6_6R4&sensor=false">
     </script>
     <style type="text/css">
         #mapArea {
             height: 220px;
         }
     </style>
</head>
 
<body onload="initialize()">
     <form id="form1" runat="server">
     </form>
          <div id="mapArea">
              <asp:Literal ID="Literal1" runat="server"></asp:Literal>
          </div>
            
 
          
         
     
</body>
</html>