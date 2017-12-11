using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class restraunt_employee : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
            else if (Session["type"].ToString() != "restraunt")
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

        /* btn check reseve */
        protected void check_for_reseve_second_Click(object sender, EventArgs e)
        {
            Response.Redirect("check_for_reseve.aspx");
            //Response.Redirect("");
        }
        /* btn student info */
        protected void student_info_second_Click(object sender, EventArgs e)
        {
            Response.Redirect("student_info.aspx");
        }

        protected void quick_checker_Click(object sender, EventArgs e)
        {
            Response.Redirect("quick_checker.aspx");
        }
    }
}