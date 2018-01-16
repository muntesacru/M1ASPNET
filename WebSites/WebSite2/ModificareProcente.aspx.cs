using Oracle.ManagedDataAccess.Client;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        try
        {
            OracleConnection conn = new OracleConnection();

            //using connection string attributes to connect to Oracle Database
            conn.ConnectionString = @"DATA SOURCE=localhost:1521/XE;PASSWORD=parola;PERSIST SECURITY INFO=True;USER ID=MUNTESACRU";
            conn.Open();

            OracleCommand cmd = new OracleCommand();
            cmd.Connection = conn;
            cmd.CommandText =
                "UPDATE PROCENTE SET CAS = '" + TextBox1.Text +
                "' , SANATATE = '" + TextBox2.Text +
                "' , SOMAJ = '" + TextBox3.Text +
                "' , IMPOZIT = " + TextBox4.Text +
                " WHERE ID = " + tbID.Text;

            OracleDataReader dr = cmd.ExecuteReader();
            dr.Read();
            conn.Dispose();
            Label14.Text = "Succes!!!";
            TextBox1.Text = String.Empty;
            TextBox2.Text = String.Empty;
            TextBox3.Text = String.Empty;
            TextBox4.Text = String.Empty;
        }
        catch
        {
            Label14.Text = "A aparut o problema!!! Operatiune abandonata!";
        }
    }
}