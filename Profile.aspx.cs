using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class user : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        clsUser obj = (clsUser)Session["user"];
        clsUserEmail ob = new clsUserEmail();
        ob.UserID = obj.UserID;
        DataSet ds = ob.getEmail();
        DataTable dt = ds.Tables[0];
        foreach(DataRow dr in dt.Rows)
        {
            lblemail.Text = dr[1].ToString();
        }
        lblname.Text = obj.Fname + " " + obj.Mname + " " + obj.Lname;
        lblgen.Text = obj.Gender;
        lbldob.Text = obj.Dob;
        lblms.Text = obj.Mstatus;
        lblabt.Text = obj.Aboutme;
        if (this.IsPostBack == false)
        {
            BindGridview();
        }
    }
    private void BindGridview()
    {
        clsUserSchool obj = new clsUserSchool();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        DataSet ds = obj.getSchool();
        DataTable dt = ds.Tables[0];
        ddlscl.DataSource = dt;
        ddlscl.DataBind();
        clsUserCollege obj1 = new clsUserCollege();
        obj1.UserID = ((clsUser)Session["user"]).UserID;
        DataSet ds1 = obj1.getCollege();
        DataTable dt1 = ds1.Tables[0];
        ddlclg.DataSource = dt1;
        ddlclg.DataBind();
        clsUserJob obj2 = new clsUserJob();
        obj2.UserID = ((clsUser)Session["user"]).UserID;
        DataSet ds2 = obj2.getJob();
        DataTable dt2 = ds2.Tables[0];
        ddljob.DataSource = dt2;
        ddljob.DataBind();
        clsUserHobby obj3 = new clsUserHobby();
        obj3.UserID = ((clsUser)Session["user"]).UserID;
        DataSet ds3 = obj3.getHobby();
        DataTable dt3 = ds3.Tables[0];
        ddlhby.DataSource = dt3;
        ddlhby.DataBind();
    }
    protected void btnyes_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btnno_Click(object sender, ImageClickEventArgs e)
    {

    }
    protected void btndob_Click(object sender, ImageClickEventArgs e)
    {
        lbldob.Visible = false;
        ddlday.Visible = true;
        ddlmonth.Visible = true;
        ddlyear.Visible = true;
        btndobyes.Visible = true;
        btndobno.Visible = true;
        btndob.Visible = false;
    }
    protected void btndobyes_Click(object sender, ImageClickEventArgs e)
    {
        String d = ddlday.SelectedValue+"-"+ddlmonth.SelectedValue+"-"+ddlyear.SelectedValue;
        clsUser obj = (clsUser)Session["user"];
        obj.Dob = d;
        obj.UpdateDOB();
        lbldob.Text = d;
        lbldob.Visible = true;
        ddlday.Visible = false;
        ddlmonth.Visible = false;
        ddlyear.Visible = false;
        btndobyes.Visible = false;
        btndobno.Visible = false;
        btndob.Visible = true;
    }
    protected void btndobno_Click(object sender, ImageClickEventArgs e)
    {
        lbldob.Visible = true;
        ddlday.Visible = false;
        ddlmonth.Visible = false;
        ddlyear.Visible = false;
        btndobyes.Visible = false;
        btndobno.Visible = false;
        btndob.Visible = true;
    }
    protected void btnms_Click(object sender, ImageClickEventArgs e)
    {
        lblms.Visible = false;
        DropDownList1.Visible = true;
        btnmsyes.Visible = true;
        btnmsno.Visible = true;
        btnms.Visible = false;
    }
    protected void btnmsyes_Click(object sender, ImageClickEventArgs e)
    {
        clsUser obj = (clsUser)Session["user"];
        obj.Mstatus = DropDownList1.SelectedValue;
        obj.UpdateMS();
        lblms.Text = obj.Mstatus;
        lblms.Visible = true;
        DropDownList1.Visible = false;
        btnmsyes.Visible = false;
        btnmsno.Visible = false;
        btnms.Visible = true;
    }
    protected void btnmsno_Click(object sender, ImageClickEventArgs e)
    {
        lblms.Visible = true;
        DropDownList1.Visible = false;
        btnmsyes.Visible = false;
        btnmsno.Visible = false;
        btnms.Visible = true;
    }
    protected void btnabt_Click(object sender, ImageClickEventArgs e)
    {
        lblabt.Visible = false;
        txtabt.Visible = true;
        btnabtyes.Visible = true;
        btnabtno.Visible = true;
        btnabt.Visible = false;
    }
    protected void btnabtyes_Click(object sender, ImageClickEventArgs e)
    {
        clsUser obj = (clsUser)Session["user"];
        obj.Aboutme = txtabt.Text;
        obj.UpdateAbt();
        lblabt.Text = obj.Aboutme;
        lblabt.Visible = true;
        txtabt.Visible = false;
        btnabtyes.Visible = false;
        btnabtno.Visible = false;
        btnabt.Visible = true;
    }
    protected void btnabtno_Click(object sender, ImageClickEventArgs e)
    {
        lblabt.Visible = true;
        txtabt.Visible = false;
        btnabtyes.Visible = false;
        btnabtno.Visible = false;
        btnabt.Visible = true;
    }
    protected void btnscl_Click(object sender, ImageClickEventArgs e)
    {
        txtscl.Visible = true;
        btnsclyes.Visible = true;
        btnsclno.Visible = true;
        DropDownList2.Visible = true;
        DropDownList3.Visible = true;
        btnscl.Visible = false;
    }
    protected void btnsclyes_Click(object sender, ImageClickEventArgs e)
    {
        clsUserSchool obj = new clsUserSchool();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        obj.School = txtscl.Text;
        obj.Syr = DropDownList2.SelectedValue;
        obj.Eyr = DropDownList3.SelectedValue;
        obj.AddSchool();
        BindGridview();
        txtscl.Visible = false;
        btnsclyes.Visible = false;
        btnsclno.Visible = false;
        DropDownList2.Visible = false;
        DropDownList3.Visible = false;
        btnscl.Visible = true;
    }
    protected void btnsclno_Click(object sender, ImageClickEventArgs e)
    {
        txtscl.Visible = false;
        btnsclyes.Visible = false;
        btnsclno.Visible = false;
        DropDownList2.Visible = false;
        DropDownList3.Visible = false;
        btnscl.Visible = true;
    }
    protected void btnclg_Click(object sender, ImageClickEventArgs e)
    {
        txtclg.Visible = true;
        txtdeg.Visible = true;
        btnclgyes.Visible = true;
        btnclgno.Visible = true;
        DropDownList4.Visible = true;
        DropDownList5.Visible = true;
        btnclg.Visible = false;
    }
    protected void btnclgyes_Click(object sender, ImageClickEventArgs e)
    {
        clsUserCollege obj = new clsUserCollege();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        obj.College = txtclg.Text;
        obj.Degree = txtdeg.Text;
        obj.Syr = DropDownList4.SelectedValue;
        obj.Eyr = DropDownList5.SelectedValue;
        obj.AddCollege();
        BindGridview();
        txtclg.Visible = false;
        txtdeg.Visible = false;
        btnclgyes.Visible = false;
        btnclgno.Visible = false;
        DropDownList4.Visible = false;
        DropDownList5.Visible = false;
        btnclg.Visible = true;
    }
    protected void btnclgno_Click(object sender, ImageClickEventArgs e)
    {
        txtclg.Visible = false;
        txtdeg.Visible = false;
        btnclgyes.Visible = false;
        btnclgno.Visible = false;
        DropDownList4.Visible = false;
        DropDownList5.Visible = false;
        btnclg.Visible = true;
    }
    protected void btnjob_Click(object sender, ImageClickEventArgs e)
    {
        txtcmp.Visible = true;
        txtdsn.Visible = true;
        btnjobyes.Visible = true;
        btnjobno.Visible = true;
        DropDownList6.Visible = true;
        DropDownList7.Visible = true;
        btnjob.Visible = false;
    }
    protected void btnjobyes_Click(object sender, ImageClickEventArgs e)
    {
        clsUserJob obj = new clsUserJob();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        obj.Company = txtcmp.Text;
        obj.Designation = txtdsn.Text;
        obj.Syr = DropDownList6.SelectedValue;
        obj.Eyr = DropDownList7.SelectedValue;
        obj.AddJob();
        BindGridview();
        txtcmp.Visible = false;
        txtdsn.Visible = false;
        btnjobyes.Visible = false;
        btnjobno.Visible = false;
        DropDownList6.Visible = false;
        DropDownList7.Visible = false;
        btnjob.Visible = true;
    }
    protected void btnjobno_Click(object sender, ImageClickEventArgs e)
    {
        txtcmp.Visible = false;
        txtdsn.Visible = false;
        btnjobyes.Visible = false;
        btnjobno.Visible = false;
        DropDownList6.Visible = false;
        DropDownList7.Visible = false;
        btnjob.Visible = true;
    }
    protected void btnhby_Click(object sender, ImageClickEventArgs e)
    {
        txthby.Visible = true;
        btnhbyyes.Visible = true;
        btnhbyno.Visible = true;
        btnhby.Visible = false;
    }
    protected void btnhbyyes_Click(object sender, ImageClickEventArgs e)
    {
        clsUserHobby obj = new clsUserHobby();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        obj.Hobby = txthby.Text;
        obj.AddHobby();
        BindGridview();
        txthby.Visible = false;
        btnhbyyes.Visible = false;
        btnhbyno.Visible = false;
        btnhby.Visible = true;
    }
    protected void btnhbyno_Click(object sender, ImageClickEventArgs e)
    {
        txthby.Visible = false;
        btnhbyyes.Visible = false;
        btnhbyno.Visible = false;
        btnhby.Visible = true;
    }
}