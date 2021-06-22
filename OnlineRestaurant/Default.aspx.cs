using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    static Int32 bookingid;
    static String startdate;
    static String enddate;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            Calendar1.SelectedDate = DateTime.Now.Date;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        startdate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList1.Text;
        enddate = Calendar1.SelectedDate.Year + "-" + Calendar1.SelectedDate.Month + "-" + Calendar1.SelectedDate.Day + " " + DropDownList2.Text;
        Response.Write(startdate);
        findAvailableTable();
        RadioButtonList1.Visible = true;
    }
    private void findAvailableTable()
    {

        String mycon = "Data Source=LAPTOP-T4TDBH1T\\MSSQLSERVER01; Initial Catalog=OnlineRestaurant; Integrated Security=True";
        String myquery = "select DISTINCT tableno from tablebookeddetail where ((dtstart between '" + startdate + "' and '" + enddate + "' ) or (dtend between '" + startdate + "' and '" + enddate + "' ))";
        SqlConnection con = new SqlConnection(mycon);
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = con;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        if (ds.Tables[0].Rows.Count > 0)
        {
            //RadioButtonList1.Items.Clear();
            Label3.Text = "該時段可用預約座位如下";
            foreach (DataRow dr in ds.Tables[0].Rows)
            {


                RadioButtonList1.Items.Remove(RadioButtonList1.Items.FindByValue(dr["tableno"].ToString()));

            }
            if (RadioButtonList1.Items.Count == 0)
            {
                Label3.Text = "該時段沒有座位可預約";
            }

        }
        else
        {
            Label3.Text = "該時段可用預約座位如下";

        }
        con.Close();
    }
    public void GenerateBookingID()
    {
        String mycon = "Data Source=LAPTOP-T4TDBH1T\\MSSQLSERVER01;Initial Catalog=OnlineRestaurant;Integrated Security=True";
        SqlConnection scon = new SqlConnection(mycon);
        String myquery = "select bookingid from TableBookedDetail";
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = myquery;
        cmd.Connection = scon;
        SqlDataAdapter da = new SqlDataAdapter();
        da.SelectCommand = cmd;
        DataSet ds = new DataSet();
        da.Fill(ds);
        scon.Close();
        if (ds.Tables[0].Rows.Count < 1)
        {
            bookingid = 0001;

        }
        else
        {



            String mycon1 = "Data Source=LAPTOP-T4TDBH1T\\MSSQLSERVER01;Initial Catalog=OnlineRestaurant;Integrated Security=True";
            SqlConnection scon1 = new SqlConnection(mycon1);
            String myquery1 = "select max(bookingid) from TableBookedDetail";
            SqlCommand cmd1 = new SqlCommand();
            cmd1.CommandText = myquery1;
            cmd1.Connection = scon1;
            SqlDataAdapter da1 = new SqlDataAdapter();
            da1.SelectCommand = cmd1;
            DataSet ds1 = new DataSet();
            da1.Fill(ds1);


            bookingid = Convert.ToInt32(ds1.Tables[0].Rows[0][0].ToString());

            bookingid = bookingid + 1;
            scon1.Close();
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        GenerateBookingID();
        String updatepass = "insert into tablebookeddetail(bookingid,tableno,customername,totalperson,dtstart,dtend) values(" + bookingid + ",'" + RadioButtonList1.SelectedItem.Text + "','" + TextBox1.Text + "'," + TextBox2.Text + ",'" + startdate + "','" + enddate + "')";
        String mycon1 = "Data Source=LAPTOP-T4TDBH1T\\MSSQLSERVER01;Initial Catalog=OnlineRestaurant;Integrated Security=True";
        SqlConnection s = new SqlConnection(mycon1);
        s.Open();
        SqlCommand cmd1 = new SqlCommand();
        cmd1.CommandText = updatepass;
        cmd1.Connection = s;
        cmd1.ExecuteNonQuery();
        Label4.Text ="您的用餐號碼為 " + bookingid +" 號 " + " 座位為 " +RadioButtonList1.SelectedItem.Text + " 用餐時間為 " + startdate + " 到 " + enddate;
    }

    protected void RadioButtonList1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}