using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btn1_Click(object sender, EventArgs e)
        {
            if(txtbox1.Value=="city"&&txtbox2.Value=="city")
            {
                Session["user"] = txtbox1.Value;
                Session["type"] = "city";
                Response.Redirect("city_employee.aspx");
            }
            else if (txtbox1.Value == "restraunt" && txtbox2.Value == "restraunt")
            {
                Session["user"] = txtbox1.Value;
                Session["type"] = "restraunt";
                Response.Redirect("restraunt_employee.aspx");
            }
            else if (txtbox1.Value == "manager" && txtbox2.Value == "manager")
            {
                Session["user"] = txtbox1.Value;
                Session["type"] = "manager";
                Response.Redirect("manager_employee.aspx");
            }
            else if (txtbox1.Value == "student" && txtbox2.Value == "student")
            {
                Session["user"] = txtbox1.Value;
                Session["type"] = "student";
                Response.Redirect("student_employee.aspx");
            }
            else
            {
                Response.Write("<script>alert('UserName Or Password Invalid');</script>");
            }
        }
    }
}