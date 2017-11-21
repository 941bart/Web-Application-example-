using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class WelcomePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Create calendar and system date on the bottom of the page 
            lblDateandTime.Text = System.DateTime.Now.ToLongDateString();
        }

        protected void btnDemo1_Click(object sender, EventArgs e)
        {
            //Send user to demo1
            Response.Redirect("Demo1Listbox.aspx");
        }

        protected void btnOk_Click(object sender, EventArgs e)
        {
            //Save textbox txtUserName string property to Session "UserName"
            Session["UserName"] = txtUserName.Text;
        }

        protected void btnDemo2_Click(object sender, EventArgs e)
        {
            //Send user to demo2
            Response.Redirect("Demo2RichControls.aspx");
        }

        protected void btnDemo3_Click(object sender, EventArgs e)
        {
            //Send user to demo3
            Response.Redirect("Demo3ADO_NET.aspx");
        }
    }
}