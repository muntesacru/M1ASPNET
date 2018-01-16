using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using Oracle.ManagedDataAccess.Client;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string sql = "delete from ANGAJATI where NUME like '" + TextBox1.Text + "%' and PRENUME like '" + TextBox2.Text + "%'";
        string conString = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
        using (var con = new OracleConnection(conString))
        using (var find = new OracleCommand(sql, con))
        {
            con.Open();
            if (find.ExecuteScalar() != null)
            {
                SqlDataSource1.SelectCommand = sql;
            }
            else
            {
                //Label3.Text = "No record found!!";
                //Label3.Text = "Stergere efectuata cu succes!!!";
                TextBox1.Text = String.Empty;
                TextBox2.Text = String.Empty;
            }
        }
    }
}