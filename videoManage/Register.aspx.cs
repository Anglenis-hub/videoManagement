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


public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void SignupBtn_Click(object sender, EventArgs e)
    {
        string tel = txtTel.Text;
        string name = txtName.Text;
        string password = txtPassword.Text;
        string strCon = ConfigurationManager.ConnectionStrings["Test"].ConnectionString;
        SqlConnection con = new SqlConnection(strCon);

        SqlCommand cmd = new SqlCommand();
        cmd.Connection = con;
        
        if (txtTel.Text == "" || txtName.Text == "" || txtPassword.Text == "")
        {
            Label1.Visible = true;
            Label1.Text = "Your information is incomplete.";
            Label2.Visible = true;
            Label2.Text = "<br />";
        }
        else
        {
            string Selectsql = "select * from userInfo where userTel='" + tel + "'";
            cmd.CommandText = Selectsql;
            con.Open();
            SqlDataReader dr;
            dr = cmd.ExecuteReader();
            if (dr.Read())
            {
                Label1.Visible = true;
                Label1.Text = "The telephone number has been registered.";
                Label2.Visible = true;
                Label2.Text = "<br />";
            }
            else
            {
                string insertSql = "insert into userInfo(userTel,userName,userPassword) values('" + tel + "','" + name + "','" + password + "');";
                dataOperate.execSQL(insertSql);
                Session["tel"] = tel;
                Response.Redirect("Login.aspx");
            }
            con.Close();
        }
    }

    protected void txtTel_TextChanged(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;

    }

    protected void txtName_TextChanged(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
    }

    protected void txtPassword_TextChanged(object sender, EventArgs e)
    {
        Label1.Visible = false;
        Label2.Visible = false;
    }
}