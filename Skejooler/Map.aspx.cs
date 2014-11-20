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

            if (!IsPostBack)
            {
                Label1.Text = "100 Mile House";
            }

            //instatiate google map
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

                     + markers +

                @"}     
                google.maps.event.addDomListener(window, 'load', initialize);

             </script>";
            
            
        }

        // create markers for the map based on lat and long in database
        protected string GetMarkers()
        {
            string markers = "";
            // connect to database
            using (MySqlConnection con = new MySqlConnection("Server=localhost;Database=skejooler;UID=root;Password="))
            {
                //select lat and long from database
                MySqlCommand cmd = new MySqlCommand("Select latitude, longitude, centre_id, name FROM invigilation_centre WHERE city ='" + Label1.Text.ToString() + "'", con);
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

        

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            
            //when city is changed in drop down menu, redraw markers
            CentreList.SelectCommand = "SELECT name, street_name, city, province, postal_code, phone_num, cost FROM invigilation_centre WHERE city ='" + DropDownList1.SelectedItem.ToString() + "'";
            DropDownList2.SelectedValue = DropDownList1.SelectedValue;
            Label1.Text = DropDownList1.SelectedItem.ToString();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("RegForm.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            
            CentreList.SelectCommand = "SELECT name, street_name, city, province, postal_code, phone_num, cost FROM invigilation_centre WHERE name ='" + DropDownList2.SelectedItem.ToString() + "'";
            DropDownList1.SelectedValue = DropDownList2.SelectedValue;
            
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string location;
            Session["userLocation"] = DropDownList2.SelectedItem;
            location = Session["userLocation"].ToString();
        }

        protected void Label1_PreRender(object sender, EventArgs e)
        {

        }

        
    }
}