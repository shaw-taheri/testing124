using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;

namespace Skejooler
{
    public partial class Map : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string markers = GetMarkers();
            Literal1.Text = @"
     <script type='text/javascript'>
     
    function initialize() { 
    
    var lat = 49.248657;
    var long = -123.001364;
   
    var mapOptions = {
     center: new google.maps.LatLng(lat, long),
     zoom: 8,
     mapTypeId: google.maps.MapTypeId.ROADMAP
     };
    var infoWindow = new google.maps.InfoWindow();
     var myMap = new google.maps.Map(document.getElementById('mapArea'),
     mapOptions);"


            + markers +
            @"}
            
            google.maps.event.addDomListener(window, 'load', initialize);

     </script>";
        }

        protected string GetMarkers()
        {
            string markers = "";
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=skejooler;UID=root;Password="))
            {
                MySqlCommand cmd = new MySqlCommand("Select latitude, longitude, city, name FROM invigilation_centre WHERE city ='" + DropDownList1.SelectedValue.ToString() + "'", con);
                con.Open();
                MySqlDataReader reader = cmd.ExecuteReader();
                int i = 0;

                while (reader.Read())
                {
                    i++;
                    markers +=
                    @"var marker" + i.ToString() + @" = new google.maps.Marker({
              position: new google.maps.LatLng(" + reader["Latitude"].ToString() + ", " +
                    reader["Longitude"].ToString() + ")," +
                    @"map: myMap,
              title:'" + reader["name"].ToString() + "'});";
                    

                    
                }
            }
            return markers;

        }



        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            CentreList.SelectCommand = "SELECT name, street_name, city, province, postal_code, phone_num, cost FROM invigilation_centre WHERE city ='" + DropDownList1.SelectedValue.ToString() + "'";
            
        }

        
    }
}