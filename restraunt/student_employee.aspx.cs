using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class student_employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else if (Session["type"].ToString() != "student")
            {
                Response.Redirect(Session["type"] + "_employee.aspx");
            }
        }
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["type"] = null;
            Response.Redirect("login.aspx");
        }

        /* btn reseve */
        protected void reseve_Click(object sender, EventArgs e)
        {
            Response.Redirect("reseve.aspx");
        }
    }
}