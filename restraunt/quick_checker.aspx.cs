using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Drawing;
using System.Data;

namespace restraunt
{

    public partial class quick_checker : System.Web.UI.Page
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
                else if ((Session["type"].ToString() != "restraunt") && (Session["type"].ToString() != "manager"))
                {
                    Response.Redirect(Session["type"] + "_employee.aspx");
                }
                Panel1.BackColor = Color.Yellow;
                Label1.Text = "";
                DropDownList2.Enabled = false;
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

        /* Chek Button */
        ///////////////////////////////////////////////
        protected void btn1_Click(object sender, EventArgs e)
        {
            int chck_drop = 0;
            //int x = 0, y = 15;
            //if ((int.Parse(DropDownList1.SelectedItem.Value) == x) && (int.Parse(DropDownList2.SelectedItem.Value) == y))
            //{
            //if (DropDownList1.Enabled == false && DropDownList2.Enabled == false)
            //    DropDownList1.Enabled = true;

            SqlDataReader dr = DataManager.GetDataReader("select_reseve_checker", out con,
                            DataManager.CreateParameter("@init_date", System.Data.SqlDbType.Date, Calendar1.SelectedDate.ToShortDateString()),
                            DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox1.Text)));

            #region If Statment
            if (dr.HasRows)
            {
                con.Close();

                //Check About Days Select All From Days Where ( r_id = @r_id && init_date = @init_date && s_id = @s_id )
                SqlDataReader dr2 = DataManager.GetDataReader("select_all_from_days", out con,
                                DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox1.Text)),
                                DataManager.CreateParameter("@init_date", System.Data.SqlDbType.Date, Calendar1.SelectedDate.ToShortDateString()));

                //Create Object Of DropDownList
                DropDownList drop = new DropDownList();
                if (DropDownList1.Enabled == true)
                {
                    drop = DropDownList1;
                }
                else if (DropDownList2.Enabled == true)
                {
                    drop = DropDownList2;
                }
                else
                {
                    chck_drop = 1;
                }

                //check if the user check a day or not
                if (chck_drop == 0)
                {
                    /////////////////////////////////////////catch Row Of Days
                    while (dr2.Read())
                    {
                        if ((bool)dr2[int.Parse(drop.SelectedItem.Value)] == true)
                        {
                            //SqlDataReader dr_reseve = new SqlDataReader();
                            //dr_reseve = dr2;
                            //Student Reseve
                            con.Close();

                            ////////////////////// Delete The Day If He Is Reseve ////////////////////////

                            DataManager.ExecuteNonQuery("update_days",
                                            DataManager.CreateParameter("@pos", System.Data.SqlDbType.Int, int.Parse(drop.SelectedItem.Value)),
                                            DataManager.CreateParameter("@s_id", System.Data.SqlDbType.BigInt, long.Parse(txtbox1.Text)),
                                            DataManager.CreateParameter("@init_date", System.Data.SqlDbType.Date, Calendar1.SelectedDate.ToShortDateString()));

                            //////////////////// End Delete The Day If He Is Reseve //////////////////////


                            Label1.Text = txtbox1.Text;
                            txtbox1.Text = "";
                            Panel1.BackColor = Color.Green;
                            break;
                        }
                        else
                        {
                            //Student Is’t Reseve
                            con.Close();



                            Label1.Text = txtbox1.Text;
                            txtbox1.Text = "";
                            Panel1.BackColor = Color.Red;
                            break;
                        }
                    }

                }
                else
                {
                    Response.Write("<script>alert('please select A Day...')</script>");
                }


            }
            else
            {
                con.Close();
                Label1.Text = txtbox1.Text;
                txtbox1.Text = "";

                Panel1.BackColor = Color.Red;

                /*Response.Write("<script>alert('This Student Is’t Reseve Before !!!')</script>");*/
            }
            #endregion
            //}
            //else
            //{
            //    Response.Redirect("<script>alert('Please Choose A Day...')</script>");
            //}
        }

        protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if(RadioButtonList1.SelectedItem.Value==0.ToString())
            {
                DropDownList1.Enabled = true;
                DropDownList2.Enabled = false;
            }
            else if (RadioButtonList1.SelectedItem.Value == 1.ToString())
            {
                DropDownList1.Enabled = false;
                DropDownList2.Enabled = true;
            }
        }
    }
}