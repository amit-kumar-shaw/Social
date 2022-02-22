using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

public partial class Photo : System.Web.UI.Page
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
        DataSet ds = obj.getPhoto();
        DataTable dt = ds.Tables[0];
        lbl.Text = "You have uploaded " + dt.Rows.Count.ToString() + " photos";
        DataList2.DataSource = dt;
        DataList2.DataBind();
    }
    protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
    {
        FileUpload2.Visible = true;
        btndobno.Visible = true;
        btndobyes.Visible = true;
        txtcaption.Visible = true;
        ImageButton6.Visible = false;
    }
    protected void btndobyes_Click(object sender, ImageClickEventArgs e)
    {
        String filename = "";
        if (FileUpload2.HasFile)
        {
            filename = System.IO.Path.GetFileName(FileUpload2.PostedFile.FileName);
            String[] arrfilename = filename.Split('.');
            filename = arrfilename[0] + DateTime.Now.Ticks.ToString() + "." + arrfilename[1]; ;
            String serverpath = Server.MapPath("uploadpic\\" + filename);
            FileUpload2.PostedFile.SaveAs(serverpath);
            clsUser obj = (clsUser)Session["user"];
            clsPhoto objp = new clsPhoto();
            objp.UserID = obj.UserID;
            objp.Img = filename;
            objp.Caption = txtcaption.Text;
            objp.DateTime = DateTime.Now.ToString();
            objp.AddPhoto();
        }
        FileUpload2.Visible = false;
        btndobno.Visible = false;
        btndobyes.Visible = false;
        txtcaption.Visible = false;
        ImageButton6.Visible = true;
    }
    protected void btndobno_Click(object sender, ImageClickEventArgs e)
    {
        FileUpload2.Visible = false;
        btndobno.Visible = false;
        btndobyes.Visible = false;
        txtcaption.Visible = false;
        ImageButton6.Visible = true;
    }
}