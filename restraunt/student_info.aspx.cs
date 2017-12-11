using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class student_info : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(DataManager.constr);
        /* page load */
        ////////////////////////////////////////////////
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["user"] == null)
            {
                Response.Redirect("login.aspx");
            }
        }

        /* logout */
        /////////////////////////////////////////////////
        protected void logout_Click(object sender, EventArgs e)
        {
            Session["user"] = null;
            Session["type"] = null;
            Response.Redirect("login.aspx");
        }

        /* view account */
        ////////////////////////////////////////////
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

        /* Next View */
        ///////////////////////////////////////////////
        protected void btn1_Click(object sender, EventArgs e)
        {

            txtbox2.Value = txtbox1.Text;

            //txtbox_initdate.Text = Calendar1.SelectedDate.ToShortDateString();
            //txtbox_finaldate.Text = Calendar2.SelectedDate.ToShortDateString();

            SqlDataReader dr2 = DataManager.GetDataReader("select_student_info", out con,
                    DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox2.Value)));

            if (dr2.HasRows)
            {
                while (dr2.Read())
                {
                    txtbox_name.Value = dr2["s_name"].ToString();
                    txtbox_university.Value = dr2["s_university"].ToString();
                    txtbox_college.Value = dr2["s_college"].ToString();
                    txtbox_room.Value = dr2["s_room"].ToString();
                    txtbox_build.Value = dr2["s_build"].ToString();
                    txtbox_stage.Value = dr2["s_stage"].ToString();
                    txtbox_gender.Value = dr2["s_gender"].ToString();
                }
                con.Close();
                txtbox1.Text = "";
                MultiView1.ActiveViewIndex = 1;
            }
            else
            {
                con.Close();
                Response.Write("<script>alert('This Student Is’t In The City !!!')</script>");
            }
        }


        /* Back view */
        ///////////////////////////////////////////////
        protected void btn2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

    }
}