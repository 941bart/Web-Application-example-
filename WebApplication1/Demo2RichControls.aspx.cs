using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class Demo2 : System.Web.UI.Page
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

        protected void CalendarExample_SelectionChanged(object sender, EventArgs e)
        {
            lblCalendarExampleOutput.Text = "You selected these dates:<br />";

            //ForEach date selected add to lblCalndarExampleOutput text
            foreach (DateTime dt in CalendarExample.SelectedDates)
            {
                lblCalendarExampleOutput.Text += dt.ToLongDateString() + "<br />";
            }
        }

        protected void CalendarExample_DayRender(object sender, DayRenderEventArgs e)
        {
            //DayRender for my birthday!
            //Check for September 14 in any year and format it 
            if (e.Day.Date.Day == 14 && e.Day.Date.Month == 9)
            {
                e.Cell.BackColor = System.Drawing.Color.Yellow;

                // Add some static text to the cell.
                Label lbl = new Label();
                lbl.Text = "<br />My Birthday!";
                e.Cell.Controls.Add(lbl);
            }
        }

        protected void btnWelcomePage_Click(object sender, EventArgs e)
        {
            //Send user to WelcomePage
            Response.Redirect("WelcomePage.aspx");
        }

        protected void btnDemo2_Click(object sender, EventArgs e)
        {
            //Send user to Demo3
            Response.Redirect("Demo3ADO_NET.aspx");
        }
    }
}