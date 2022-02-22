using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Homepage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        lblms.Text = "";
        clsUser obj = new clsUser();
        clsUserEmail objemail = new clsUserEmail();
        objemail.Email = txtloginid.Text;
        obj.UserID = objemail.getID();
        obj.Password = txtloginpassword.Text;
        obj = obj.AuthenticateUser();
        if (obj != null)
        {
            Session["user"] = obj;
            Response.Redirect("Home.aspx");
        }
        else
        {
            lblmsg.Text = "Invalid Username/Password";
        }
        
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        lblmsg.Text = "";
        clsUser obj = new clsUser();
        clsUserEmail objemail = new clsUserEmail();
        objemail.Email = txtEmail.Text;
        if (objemail.getID() == 0)
        {
            obj.Fname = txtFname.Text;
            obj.Mname = txtMname.Text;
            obj.Lname = txtLname.Text;
            obj.Gender = rblGender.SelectedItem.Text;
            obj.Password = txtPassword.Text;
            if (obj.Gender.Equals("Male"))
            {
                obj.Img = "male.png";
            }
            else
            {
                obj.Img = "female.jpg";
            }
            obj.AddUser();
            objemail.UserID = obj.getID();
            objemail.AddEmail();
            obj.UserID = objemail.UserID;
            Session["user"] = obj;
            Response.Redirect("Home.aspx");
        }
        else
        {
            lblms.Text = "Email ID already registered";
        }
    }
}