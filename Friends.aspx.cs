using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Friends : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            BindGridview();
        }
    }
    private void BindGridview()
    {
        clsUser obj = new clsUser();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        DataSet ds = obj.getFriend();
        DataTable dt = ds.Tables[0];
        DataList1.DataSource = dt;
        DataList1.DataBind();
    }
    protected void Button7_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        clsUser obj = new clsUser();
        obj.UserID = int.Parse(btn.CommandArgument);
        obj = obj.getUserdet();
        Session["userdet"] = obj;
        Response.Redirect("User.aspx");
    }
}