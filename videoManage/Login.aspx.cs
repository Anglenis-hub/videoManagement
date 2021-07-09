using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web.Security;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void LoginBtn_Click(object sender, EventArgs e)
    {
        string tel = txtTel.Text;
        string password = txtPassword.Text;
        string strCon = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con = new SqlConnection(strCon);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        string sql = "select * from userInfo where userTel='" + tel + "'and userPassword='" + password + "'";
        cmd.CommandText = sql;
        con.Open();
        SqlDataReader dr;
        dr = cmd.ExecuteReader();
        if (dr.Read())
        {
            Session["tel"] = tel;
            Session["name"] = dr["userName"].ToString(); ;
            Session["password"] = password;
            Response.Redirect("Set.aspx");
        }
        else
        {
            ClientScript.RegisterStartupScript(this.GetType(), "", "<script type='text/javascript'>function MyFun(){console.log(hello)}</script>");
            Label1.Visible = true;
            Label1.Text = "Incorrect username or password.";
            Label2.Visible = true;
            Label2.Text = "<br />";
        }
        
        con.Close();
        
    }

    protected void LinkButton1_Click(object sender, EventArgs e)
    {
        Response.Redirect("videoHomePage.aspx");
    }
}