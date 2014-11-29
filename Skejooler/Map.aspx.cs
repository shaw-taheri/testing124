using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using MySql.Data.MySqlClient;


//Author: Matty Beaulne
namespace Skejooler
{
    public partial class Map : System.Web.UI.Page
    {
        //perform the following when the page is first loaded. 
        protected void Page_Load(object sender, EventArgs e)
        {
           // If the page has not been loaded before do...
            if (!IsPostBack)
            {
                string markers = GetMarkers();

                //instatiate google map. Default map center on British Columbia
                Literal1.Text = @"
             <script type='text/javascript'>
     
                function initialize() { 
    
                    var lat = 55.000;
                    var long = -125.1500;
   
                    var mapOptions = {
                         center: new google.maps.LatLng(lat, long),
                         zoom: 5,
                         mapTypeId: google.maps.MapTypeId.ROADMAP
                     };
                    var infoWindow = new google.maps.InfoWindow();
                    var myMap = new google.maps.Map(document.getElementById('mapArea'),
                     mapOptions);"

                    //add the markers
                    + markers +
                    @"}  
   
                google.maps.event.addDomListener(window, 'load', initialize);

             </script>";


            }
        }
        // create markers on the map based on all lat and long values stored in database
        protected string GetMarkers()
        {
            string markers = "";
            // connect to database
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=skejooler;UID=root;Password="))
            {
                //select lat and long from database
                MySqlCommand cmd = new MySqlCommand("Select latitude, longitude, centre_id, name FROM invigilation_centre ", con);
                con.Open();
                MySqlDataReader reader = cmd.ExecuteReader();
                int i = 0;

                //create markers
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

       //function to create map markers based on the city selected in city drop down list. 
        protected string GetCityMarkers()
        {
            string cityMarkers = "";
            // connect to database
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=skejooler;UID=root;Password="))
            {
                //select lat and long from database
                MySqlCommand cmd = new MySqlCommand("Select latitude, longitude, centre_id, name FROM invigilation_centre WHERE city ='"+ DropDownList1.SelectedItem.ToString() +"'", con);
                con.Open();
                MySqlDataReader reader = cmd.ExecuteReader();
                int i = 0;

                //create markers
                while (reader.Read())
                {
                    i++;
                    cityMarkers +=
                    @"var marker" + i.ToString() + @" = new google.maps.Marker({
              position: new google.maps.LatLng(" + reader["Latitude"].ToString() + ", " +
                    reader["Longitude"].ToString() + ")," +
                    @"map: myMap,
              title:'" + reader["name"].ToString() + "'});";
                }
            }

            return cityMarkers;
        }

        // get the latitude coordinate for the city selected in the rop down menu
        protected string GetLatitude()
        {
            string latitude = "";
            // connect to database
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=skejooler;UID=root;Password="))
            {
                //select lat and long from database where the city equals the selected drop down value
                MySqlCommand cmd = new MySqlCommand("Select latitude, longitude, centre_id, name FROM invigilation_centre WHERE city ='" + DropDownList1.SelectedItem.ToString() + "'", con);
                con.Open();
                MySqlDataReader reader = cmd.ExecuteReader();
                int i = 0;

                //read in and store latitude
                while (reader.Read())
                {
                    latitude = reader["Latitude"].ToString();
                }  
            }
            return latitude;
        }

        // get the longitude coordinate for the city selected in the rop down menu
        protected string GetLongitude()
        {
            string longitude = "";
            // connect to database
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=skejooler;UID=root;Password="))
            {
                //select lat and long from database where the city equals selected drop down value.
                MySqlCommand cmd = new MySqlCommand("Select latitude, longitude, centre_id, name FROM invigilation_centre WHERE city ='" + DropDownList1.SelectedItem.ToString() + "'", con);
                con.Open();
                MySqlDataReader reader = cmd.ExecuteReader();
                int i = 0;

                //read in and store Longitude
                while (reader.Read())
                {
                    longitude = reader["Longitude"].ToString();
                }
            }
            return longitude;
        }

            
        
        // when the City Drop down list is changed perform these funcitons
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            {
                string cityMarkers = GetCityMarkers();
                 //instatiate google map again after the drop down menu is changed
                Literal1.Text = @"
             <script type='text/javascript'>
     
                function initialize() {     
                    var lat = " + GetLatitude().ToString() + @"
                    var long = "  + GetLongitude().ToString() + @"
   
                    var mapOptions = {
                         center: new google.maps.LatLng(lat, long),
                         zoom: 11,
                         mapTypeId: google.maps.MapTypeId.ROADMAP
                     };
                    var infoWindow = new google.maps.InfoWindow();
                    var myMap = new google.maps.Map(document.getElementById('mapArea'),
                     mapOptions);"

                    //add the markers for the selected city's invigilation centres
                    + cityMarkers +
                    @"} 
    
                google.maps.event.addDomListener(window, 'load', initialize);

             </script>"; ;


            }
            //when city is changed in drop down menu, redraw markers
            CentreList.SelectCommand = "SELECT name, street_name, city, province, postal_code, phone_num, cost FROM invigilation_centre WHERE city ='" + DropDownList1.SelectedItem.ToString() + "'";      
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegForm.aspx");
        }

       
        
        
    }
}