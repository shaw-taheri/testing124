using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;
using MySql.Data.MySqlClient;
using MySql.Data.Types;

namespace Skejooler
{
    public partial class RegForm : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        /// <summary>
        /// This method inserts the information that the user supplied for a registraton form,
        /// and inserts it into the database when the 'Submit' button is clicked.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>

        protected void regFormSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid) // checks to make sure the page is valid. 
            {

                string connString = "server=127.0.0.1;user id=root;password=;database=skejooler"; //the connection string for our database. 
                MySqlConnection RegDataSource = new MySqlConnection(connString); //defines our data source. 
                MySqlCommand command = RegDataSource.CreateCommand(); //defines the sql command that inserts the data.

                //The following code contatins the SQL statement being used to insert the data,
                //which uses the ID of each textbox to find their values, convert them into text,
                //and insert them into the database. 

                command.CommandText = "INSERT INTO registration_form(fName, lName, email, preferred_date1, preferred_date2, preferred_time, school_name, school_street_name, school_city, school_province, school_contact, school_contact_num, school_contact_email, course_num, additional_req, fee_covered, test_mid_final, test_paper_online, centre_Id, date_submitted) Values('"
                    + this.examineeFName.Text + "','"
                    + this.examineeLName.Text + "','"
                    + this.examineeEmail.Text + "','"
                    + this.examinee1stDate.Text + "','"
                    + this.examinee2ndDate.Text + "','"
                    + this.AppointmentTime.Text + "','"
                    + this.institutionName.Text + "','"
                    + this.insitutionStreet.Text + "','"
                    + this.institutionCity.Text + "','"
                    + this.institutionProvince.Text + "','"
                    + this.instiContactPerson.Text + "','"
                    + this.instiContactNumber.Text + "','"
                    + this.contactEmail.Text + "','"
                    + this.courseNumber.Text + "','"
                    + this.additionalInfo.Text + "','"
                    + this.invigFee.Text + "','"
                    + this.examMidOrFinal.Text + "','"
                    + this.typeOfExam.Text + "','"
                    + this.centerNameDDL.Text + "','"
                    + DateTime.Now.ToString() + "');"; //inserts the current date and time into the database. 

                try
                {
                    RegDataSource.Open(); //opens the connection to the database. 
                    command.ExecuteNonQuery(); //executes the query.
                }
                catch (MySqlException ex)
                {
                    MessageBox.Show(ex.Message); //catches any MySql exceptions that may occur and displays it in a popup.
                }

                RegDataSource.Close(); //closes the connection. 

                Response.Redirect("RegFormSubmit.aspx", false); //redirects the user to the submission page if the form was submitted successfully. 
            }

        }
    }
}



