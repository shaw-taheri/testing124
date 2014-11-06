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
    public partial class maptesting : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string markers = GetMarkers();
            Literal1.Text = @"
     <script type='text/javascript'>
     function initialize() {
 
     var mapOptions = {
     center: new google.maps.LatLng(49.248657,-123.001364),
     zoom: 2,
     mapTypeId: google.maps.MapTypeId.ROADMAP
     };
 
     var myMap = new google.maps.Map(document.getElementById('mapArea'),
     mapOptions);"
            + markers +
            @"}
     </script>";
        }

        protected string GetMarkers()
        {
            string markers = "";
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=skejooler;UID=root;Password="))
            {
                MySqlCommand cmd = new MySqlCommand("Select latitude, longitude, city FROM invigilation_centre", con);
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
              title:'" + reader["City"].ToString() + "'});";
                }
            }
            return markers;
        }
    }
}