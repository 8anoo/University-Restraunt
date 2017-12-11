using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class reseve : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(DataManager.constr);
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
                else if ((Session["type"].ToString() != "city") && (Session["type"].ToString() != "manager") && (Session["type"].ToString() != "student"))
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
            else if (Session["type"].ToString() == "student")
            {
                Response.Redirect(Session["type"] + "_employee.aspx");
            }
        }
        /* Next View */
        ///////////////////////////////////////////////
        protected void btn1_Click(object sender, EventArgs e)
        {
            SqlDataReader dr = DataManager.GetDataReader("select_reseve_checker", out con,
                            DataManager.CreateParameter("@init_date", System.Data.SqlDbType.Date, Calendar1.SelectedDate.ToShortDateString()),
                            DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox1.Text)));

            if(!dr.HasRows)
            {
                con.Close();
                txtbox2.Value = txtbox1.Text;

                txtbox_initdate.Text = Calendar1.SelectedDate.ToShortDateString();
                txtbox_finaldate.Text = Calendar2.SelectedDate.ToShortDateString();

                SqlDataReader dr2 = DataManager.GetDataReader("select_student_info", out con,
                        DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox2.Value)));

                if(dr2.HasRows)
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
                    Response.Write("<script>alert('This Student Is’t In The City !!!');</script>");
                }
            }
            else
            {
                con.Close();
                Response.Write("<script>alert('This Student Reseve Before !!!');</script>");
            }
        }

        /* Back view */
        ///////////////////////////////////////////////
        protected void btn2_Click(object sender, EventArgs e)
        {
            MultiView1.ActiveViewIndex = 0;
        }

        /* Save Button */
        protected void btn3_Click(object sender, EventArgs e)
        {
            DataManager.ExecuteNonQuery("insert_resevment",
                            DataManager.CreateParameter("@s_id",System.Data.SqlDbType.BigInt,long.Parse(txtbox2.Value)),
                            DataManager.CreateParameter("@total_money",System.Data.SqlDbType.Float,float.Parse(txtbox_totalmoney.Value)),
                            DataManager.CreateParameter("@total_days",System.Data.SqlDbType.Int,int.Parse(txtbox_totaldays.Value)),
                            DataManager.CreateParameter("@init_date",System.Data.SqlDbType.Date,DateTime.Parse(txtbox_initdate.Text)),
                            DataManager.CreateParameter("@final_date",System.Data.SqlDbType.Date,DateTime.Parse(txtbox_finaldate.Text)));
            DataManager.ExecuteNonQuery("insert_days",
                            DataManager.CreateParameter("@sat_f", System.Data.SqlDbType.Bit, CheckBoxList1.Items[0].Selected),
                            DataManager.CreateParameter("@sun_f", System.Data.SqlDbType.Bit, CheckBoxList1.Items[1].Selected),
                            DataManager.CreateParameter("@mon_f", System.Data.SqlDbType.Bit, CheckBoxList1.Items[2].Selected),
                            DataManager.CreateParameter("@tus_f", System.Data.SqlDbType.Bit, CheckBoxList1.Items[3].Selected),
                            DataManager.CreateParameter("@wed_f", System.Data.SqlDbType.Bit, CheckBoxList1.Items[4].Selected),
                            DataManager.CreateParameter("@thu_f", System.Data.SqlDbType.Bit, CheckBoxList1.Items[5].Selected),
                            DataManager.CreateParameter("@fri_f", System.Data.SqlDbType.Bit, CheckBoxList1.Items[6].Selected),
                            DataManager.CreateParameter("@sat_s", System.Data.SqlDbType.Bit, CheckBoxList2.Items[0].Selected),
                            DataManager.CreateParameter("@sun_s", System.Data.SqlDbType.Bit, CheckBoxList2.Items[1].Selected),
                            DataManager.CreateParameter("@mon_s", System.Data.SqlDbType.Bit, CheckBoxList2.Items[2].Selected),
                            DataManager.CreateParameter("@tus_s", System.Data.SqlDbType.Bit, CheckBoxList2.Items[3].Selected),
                            DataManager.CreateParameter("@wed_s", System.Data.SqlDbType.Bit, CheckBoxList2.Items[4].Selected),
                            DataManager.CreateParameter("@thu_s", System.Data.SqlDbType.Bit, CheckBoxList2.Items[5].Selected),
                            DataManager.CreateParameter("@fri_s", System.Data.SqlDbType.Bit, CheckBoxList2.Items[6].Selected));

            foreach (ListItem item in CheckBoxList1.Items)
            {
                item.Selected = false;
            }
            foreach (ListItem item in CheckBoxList2.Items)
            {
                item.Selected = false;
            }

            txtbox_totaldays.Value = txtbox_totalmoney.Value = "0";

            MultiView1.ActiveViewIndex = 0;

            //Response.Write("<script>alert('Data Saved...')</script>");

        }

        /* calc all Button */
        protected void btn4_Click(object sender, EventArgs e)
        {
            int x = 0;
            foreach (ListItem item in CheckBoxList1.Items)
            {
                if (item.Selected == true)
                    x++;
            }
            foreach (ListItem item in CheckBoxList2.Items)
            {
                if (item.Selected == true)
                    x++;
            }

            txtbox_totaldays.Value = x.ToString();
            txtbox_totalmoney.Value = (x * 5).ToString();
        }

        /* select all first*/
        protected void btn5_Click(object sender, EventArgs e)
        {
            if(Button5.Text=="Select All")
            {
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    item.Selected = true;
                }
                Button5.Text = "Un Select All";
            }
            else if(Button5.Text=="Un Select All")
            {
                foreach (ListItem item in CheckBoxList1.Items)
                {
                    item.Selected = false;
                }
                Button5.Text = "Select All";
            }
        }

        /* select all second*/
        protected void btn6_Click(object sender, EventArgs e)
        {
            if(Button6.Text=="Select All")
            {
                foreach (ListItem item in CheckBoxList2.Items)
                {
                    item.Selected = true;
                }
                Button6.Text = "Un Select All";
            }
            else if(Button6.Text=="Un Select All")
            {
                foreach (ListItem item in CheckBoxList2.Items)
                {
                    item.Selected = false;
                }
                Button6.Text = "Select All";
            }
        }
    }
}