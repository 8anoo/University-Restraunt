using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace restraunt
{
    public partial class check_for_reseve : System.Web.UI.Page
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
            SqlDataReader dr = DataManager.GetDataReader("select_reseve_checker", out con,
                            DataManager.CreateParameter("@init_date", System.Data.SqlDbType.Date, Calendar1.SelectedDate.ToShortDateString()),
                            DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox1.Text)));

            if (dr.HasRows)
            {
                con.Close();
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
                        txtbox_build.Value = dr2["s_build"].ToString();
                        txtbox_gender.Value = dr2["s_gender"].ToString();
                    }
                    con.Close();
                    

                    /* select From Days And resevment */

                    SqlDataReader dr3 = DataManager.GetDataReader("select_resevment_days", out con,
                                    DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox2.Value)),
                                    DataManager.CreateParameter("@init_date", System.Data.SqlDbType.Date, Calendar1.SelectedDate.ToShortDateString()));

                    if(dr3.HasRows)
                    {
                        txtbox1.Text = "";

                        while (dr3.Read())
                        {
                            MultiView1.ActiveViewIndex = 1;

                            txtbox_totalmoney.Value = dr3["total_money"].ToString();
                            txtbox_totaldays.Value = dr3["total_days"].ToString();
                            txtbox_initdate.Text = dr3["init_date"].ToString();
                            txtbox_finaldate.Text = dr3["final_date"].ToString();

                            /******************** Fill Days ********************/
                            CheckBoxList1.Items[0].Selected = (bool)dr3["sat_f"];
                            CheckBoxList1.Items[1].Selected = (bool)dr3["sun_f"];
                            CheckBoxList1.Items[2].Selected = (bool)dr3["mon_f"];
                            CheckBoxList1.Items[3].Selected = (bool)dr3["tus_f"];
                            CheckBoxList1.Items[4].Selected = (bool)dr3["wed_f"];
                            CheckBoxList1.Items[5].Selected = (bool)dr3["thu_f"];
                            CheckBoxList1.Items[6].Selected = (bool)dr3["fri_f"];

                            CheckBoxList2.Items[0].Selected = (bool)dr3["sat_s"];
                            CheckBoxList2.Items[1].Selected = (bool)dr3["sun_s"];
                            CheckBoxList2.Items[2].Selected = (bool)dr3["mon_s"];
                            CheckBoxList2.Items[3].Selected = (bool)dr3["tus_s"];
                            CheckBoxList2.Items[4].Selected = (bool)dr3["wed_s"];
                            CheckBoxList2.Items[5].Selected = (bool)dr3["thu_s"];
                            CheckBoxList2.Items[6].Selected = (bool)dr3["fri_s"];


                            /******************** Fill Total ********************/
                            
                        }
                        

                        con.Close();

                        

                    }
                }
                else
                {
                    con.Close();
                    Response.Write("<script>alert('This Student Is’t In The City !!!')</script>");
                }
            }
            else
            {
                con.Close();
                Response.Write("<script>alert('This Student Is’t Reseve Before !!!')</script>");
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