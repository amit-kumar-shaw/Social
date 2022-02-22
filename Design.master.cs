using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Design : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (this.IsPostBack == false)
        {
            BindGridview();
        }
        if (Session["user"] == null)
        {
            Response.Redirect("Homepage.aspx");
        }
        else
        {
            clsUser obj = (clsUser)Session["user"];
            btnprofile.Text = obj.Fname;
            img.ImageUrl = "profilepic/" + obj.Img;
            Session.Timeout = 500;
        }
        clsMessage bj = new clsMessage();
        bj.RID = ((clsUser)Session["user"]).UserID;
        DataSet ds = bj.getUnreadMessage();
        DataTable dt = ds.Tables[0];
        if (dt.Rows.Count == 0)
        {
            lblmssg.Text = "";
        }
        else
        {
            lblmssg.Text = "You have new messages.";
        }
    }
    private void BindGridview()
    {
        clsFriend obj = new clsFriend();
        obj.FriendID = ((clsUser)Session["user"]).UserID;
        obj.Status = "no";
            DataSet ds = obj.getRequest();
            DataTable dt = ds.Tables[0];
            DataList1.DataSource = dt;
            DataList1.DataBind();
    }
    protected void ButtonFriend_Click(object sender, EventArgs e)
    {
        Response.Redirect("Friends.aspx");
    }
    protected void ButtonPhoto_Click(object sender, EventArgs e)
    {
        Response.Redirect("Photo.aspx");
    }
    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Profile.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("Home.aspx");
    }
    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {
        Session["search"] = txtsearch.Text;
        Response.Redirect("Search.aspx");
    }
    protected void Button3_Click(object sender, EventArgs e)
    {
        Session["user"] = null;
        Response.Redirect("Homepage.aspx");
    }
    protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
    {
        Session["search"] = txtsearch.Text;
        Response.Redirect("Search.aspx");
    }
    protected void btnaccept_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        clsFriend obj = new clsFriend();
        obj.UserID = int.Parse(img.CommandArgument);
        obj.FriendID = ((clsUser)Session["user"]).UserID;
        obj.Status = "yes";
        obj.Accept();
        BindGridview();
    }
    protected void btndecline_Click(object sender, ImageClickEventArgs e)
    {
        ImageButton img = (ImageButton)sender;
        clsFriend obj = new clsFriend();
        obj.UserID = int.Parse(img.CommandArgument);
        obj.FriendID = ((clsUser)Session["user"]).UserID;
        obj.Decline();
        BindGridview();
    }
    protected void btnedit_Click(object sender, ImageClickEventArgs e)
    {
        btnedit.Visible = false;
        FileUpload1.Visible = true;
        btnyes.Visible = true;
        btnno.Visible = true;
    }
    protected void btnno_Click(object sender, ImageClickEventArgs e)
    {
        btnedit.Visible = true;
        FileUpload1.Visible = false;
        btnyes.Visible = false;
        btnno.Visible = false;
    }
    protected void btnyes_Click(object sender, ImageClickEventArgs e)
    {
        String filename = "";
        if (FileUpload1.HasFile)
        {
            filename = System.IO.Path.GetFileName(FileUpload1.PostedFile.FileName);
            String[] arrfilename = filename.Split('.');
            filename = arrfilename[0] + DateTime.Now.Ticks.ToString() + "." + arrfilename[1]; ;
            String serverpath = Server.MapPath("profilepic\\" + filename);
            FileUpload1.PostedFile.SaveAs(serverpath);
            clsUser obj = (clsUser)Session["user"];
            obj.Img = filename;
            img.ImageUrl = "profilepic/" + obj.Img;
            obj.UpdatePic();
        }
        btnedit.Visible = true;
        FileUpload1.Visible = false;
        btnyes.Visible = false;
        btnno.Visible = false;
    }
    protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
    {
        Response.Redirect("Message.aspx");
    }
    protected void Button6_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        clsUser obj = new clsUser();
        obj.UserID = int.Parse(btn.CommandArgument);
        obj=obj.getUserdet();
        Session["userdet"] = obj;
        Response.Redirect("User.aspx");
    }
}
