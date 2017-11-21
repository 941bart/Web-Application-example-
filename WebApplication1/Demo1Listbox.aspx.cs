using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Demo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //On Page_Load event if this is not a postback populate fields 
            if (this.IsPostBack == false)
            {
                //Populate lblUsername from session 
                lblUserName.Text = Convert.ToString(Session["UserName"]);

                //Insert items into chklst
                chklst.Items.Add("Hello");
                chklst.Items.Add("World!");
                chklst.Items.Add("Programming");
                chklst.Items.Add("is");
                chklst.Items.Add("fun!");

            }
        }

        protected void cmdOK_Click(object sender, EventArgs e)
        {
            lblResult.Text = "You chose:<b>";
            //Use foreach loop 
            foreach (ListItem lstItem in chklst.Items)
            {
                if (lstItem.Selected == true)
                {
                    //Add text to label
                    lblResult.Text += "<br />" + lstItem.Text;
                }
            }
            lblResult.Text += "</b>";
        }

        protected void btnWelcomePage_Click(object sender, EventArgs e)
        {
            //Send user to WelcomePage
            Response.Redirect("WelcomePage.aspx");
        }

        protected void btnDemo2_Click(object sender, EventArgs e)
        {
            //Send user to Demo2
            Response.Redirect("Demo2RichControls.aspx");
        }
    }
}