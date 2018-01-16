using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using Oracle.DataAccess.Client; // ODP.NET Oracle managed provider

//using Oracle.DataAccess.Types;
using Oracle.ManagedDataAccess.Client;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        OracleConnection conn = new OracleConnection();

        //using connection string attributes to connect to Oracle Database
        conn.ConnectionString = @"DATA SOURCE=localhost:1521/XE;PASSWORD=parola;PERSIST SECURITY INFO=True;USER ID=MUNTESACRU";
        conn.Open();

        OracleCommand cmd = new OracleCommand();

        cmd.Connection = conn;

        cmd.CommandText = "insert into ANGAJATI (NUME, PRENUME, FUNCTIE, SALARNEGOCIAT, SALARREALIZAT, VECHIME, SPOR, PREMIIBRUTE, COMPENSATIE, AVANS, RETINERI) "
        + "values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "','" + TextBox5.Text + "','" + TextBox6.Text + "','" + TextBox7.Text + "','" + TextBox8.Text + "','" + TextBox9.Text + "','" + TextBox10.Text + "','" + TextBox11.Text + "')";
        /*
            cmd.CommandText = "insert into ANGAJAT (NUME, PRENUME, FUNCTIE) "
            + "values ('" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            */
        OracleDataReader dr = cmd.ExecuteReader();

        dr.Read();

        conn.Dispose();
        Label14.Text = "Success!! Add another";
        TextBox1.Text = String.Empty;
        TextBox2.Text = String.Empty;
        TextBox3.Text = String.Empty;
        TextBox4.Text = String.Empty;
        TextBox5.Text = String.Empty;
        TextBox6.Text = String.Empty;
        TextBox7.Text = String.Empty;
        TextBox8.Text = String.Empty;
        TextBox9.Text = String.Empty;
        TextBox10.Text = String.Empty;
        TextBox11.Text = String.Empty;
    }
}