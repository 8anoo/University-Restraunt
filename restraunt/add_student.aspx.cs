using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class add_student : System.Web.UI.Page
    {
        /* page load */
        ////////////////////////////////////////////////
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Session["user"] == null)
                {
                    Response.Redirect("login.aspx");
                }
                else if (Session["type"].ToString() != "manager")
                {
                    Response.Redirect(Session["type"] + "_employee.aspx");
                }
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

        /* Add Student*/

        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con=new SqlConnection(DataManager.constr);

            SqlDataReader dr = DataManager.GetDataReader("select_student_id", out con,
                            DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox2.Text)));

            if(!dr.HasRows)
            {
                DataManager.ExecuteNonQuery("insert_student",
                            DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox2.Text)),
                            DataManager.CreateParameter("@s_name", System.Data.SqlDbType.NVarChar, txtbox_name.Value),
                            DataManager.CreateParameter("@s_university", System.Data.SqlDbType.NVarChar, txtbox_university.Value),
                            DataManager.CreateParameter("@s_college", System.Data.SqlDbType.NVarChar, txtbox_college.Value),
                            DataManager.CreateParameter("@s_room", System.Data.SqlDbType.Int, int.Parse(txtbox_room.Text)),
                            DataManager.CreateParameter("@s_build", System.Data.SqlDbType.NVarChar, txtbox_build.Value),
                            DataManager.CreateParameter("@s_stage", System.Data.SqlDbType.NVarChar, txtbox_stage.Value),
                            DataManager.CreateParameter("@s_gender", System.Data.SqlDbType.NVarChar, txtbox_gender.Value));


                txtbox2.Text = txtbox_name.Value = txtbox_university.Value = txtbox_college.Value = txtbox_room.Text = txtbox_build.Value = txtbox_stage.Value = txtbox_gender.Value = "";
                Response.Write("<script>alert('Data Inserted')</script>");
            }
            else
            {
                Response.Write("<script>alert('This National Id Is Inserted Befor... Try Another...')</script>");
            }
            
        }



    }
}