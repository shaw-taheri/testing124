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

        protected void regFormSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {

                string connString = "server=127.0.0.1;user id=root;password=;database=skejooler";
                MySqlConnection RegDataSource = new MySqlConnection(connString);
                MySqlCommand command = RegDataSource.CreateCommand();
                command.CommandText = "INSERT INTO registration_form(fName, lName, email, preferred_date1, preferred_date2, preferred_time, school_name, school_street_name, school_city, school_province, school_contact, school_contact_num, school_contact_email, course_num, additional_req, fee_covered, test_mid_final, test_paper_online, centre_Id) Values('"
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
                    + this.centerNameDDL.Text + "');";

                try
                {
                    RegDataSource.Open();
                    command.ExecuteNonQuery();
                }
                catch (MySqlException ex)
                {
                    MessageBox.Show(ex.Message);
                }

                RegDataSource.Close();

                Response.Redirect("RegFormSubmit.aspx", false);
            }

        }
    }
}



