using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace Skejooler
{
    public partial class RegForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Page.IsPostBack == true)
            {
                RegLabel.Text = ("Your registration form has been submitted");
            }
        }

        protected void regFormSubmit_Click(object sender, EventArgs e)
        {
            SqlConnection RegDataSource = new SqlConnection("Server=localhost;Port=3306;Database=skejooler;Uid=root;Pwd=root;");

            SqlCommand xp = new SqlCommand("INSERT INTO registration_form(fName, lName, email, preferred_date1, preferred_date2, school_name, school_street_name, school_city, school_province, school_contact, school_contact_num, school_contact_email, course_num, midterm, final, online, paper, computer_req, additional_req)Values(@fName, @lName, @email, @preferred_date1, @preferred_date2, @school_name, @school_street_name, @school_city, @school_province, @school_contact, @school_contact_num, @school_contact_email, @course_num, midterm, @final, @online, @paper, @computer_req, @additional_req)", RegDataSource);
            xp.Parameters.AddWithValue("@", examineeFName.Text);
            xp.Parameters.AddWithValue("@", examineeLName.Text);
            xp.Parameters.AddWithValue("@", examineeEmail.Text);
            xp.Parameters.AddWithValue("@", examinee1stDate.Text);
            xp.Parameters.AddWithValue("@", examinee2ndDate.Text);
            xp.Parameters.AddWithValue("@", institutionName.Text);
            xp.Parameters.AddWithValue("@", instAddress.Text);
            xp.Parameters.AddWithValue("@", instiContactPerson.Text);
            xp.Parameters.AddWithValue("@", instiContactNumber.Text);
            xp.Parameters.AddWithValue("@", contactEmail.Text);
            xp.Parameters.AddWithValue("@", courseNumber.Text);
            xp.Parameters.AddWithValue("@", midOrFinal.Text);
            xp.Parameters.AddWithValue("@", compReq.Text);
            xp.Parameters.AddWithValue("@", additionalInfo.Text);
            xp.Parameters.AddWithValue("@", invigFee.Text);



            RegDataSource.Open();
            xp.ExecuteNonQuery();
            RegDataSource.Close();

            if (IsPostBack)
            {
                examineeFName.Text = "";
                examineeLName.Text = "";
            }
        }
    }
}

