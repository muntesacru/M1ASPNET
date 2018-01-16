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
                "UPDATE ANGAJATI SET NUME = '" + TextBox1.Text +
                "' , PRENUME = '" + TextBox2.Text +
                "' , FUNCTIE = '" + TextBox3.Text +
                "' , SALARNEGOCIAT = " + TextBox4.Text +
                " , SALARREALIZAT = " + TextBox5.Text +
                " , VECHIME = " + TextBox6.Text +
                " , SPOR = " + TextBox7.Text +
                " , PREMIIBRUTE = " + TextBox8.Text +
                " , COMPENSATIE = " + TextBox9.Text +
                " , AVANS = " + TextBox10.Text +
                " , RETINERI = " + TextBox11.Text +
                " WHERE NRCRT = " + tbNrCrt.Text;

            OracleDataReader dr = cmd.ExecuteReader();
            dr.Read();
            conn.Dispose();
            Label14.Text = "Succes!! Editati urmatorul!";
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
        catch
        {
            Label14.Text = "A aparut o problema!!! Operatiune abandonata!";
        }
    }

    //protected void Cauta_Click(object sender, EventArgs e)
    //{
    //    OracleConnection conn = new OracleConnection();

    //    //using connection string attributes to connect to Oracle Database
    //    conn.ConnectionString = @"DATA SOURCE=localhost:1521/XE;PASSWORD=parola;PERSIST SECURITY INFO=True;USER ID=MUNTESACRU";
    //    conn.Open();

    //    OracleCommand cmd = new OracleCommand();
    //    cmd.Connection = conn;
    //    cmd.CommandText =
    //        "UPDATE ANGAJATI SET NUME = '" + TextBox1.Text +
    //        "' , PRENUME = '" + TextBox2.Text +
    //        "' , FUNCTIE = '" + TextBox3.Text +
    //        "' , SALARNEGOCIAT = " + TextBox4.Text +
    //        " , SALARREALIZAT = " + TextBox5.Text +
    //        " , VECHIME = " + TextBox6.Text +
    //        " , SPOR = " + TextBox7.Text +
    //        " , PREMIIBRUTE = " + TextBox8.Text +
    //        " , COMPENSATIE = " + TextBox9.Text +
    //        " , AVANS = " + TextBox10.Text +
    //        " , RETINERI = " + TextBox11.Text +
    //        " WHERE NRCRT = " + tbNrCrt + ";";

    //    OracleDataReader dr = cmd.ExecuteReader();
    //    dr.Read();
    //    conn.Dispose();
    //    Label14.Text = "Success!! Add another";
    //}
}