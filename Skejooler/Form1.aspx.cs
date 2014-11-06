﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySql.Data.MySqlClient;
using System.Configuration;
using System.Data;

namespace Skejooler
{
    public partial class Form1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        

        protected void Button1_Click(object sender, EventArgs e)
             {
            string ConString = ConfigurationManager.ConnectionStrings["ConString"].ConnectionString;
            MySqlConnection con = new MySqlConnection(ConString);
            string CmdString = "SELECT * FROM invigilation_centre";
            MySqlDataAdapter sda = new MySqlDataAdapter(CmdString, con);
            DataSet ds = new DataSet();
            sda.Fill(ds);
            GridView1.DataSource = ds.Tables[0].DefaultView;
        }

           
       

        
    }
}