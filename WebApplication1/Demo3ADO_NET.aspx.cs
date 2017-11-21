using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//added ADO.NET namespaces
using System.Data;
using System.Data.SqlClient;

namespace WebApplication1
{
    public partial class Demo3ADO_NET : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //On Page_Load event if this is not a postback populate fields 
            if (this.IsPostBack == false)
            {
                //Populate lblUsername from session 
                lblUserName.Text = Convert.ToString(Session["UserName"]);
            }
        }

        protected void btnWelcomePage_Click(object sender, EventArgs e)
        {
            //Send user to WelcomePage
            Response.Redirect("WelcomePage.aspx");
        }
    }
}