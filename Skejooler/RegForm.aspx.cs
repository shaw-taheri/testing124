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
            SqlConnection RegDataSource = new SqlConnection("Server=localhost;Port=3306;Database=skejooler;Uid=root;Pwd=Ieng1hem;");
            {
                SqlCommand xp = new SqlCommand("Insert into registration_form(fName, lName)Values(@fName, @lName)", RegDataSource);
                xp.Parameters.AddWithValue("@", examineeFName.Text);
                xp.Parameters.AddWithValue("@", examineeLName.Text);

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
}
