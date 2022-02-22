using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class User : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        clsUser obj = (clsUser)Session["userdet"];
        clsUserEmail ob = new clsUserEmail();
        ob.UserID = obj.UserID;
        DataSet ds = ob.getEmail();
        DataTable dt = ds.Tables[0];
        foreach (DataRow dr in dt.Rows)
        {
            lblemail.Text = dr[1].ToString();
        }
        lblname.Text = obj.Fname + " " + obj.Mname + " " + obj.Lname;
        lblgen.Text = obj.Gender;
        lbldob.Text = obj.Dob;
        lblms.Text = obj.Mstatus;
        lblabt.Text = obj.Aboutme;
        imgpic.ImageUrl = "profilepic/" + obj.Img;
        if (this.IsPostBack == false)
        {
            BindGridview();
        }
    }
    private void BindGridview()
    {
        clsUserSchool obj = new clsUserSchool();
        obj.UserID = ((clsUser)Session["userdet"]).UserID;
        DataSet ds = obj.getSchool();
        DataTable dt = ds.Tables[0];
        ddlscl.DataSource = dt;
        ddlscl.DataBind();
        clsUserCollege obj1 = new clsUserCollege();
        obj1.UserID = ((clsUser)Session["userdet"]).UserID;
        DataSet ds1 = obj1.getCollege();
        DataTable dt1 = ds1.Tables[0];
        ddlclg.DataSource = dt1;
        ddlclg.DataBind();
        clsUserJob obj2 = new clsUserJob();
        obj2.UserID = ((clsUser)Session["userdet"]).UserID;
        DataSet ds2 = obj2.getJob();
        DataTable dt2 = ds2.Tables[0];
        ddljob.DataSource = dt2;
        ddljob.DataBind();
        clsUserHobby obj3 = new clsUserHobby();
        obj3.UserID = ((clsUser)Session["userdet"]).UserID;
        DataSet ds3 = obj3.getHobby();
        DataTable dt3 = ds3.Tables[0];
        ddlhby.DataSource = dt3;
        ddlhby.DataBind();
    }
}