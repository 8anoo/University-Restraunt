using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class city_employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else if (Session["type"].ToString() != "city")
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
        /* btn check reseve */
        protected void check_for_reseve_Click(object sender, EventArgs e)
        {
            Response.Redirect("check_for_reseve.aspx");
        }
        /* btn student info */
        protected void student_info_Click(object sender, EventArgs e)
        {
            Response.Redirect("student_info.aspx");
        }
    }
}