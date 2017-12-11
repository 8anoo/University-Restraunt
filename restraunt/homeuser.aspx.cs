using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class homeuser : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
                Response.Redirect("login.aspx");
        }

        protected void logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["type"] = null;
            Response.Redirect("login.aspx");
        }

        protected void viewaccount_Click(object sender, EventArgs e)
        {
            if (Session["type"].ToString() == "city")
            {
                Response.Redirect(Session["type"] + "_employee.aspx");
            }
            else if (Session["type"].ToString() == "restraunt")
            {
                Response.Redirect(Session["type"] + "_employee.aspx");
            }
            else if (Session["type"].ToString() == "manager")
            {
                Response.Redirect(Session["type"] + "_employee.aspx");
            }
        }
    }
}