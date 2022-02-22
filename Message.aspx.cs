using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Message : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            BindGridview();
            txtmesg.Visible = false;
            ImageButton6.Visible = false;
        }
        else
        {
            txtmesg.Visible = true;
            ImageButton6.Visible = true;
        }
    }
    private void BindGridview()
    {
        clsFriend obj = new clsFriend();
        obj.UserID = ((clsUser)Session["user"]).UserID;
        DataSet ds = obj.getFriend();
        DataTable dt = ds.Tables[0];
        DataList2.DataSource = dt;
        DataList2.DataBind();
    }
    private void BindGridmsg()
    {
        clsMessage obj = new clsMessage();
        obj.SID = ((clsUser)Session["user"]).UserID;
        obj.RID = ((int)Session["rcv"]);
        DataSet ds = obj.getMessage();
        DataTable dt = ds.Tables[0];
        DataList3.DataSource = dt;
        DataList3.DataBind();
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        Session["rcv"] = int.Parse(btn.CommandArgument);
        clsMessage obj = new clsMessage();
        obj.RID = ((clsUser)Session["user"]).UserID;
        obj.SID = ((int)Session["rcv"]);
        obj.MarkRead();
        BindGridmsg();
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        clsMessage obj = new clsMessage();
        obj.SID = ((clsUser)Session["user"]).UserID;
        obj.RID = ((int)Session["rcv"]);
        obj.Msg = txtmesg.Text;
        obj.RD = "no";
        obj.DateTime=DateTime.Now.ToString();
        obj.AddMessage();
        txtmesg.Text = "";
        BindGridmsg();
    }
}