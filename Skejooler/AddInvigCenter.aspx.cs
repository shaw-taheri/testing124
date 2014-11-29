using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using MySql.Data;
using System.Windows.Forms;


namespace Skejooler
{
	public partial class AddInvigilationCenterForm : System.Web.UI.Page
	{
        string inConnString = "server=127.0.0.1;user id=root;password=;database=skejooler"; //connection string for the Skejooler Database.
		protected void Page_Load(object sender, EventArgs e)
		{

        }

        /// <summary>
        /// This method inserts the information that the administrator supplied for a new
        /// invigilation centre into the database when the 'submit' button is clicked.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void InvigFormSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) //checks to see if the information the administrator provided is valid. 
            {
                MySqlConnection invigDataSource = new MySqlConnection(inConnString); //defines the MySql connection.
                MySqlCommand command = invigDataSource.CreateCommand(); 

                //The following code contatins the SQL statement being used to insert the data,
                //which uses the ID of each textbox to find their values, convert them into text,
                //and insert them into the database. 

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
                    invigDataSource.Open(); //opens the database connection.
                    command.ExecuteNonQuery(); //executes the query.
                }
                catch (MySqlException ex) //catches any MySql exceptions that may occur and displays it in a popup. 
                {
                    MessageBox.Show(ex.Message);
                }

                invigDataSource.Close(); //closes the connection.
            }

        }

        /// <summary>
        /// The following method is executed when the 'delete' button on any row in the Gridview form
        /// is clicked, and removes that invigilation center from the database.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            //assigns 'centre_id' to the datakey values in the GridView by parsing through,
            //finding the correct row, and converting the value to a string. 
            int centre_id = int.Parse(GridView1.DataKeys[e.RowIndex].Value.ToString()); 
            DeleteCentre(centre_id); //invokes the 'DeleteCentre()' method, which returns 'centre_id'.
        }

        /// <summary>
        /// The following method opens the database connection and executes the query that removes
        /// the invigilation centre from the database in the row where the delete button is clicked. 
        /// It matches the centre ID defined by the datakey in the gridview to the centre ID in the database.
        /// </summary>
        /// <param name="centre_id"></param>

        private void DeleteCentre(int centre_id)
        {
            using (MySqlConnection cn = new MySqlConnection(inConnString))//defines the connection to use. 
            {
                string query = "DELETE FROM invigilation_centre WHERE centre_id=" + centre_id + ""; //the query that deletes the matching invigilation centre from the database. 
                MySqlCommand cmd = new MySqlCommand(query, cn);

                try
                {
                    cn.Open(); //opens the connection.
                    cmd.ExecuteNonQuery(); //executes the query. 
                }
                catch (MySqlException ex) //catches any MySql exceptions that may occur and displays them in a popup.
                {
                    MessageBox.Show(ex.Message);
                }
                cn.Close(); // closes the connection. 
            }
        }
	}
}