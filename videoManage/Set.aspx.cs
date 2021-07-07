using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Set : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        // Iterate through the SelectedDates collection and display the
        // dates selected in the Calendar control.
        foreach (DateTime day in Calendar1.SelectedDates)
        {
            txtBirth.Text = day.Date.ToShortDateString();
            this.txtBirth.ForeColor = System.Drawing.Color.Black;
        }
    }

    protected void saveBtn_Click(object sender, EventArgs e)
    {
        //if (Session["tel"].ToString() == "")
        //{
        //    Response.Write("<script>alert('请登录');location.href='Login.aspx';</script>");
        //}
        string name = txtName.Text;
        string sex = sexRadioButtonList.SelectedValue;
        string birth = txtBirth.Text;
        string favoredType = likedTypeLabel.Text;

        if (txtName.Text == "")
        {
            this.txtName.ForeColor = System.Drawing.Color.Red;
            txtName.Text = "请填写昵称";
        } else
        {
            this.txtName.ForeColor = System.Drawing.Color.Black;
        }
        if (sexRadioButtonList.SelectedValue == "")
        {
            sexLabel.Visible = true;
            sexLabel.Text = "请选择";
        } else
        {
            sexLabel.Visible = false;
        }
        if (txtBirth.Text == "")
        {
            this.txtBirth.ForeColor = System.Drawing.Color.Red;
            txtBirth.Text = "请选择生日";
        }
        if (CheckBoxList1.SelectedValue == "")
        {
            noSelectionLabel.Visible = true;
            noSelectionLabel.Text = "请选择";
        }

        string sqlUpdate = "update userInfo set userName='" + name + "'," + "userSex= '" + sex + "'," + "userBirth= '" + birth + "'," + "userFavoredType= '" + favoredType + "' where userTel='" + Session["tel"] + "'";
        dataOperate.execSQL(sqlUpdate);
    }

    protected void CheckBoxList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        noSelectionLabel.Visible = false;
        likedTypeLabel.Text = "";
        for (int i = 0; i < CheckBoxList1.Items.Count; i++)
        {
            if (CheckBoxList1.Items[i].Selected)
            {
                likedTypeLabel.Visible = true;
                likedTypeLabel.Text += CheckBoxList1.Items[i].Text + " ";
            }
        }
        
    }

    protected void txtName_TextChanged(object sender, EventArgs e)
    {
        this.txtName.ForeColor = System.Drawing.Color.Black;
    }

    protected void sexRadioButtonList_SelectedIndexChanged(object sender, EventArgs e)
    {
        sexLabel.Visible = false;
    }
}