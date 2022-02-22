using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Search : System.Web.UI.Page
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
        String str = (String)Session["search"];
        obj.UserID = ((clsUser)Session["user"]).UserID;
        str.Trim();
        int l = str.Length;
        if (l != 0)
        {
            String[] s = { " " };
            String[] a = str.Split(s, System.StringSplitOptions.RemoveEmptyEntries);
            if (a.Length == 1)
            {
                obj.Fname = a[0];
                obj.Mname = "-1";
                obj.Lname = "-1";
            }
            else if (a.Length == 2)
            {
                obj.Fname = a[0];
                obj.Mname = "-1";
                obj.Lname = a[1];
            }
            else if (a.Length == 3)
            {
                obj.Fname = a[0];
                obj.Mname = a[1];
                obj.Lname = a[2];
            }
            DataSet ds = obj.getUser();
            DataTable dt = ds.Tables[0];
            DataList1.DataSource = dt;
            DataList1.DataBind();
            l=dt.Rows.Count;
        }
        lblmsg.Text = l + " Results Found for '" + str + "'";
        Session["search"] = null;
    }
    protected void ImageButton7_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        clsFriend obj = new clsFriend();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        obj.FriendID = int.Parse(img.CommandArgument);
        if (img.ImageUrl.Equals("images/addfrnd.jpg"))
        {
            obj.Status = "no";
            obj.AddFriend();
            img.ImageUrl = "images/cancelrqst.png";
        }
        else
        {
            obj.Decline();
            img.ImageUrl = "images/addfrnd.jpg";
        }
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