using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Windows.Forms;

//Author: Trevor Wilson
namespace Skejooler
{
	public partial class AddInvigilationCenterForm : System.Web.UI.Page
	{
        string inConnString = "server=127.0.0.1;user id=root;password=;database=skejooler";
		protected void Page_Load(object sender, EventArgs e)
		{

        }

        protected void InvigFormSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                MySqlConnection invigDataSource = new MySqlConnection(inConnString);
                MySqlCommand command = invigDataSource.CreateCommand();
                command.CommandText = "INSERT INTO invigilation_centre(name, phone_num, postal_code, province, street_name, online, cost, longitude, latitude, city) Values('"
                    + this.invigFormName.Text + "','"
                    + this.invigFormNumber.Text + "','"
                    + this.invigFormPostal.Text + "','"
                    + this.invigFormProv.Text + "','"
                    + this.invigFormAddress.Text + "','"
                    + this.invigFormOnline.Text + "','"
                    + this.invigFormCost.Text + "','"
                    + this.invigFormLongitude.Text + "','"
                    + this.invigFormLatitude.Text + "','"
                    + this.invigFormCity.Text + "');";

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

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int centre_id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString());
            DeleteCentre(centre_id);
        }
        private void DeleteCentre(int centre_id)
        {
            using (MySqlConnection cn = new MySqlConnection(inConnString))
            {
                string query = "DELETE FROM invigilation_centre WHERE centre_id=" + centre_id + "";
                MySqlCommand cmd = new MySqlCommand(query, cn);

                try
                {
                    cn.Open();
                    cmd.ExecuteNonQuery();
                }
                catch(MySqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }
                cn.Close();
            }
        }
	}
}