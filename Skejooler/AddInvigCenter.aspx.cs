using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data.Types;
using System.Windows.Forms;


namespace Skejooler
{
	public partial class AddInvigilationCenterForm : System.Web.UI.Page
	{
		protected void Page_Load(object sender, EventArgs e)
		{

        }
            protected void InvigFormSubmit_Click(object sender, EventArgs e)
        {
            string inConnString = "server=127.0.0.1;user id=root;password=;database=skejooler";    
            MySqlConnection invigDataSource = new MySqlConnection(inConnString);
            MySqlCommand command = invigDataSource.CreateCommand();
           // command.CommandText = "INSERT INTO invigilation_centre(name, phone_num, postal_code, province, street_name, online, cost, longitude, latitude, city) Values('" + this.invigFormName.Text + "','" + this.invigFormPhone.Text + "','" + this.invigFormPostal.Text + "','" + this.invigFormProv.Text + "','" + this.invigFormAddress.Text + "','" + this.invigFormOnline.Text + "','" + this.invigFormCost.Text + "','" + this.invigFormLongitude.Text + "','" + this.invigFormLatitude.Text + "','" + this.invigFormCity.Text + "')';";

         try
            {
                invigDataSource.Open();
                command.ExecuteNonQuery();
            }
            catch (MySqlException ex)
            {
                MessageBox.Show(ex.Message);
            }

            invigDataSource.Close();
        
		}
	}
}