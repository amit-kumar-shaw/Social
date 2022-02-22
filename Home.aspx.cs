using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Home : System.Web.UI.Page
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
        clsPhoto obj = new clsPhoto();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        DataSet ds = obj.getPost();
        DataTable dt = ds.Tables[0];
        DataList2.DataSource = dt;
        DataList2.DataBind();
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        clsUser obj = new clsUser();
        obj.UserID = int.Parse(btn.CommandArgument);
        obj = obj.getUserdet();
        Session["userdet"] = obj;
        Response.Redirect("User.aspx");
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        if (img.ImageUrl.Equals("images/like.jpg"))
        {
            img.ImageUrl = "images/unlike.jpg";
        }
        else
        {
            img.ImageUrl = "images/like.jpg";
        }
    }
}