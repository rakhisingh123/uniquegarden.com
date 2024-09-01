using System;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Drawing;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Net.Sockets;

/// <summary>
/// Summary description for Message
/// </summary>
public class Message
{
    SqlConnection con = Connection.connect();
    SqlCommand cmd = new SqlCommand();
    public Message()
    {

    }

    private String ndetail;
    private String name_sm;
    private String name;

    public String Ndetail
    {
        get { return ndetail; }
        set { ndetail = value; }
    }

    public String Name
    {
        get { return name; }
        set { name = value; }
    }

    public DataSet news_details()
    {
        DataSet dst = new DataSet();
        cmd = new SqlCommand();
        cmd.CommandText = "Select * from tbl_news ORDER BY news_id DESC";
        cmd.CommandType = CommandType.Text;
        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter ad = new SqlDataAdapter(cmd);
        ad.Fill(dst);
        cmd.Connection.Close();
        return dst;
    }

    public DataSet admin_login(string username, string password)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM Admin WHERE username=@username and password=@password";
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);

        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;

    }
    public DataSet candidate_login(string username, string password)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM placed_candidates WHERE username=@username and password=@password";
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);

        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;

    }
    //====================================================contact================================//
    public bool contact(string name, string mobile, string email, string service, string message, string contact_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO contact(name,mobile,email,service,message,contact_dt) Values(@name,@mobile,@email,@service,@message,@contact_dt)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@service", service);
        cmd.Parameters.AddWithValue("@message", message);
        cmd.Parameters.AddWithValue("@contact_dt", contact_dt);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }
    //====================================================career================================//

    public bool career(string name, string mobile, string resume, string apply_for, string c_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO career(name,mobile,resume,apply_for,c_dt) Values(@name,@mobile,@resume,@apply_for,@c_dt)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Parameters.AddWithValue("@apply_for", apply_for);
        cmd.Parameters.AddWithValue("@resume", resume);
        cmd.Parameters.AddWithValue("@c_dt", c_dt);
        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }
    //====================================================enquiry================================//
    public bool appointment(string name, string mobile, string email, string pf_dt, string docter, string msg, string entry_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO appointment(name,mobile,email,pf_dt,docter,msg,entry_dt)Values(@name,@mobile,@email,@pf_dt,@docter,@msg,@entry_dt)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Parameters.AddWithValue("@pf_dt", pf_dt);
        cmd.Parameters.AddWithValue("@docter", docter);
        cmd.Parameters.AddWithValue("@msg", msg);
        cmd.Parameters.AddWithValue("@entry_dt", entry_dt);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }
    //====================================================feedback================================
    public bool feedback(string name, string mobile, string message, string feedback_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO feedback(name,mobile,message,feedback_dt) Values(@name,@mobile,@message,@feedback_dt)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        //cmd.Parameters.AddWithValue("@subject", subject);
        cmd.Parameters.AddWithValue("@message", message);
        cmd.Parameters.AddWithValue("@feedback_dt", feedback_dt);
        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }
    //===================================================callback================================
    public bool callback(string name, string email, string mobile, string requirement, string callback_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO callback(name,email,mobile,requirement,callback_dt) Values(@name,@email,@mobile,@requirement,@callback_dt)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Parameters.AddWithValue("@requirement", requirement);
        cmd.Parameters.AddWithValue("@callback_dt", callback_dt);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

    public bool placed_candidates(string username, string password, string name, string address, string image, string p_c_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO placed_candidates(username,password,name,address,image,p_c_dt) Values(@username,@password,@name,@address,@image,@p_c_dt)";
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@address", address);
        cmd.Parameters.AddWithValue("@image", image);
        cmd.Parameters.AddWithValue("@p_c_dt", p_c_dt);


        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

    public bool edit_placed_candidates(string username, string password, string name, string address, string image)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update placed_candidates set password=@password,name=@name,address=@address,image=@image where username=@username";
        cmd.Parameters.AddWithValue("@username", username);
        cmd.Parameters.AddWithValue("@password", password);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@address", address);
        cmd.Parameters.AddWithValue("@image", image);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }
    public bool edit_candidate_details(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select image from placed_candidates where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public DataSet validate_email_mobile(string email, string phone)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * FROM tbl_signup WHERE email=@email and phone=@phone";
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@phone", phone);

        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;
    }

    public DataSet validate_group(string group)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * From Groupmaster where group_nm=@group";
        cmd.Parameters.AddWithValue("@group", group);
        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;
    }
    public DataSet validate_user_group(string group)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "SELECT * From tbl_user_group where group_nm=@group";
        cmd.Parameters.AddWithValue("@group", group);
        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;
    }
    public DataSet creategroup(string group, string EntryDate)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into Groupmaster(group_nm,EntryDate) Values(@group_nm,@EntryDate)";
        cmd.Parameters.AddWithValue("@group_nm", group);
        cmd.Parameters.AddWithValue("@EntryDate", EntryDate);
        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;

    }

    public DataSet createusergroup(string group)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into tbl_user_group(group_nm) Values(@group_nm)";
        cmd.Parameters.AddWithValue("@group_nm", group);
        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;

    }

    public bool changepass(string pass)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tbl_login set pass=@pass";
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

    public bool updategroup(string group_nm, int id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tbl_user_group set group_nm=@group_nm where id=@id";
        cmd.Parameters.AddWithValue("@group_nm", group_nm);
        cmd.Parameters.AddWithValue("@id", id);
        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

    public DataSet validate_pass(string user)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "select * from tbl_profile where user_nm=@user";
        cmd.Parameters.AddWithValue("@user", user);
        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;
    }
    public DataSet profile(string name, string user, string pass, string add, string email, string mobile)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into tbl_profile(name,user_nm,pass,address,email,mobile) Values(@name,@user_nm,@pass,@address,@email,@mobile)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@user_nm", user);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@address", add);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;

    }
    public DataSet panchayat(string panchayat_nm, string entry_dt)
    {
        DataSet ds = new DataSet();
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "insert into tbl_panchayat_master(panchayat_nm,entry_dt) Values(@panchayat_nm,@entry_dt)";
        cmd.Parameters.AddWithValue("@panchayat_nm", panchayat_nm);
        cmd.Parameters.AddWithValue("@entry_dt", entry_dt);

        cmd.Connection = con;
        cmd.Connection.Open();
        SqlDataAdapter adp = new SqlDataAdapter(cmd);
        adp.Fill(ds);
        cmd.Connection.Close();
        return ds;

    }
    public bool add_news(string news)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO tbl_news(news) Values(@news)";
        cmd.Parameters.AddWithValue("@news", news);
        try
        {
            cmd.Connection = con;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            return true;
        }
        catch
        {
            return false;
        }
    }

    public bool log(string Name, string pass)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO tbl_login(user_id,pass) Values(@Name,@pass)";
        cmd.Parameters.AddWithValue("@Name", Name);
        cmd.Parameters.AddWithValue("@pass", pass);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

    public bool profile(string Name, string user, string group, string pass, string address, string email, string mobile_no)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO tbl_profile(name,user_nm,group_user,pass,address,email,mobile) Values(@name,@user_nm,@group,@pass,@address,@email,@mobile)";
        cmd.Parameters.AddWithValue("@name", Name);
        cmd.Parameters.AddWithValue("@user_nm", user);
        cmd.Parameters.AddWithValue("@group", group);
        cmd.Parameters.AddWithValue("@pass", pass);
        cmd.Parameters.AddWithValue("@address", address);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@mobile", mobile_no);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }
    public bool add_doctor(string book_type, int book_list_id, string name, string classes, string author, string remark, string photo)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO tbl_book_list(book_type,book_list_id,name,class,author,remark,photo)";
        cmd.CommandText += "Values(@book_type,@book_list_id,@name,@class,@author,@remark,@photo)";
        cmd.Parameters.AddWithValue("@book_type", book_type);
        cmd.Parameters.AddWithValue("@book_list_id", book_list_id);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@class", classes);
        cmd.Parameters.AddWithValue("@author", author);
        cmd.Parameters.AddWithValue("@remark", remark);
        cmd.Parameters.AddWithValue("@photo", photo);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }


    public bool update_doctor(string book_type, int book_list_id, string name, string classes, string author, string remark, string photo, int id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tbl_book_list set book_type=@book_type,book_list_id=@book_list_id,name=@name,class=@classes,author=@author,remark=@remark,photo=@photo where id=@id";
        cmd.Parameters.AddWithValue("@book_type", book_type);
        cmd.Parameters.AddWithValue("@book_list_id", book_list_id);
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@classes", classes);
        cmd.Parameters.AddWithValue("@author", author);
        cmd.Parameters.AddWithValue("@remark", remark);
        cmd.Parameters.AddWithValue("@photo", photo);
        cmd.Parameters.AddWithValue("@id", id);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

    public bool add_dist(string dist)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO tbl_dist(dist) Values(@dist)";
        cmd.Parameters.AddWithValue("@dist", dist);
        try
        {
            cmd.Connection = con;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            return true;
        }
        catch
        {
            return false;
        }
    }

    public bool add_career(string name, string Date_of_birth, string Place, string Contact_Number, string Email_ID, string Current_Location, string Position, string Qualification, string Grduation_Degree, string Masters_Degree, string Experience, string Key_Skills, string Resume)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO career(name,Date_of_birth,Place,Contact_Number,Email_ID,Current_Location,Position,Qualification,Grduation_Degree,Masters_Degree,Experience,Key_Skills,Resume)";
        cmd.CommandText += "Values(@name,@Date_of_birth,@Place,@Contact_Number,@Email_ID,@Current_Location,@Position,@Qualification,@Grduation_Degree,@Masters_Degree,@Experience,@Key_Skills,@Resume)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@Date_of_birth", Date_of_birth);
        cmd.Parameters.AddWithValue("@Place", Place);
        cmd.Parameters.AddWithValue("@Contact_Number", Contact_Number);
        cmd.Parameters.AddWithValue("@Email_ID", Email_ID);
        cmd.Parameters.AddWithValue("@Current_Location", Current_Location);
        cmd.Parameters.AddWithValue("@Position", Position);
        cmd.Parameters.AddWithValue("@Qualification", Qualification);
        cmd.Parameters.AddWithValue("@Grduation_Degree", Grduation_Degree);
        cmd.Parameters.AddWithValue("@Masters_Degree", Masters_Degree);
        cmd.Parameters.AddWithValue("@Experience", Experience);
        cmd.Parameters.AddWithValue("@Key_Skills", Key_Skills);
        cmd.Parameters.AddWithValue("@Resume", Resume);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;

    }


    public DataTable getCommanQuery(string dbname, string fname, string value)
    {
        con.Open();
        SqlDataAdapter adp = new SqlDataAdapter("select * from " + dbname + " where " + fname + "='" + value + "'", con);
        DataTable dt = new DataTable();
        adp.Fill(dt);
        con.Close();
        return dt;
    }

    public Boolean delete_member(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tbl_gallery where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public Boolean delete_book_list(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tbl_book_list where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public Boolean delete_dept_mem(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tbl_dept_member where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public Boolean Image_delete_media(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("delete from tbl_gallery where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public bool select_image(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select g_image from tbl_gallery where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public bool select_doctorimage(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select photo from tbl_book_list where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public bool select_slider_image(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select slid_image from tbl_slider where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public bool select_dept_image(int d)
    {
        con.Open();
        SqlCommand cmd = new SqlCommand("Select photo from tbl_dept_member where id=" + d + "", con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }

    public bool selectphoto(int d)
    {
        string sql = @"Select photo from tbl_employment_application where id=" + d + "";
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }
    public bool selectresume(int d)
    {
        string sql = @"Select resum from tbl_employment_application where id=" + d + "";
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }
    public bool selectpancard(int d)
    {
        string sql = @"Select pen_card from tbl_employment_application where id=" + d + "";
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }
    public bool selectcertificate(int d)
    {
        string sql = @"Select certificate from tbl_employment_application where id=" + d + "";
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }
    public bool selectaadharcard(int d)
    {
        string sql = @"Select adhar_card from tbl_employment_application where id=" + d + "";
        con.Open();
        SqlCommand cmd = new SqlCommand(sql, con);
        cmd.ExecuteNonQuery();
        con.Close();
        return true;
    }
    public bool setImagegallery(string g_image)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "INSERT INTO tbl_gallery(g_image,upload_dt)";
        cmd.CommandText += "VALUES (@g_image,@upload_dt)";
        cmd.Parameters.AddWithValue("@g_image", g_image);
        cmd.Parameters.AddWithValue("@upload_dt", DateTime.Now.ToShortDateString());
        try
        {
            cmd.Connection = con;
            cmd.Connection.Open();
            cmd.ExecuteNonQuery();
            cmd.Connection.Close();
            return true;
        }
        catch
        {
            return false;
        }
    }


    public bool delete_news(int ID)
    {
        try
        {
            SqlCommand delete = new SqlCommand();
            delete.CommandText = "Delete from tbl_news where news_id=@news_id";
            delete.Parameters.AddWithValue("@news_id", ID);
            delete.Connection = con;
            delete.Connection.Open();
            delete.ExecuteNonQuery();
            delete.Connection.Close();
            return true;
        }
        catch
        {
            return false;
        }
    }

    public bool delete_dist(int ID)
    {
        try
        {
            SqlCommand delete = new SqlCommand();
            delete.CommandText = "Delete from tbl_dist where dist_id=@dist_id";
            delete.Parameters.AddWithValue("@dist_id", ID);
            delete.Connection = con;
            delete.Connection.Open();
            delete.ExecuteNonQuery();
            delete.Connection.Close();
            return true;
        }
        catch
        {
            return false;
        }
    }


    public bool registration(string book_type, string book_list_id, string name, string classs, string author, string remark, string photo)
    {
        SqlCommand insert = new SqlCommand();
        insert.CommandText = " insert into tbl_book_list (book_type,book_list_id,name,class,author,remark,photo)";
        insert.CommandText += "Values(@book_type,@book_list_id,@name,@class,@author,@remark,@photo)";
        insert.Parameters.AddWithValue("@book_type", book_type);
        insert.Parameters.AddWithValue("@book_list_id", book_list_id);
        insert.Parameters.AddWithValue("@name", name);
        insert.Parameters.AddWithValue("@class", classs);
        insert.Parameters.AddWithValue("@author", author);
        insert.Parameters.AddWithValue("@remark", remark);
        insert.Parameters.AddWithValue("@photo", photo);
        insert.Connection = con;
        insert.Connection.Open();
        insert.ExecuteNonQuery();
        insert.Connection.Close();
        return true;
    }

    public bool emp_applicent(string user_nm, string appling_for, double desired_salary, string joining_date, string first_nm, string mid_nm, string last_nm, string address, string city, string email, string contact_no, string pin_code, string school_nm1, string location1, int years_attand1, string degree_resived1, string major1, string school_nm2, string location2, int years_attand2, string degree_resived2, string major2, string school_nm3, string location3, int years_attand3, string degree_resived3, string major3, string employer, string dates_employed, string work_phone, double pay_rate, string prev_to, string prev_add, string prev_city, string prev_provenc, string postal_code, string position, string duties_profermrmc, string reasion_for_leaving, string photo, string resum, string pen_card, string certificate, string adhar_card, string entery_date)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = " insert into tbl_employment_application (user_nm,appling_for,desired_salary,joining_date,first_nm,mid_nm,last_nm,address,city,email,contact_no,pin_code,school_nm1,location1,years_attand1,degree_resived1,major1,school_nm2,location2,years_attand2,degree_resived2,major2,school_nm3,location3,years_attand3,degree_resived3,major3,employer,dates_employed,work_phone,pay_rate,prev_to,prev_add,prev_city,prev_provenc,postal_code,position,duties_profermrmc,reasion_for_leaving,photo,resum,pen_card,certificate,adhar_card,entery_date)";
        cmd.CommandText += "Values(@user_nm,@appling_for,@desired_salary,@joining_date,@first_nm,@mid_nm,@last_nm,@address,@city,@email,@contact_no,@pin_code,@school_nm1,@location1,@years_attand1,@degree_resived1,@major1,@school_nm2,@location2,@years_attand2,@degree_resived2,@major2,@school_nm3,@location3,@years_attand3,@degree_resived3,@major3,@employer,@dates_employed,@work_phone,@pay_rate,@prev_to,@prev_add,@prev_city,@prev_provenc,@postal_code,@position,@duties_profermrmc,@reasion_for_leaving,@photo,@resum,@pen_card,@certificate,@adhar_card,@entery_date)";
        cmd.Parameters.AddWithValue("@user_nm", user_nm);
        cmd.Parameters.AddWithValue("@appling_for", appling_for);
        cmd.Parameters.AddWithValue("@desired_salary", desired_salary);
        cmd.Parameters.AddWithValue("@joining_date", joining_date);
        cmd.Parameters.AddWithValue("@first_nm", first_nm);
        cmd.Parameters.AddWithValue("@mid_nm", mid_nm);
        cmd.Parameters.AddWithValue("@last_nm", last_nm);
        cmd.Parameters.AddWithValue("@address", address);
        cmd.Parameters.AddWithValue("@city", city);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@contact_no", contact_no);
        cmd.Parameters.AddWithValue("@pin_code", pin_code);
        cmd.Parameters.AddWithValue("@school_nm1", school_nm1);
        cmd.Parameters.AddWithValue("@location1", location1);
        cmd.Parameters.AddWithValue("@years_attand1", years_attand1);
        cmd.Parameters.AddWithValue("@degree_resived1", degree_resived1);
        cmd.Parameters.AddWithValue("@major1", major1);
        cmd.Parameters.AddWithValue("@school_nm2", school_nm2);
        cmd.Parameters.AddWithValue("@location2", location2);
        cmd.Parameters.AddWithValue("@years_attand2", years_attand2);
        cmd.Parameters.AddWithValue("@degree_resived2", degree_resived2);
        cmd.Parameters.AddWithValue("@major2", major2);
        cmd.Parameters.AddWithValue("@school_nm3", school_nm3);
        cmd.Parameters.AddWithValue("@location3", location3);
        cmd.Parameters.AddWithValue("@years_attand3", years_attand3);
        cmd.Parameters.AddWithValue("@degree_resived3", degree_resived3);
        cmd.Parameters.AddWithValue("@major3", major3);
        cmd.Parameters.AddWithValue("@employer", employer);
        cmd.Parameters.AddWithValue("@dates_employed", dates_employed);
        cmd.Parameters.AddWithValue("@work_phone", work_phone);
        cmd.Parameters.AddWithValue("@pay_rate", pay_rate);
        cmd.Parameters.AddWithValue("@prev_to", prev_to);
        cmd.Parameters.AddWithValue("@prev_add", prev_add);
        cmd.Parameters.AddWithValue("@prev_city", prev_city);
        cmd.Parameters.AddWithValue("@prev_provenc", prev_provenc);
        cmd.Parameters.AddWithValue("@postal_code", postal_code);
        cmd.Parameters.AddWithValue("@position", position);
        cmd.Parameters.AddWithValue("@duties_profermrmc", duties_profermrmc);
        cmd.Parameters.AddWithValue("@reasion_for_leaving", reasion_for_leaving);
        cmd.Parameters.AddWithValue("@photo", photo);
        cmd.Parameters.AddWithValue("@resum", resum);
        cmd.Parameters.AddWithValue("@pen_card", pen_card);

        cmd.Parameters.AddWithValue("@certificate", certificate);
        cmd.Parameters.AddWithValue("@adhar_card", adhar_card);
        cmd.Parameters.AddWithValue("@entery_date", entery_date);
        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;

    }
    public bool update_emp_applicent(string appling_for, double desired_salary, string joining_date, string first_nm, string mid_nm, string last_nm, string address, string city, string email, string contact_no, string pin_code, string school_nm1, string location1, int years_attand1, string degree_resived1, string major1, string school_nm2, string location2, int years_attand2, string degree_resived2, string major2, string school_nm3, string location3, int years_attand3, string degree_resived3, string major3, string employer, string dates_employed, string work_phone, double pay_rate, string prev_to, string prev_add, string prev_city, string prev_provenc, string postal_code, string position, string duties_profermrmc, string reasion_for_leaving, string photo, string resum, string pen_card, string certificate, string adhar_card, int id)
    {
        SqlCommand cmd = new SqlCommand();
        cmd.CommandText = "Update tbl_employment_application set appling_for=@appling_for,desired_salary=@desired_salary,joining_date=@joining_date,first_nm=@first_nm,mid_nm=@mid_nm,last_nm=@last_nm,address=@address,city=@city,email=@email,contact_no=@contact_no,pin_code=@pin_code,school_nm1=@school_nm1,location1=@location1,years_attand1=@years_attand1,degree_resived1=@degree_resived1,major1=@major1,school_nm2=@school_nm2,location2=@location2,years_attand2=@years_attand2,degree_resived2=@degree_resived2,major2=@major2,school_nm3=@school_nm3,location3=@location3,years_attand3=@years_attand3,degree_resived3=@degree_resived3,major3=@major3,employer=@employer,dates_employed=@dates_employed,work_phone=@work_phone,pay_rate=@pay_rate,prev_to=@prev_to,prev_add=@prev_add,prev_city=@prev_city,prev_provenc=@prev_provenc,postal_code=@postal_code,position=@position,duties_profermrmc=@duties_profermrmc,reasion_for_leaving=@reasion_for_leaving,photo=@photo,resum=@resum,pen_card=@pen_card,certificate=@certificate,adhar_card=@adhar_card where id=@id";
        cmd.Parameters.AddWithValue("@appling_for", appling_for);
        cmd.Parameters.AddWithValue("@desired_salary", desired_salary);
        cmd.Parameters.AddWithValue("@joining_date", joining_date);
        cmd.Parameters.AddWithValue("@first_nm", first_nm);
        cmd.Parameters.AddWithValue("@mid_nm", mid_nm);
        cmd.Parameters.AddWithValue("@last_nm", last_nm);
        cmd.Parameters.AddWithValue("@address", address);
        cmd.Parameters.AddWithValue("@city", city);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@contact_no", contact_no);
        cmd.Parameters.AddWithValue("@pin_code", pin_code);
        cmd.Parameters.AddWithValue("@school_nm1", school_nm1);
        cmd.Parameters.AddWithValue("@location1", location1);
        cmd.Parameters.AddWithValue("@years_attand1", years_attand1);
        cmd.Parameters.AddWithValue("@degree_resived1", degree_resived1);
        cmd.Parameters.AddWithValue("@major1", major1);
        cmd.Parameters.AddWithValue("@school_nm2", school_nm2);
        cmd.Parameters.AddWithValue("@location2", location2);
        cmd.Parameters.AddWithValue("@years_attand2", years_attand2);
        cmd.Parameters.AddWithValue("@degree_resived2", degree_resived2);
        cmd.Parameters.AddWithValue("@major2", major2);
        cmd.Parameters.AddWithValue("@school_nm3", school_nm3);
        cmd.Parameters.AddWithValue("@location3", location3);
        cmd.Parameters.AddWithValue("@years_attand3", years_attand3);
        cmd.Parameters.AddWithValue("@degree_resived3", degree_resived3);
        cmd.Parameters.AddWithValue("@major3", major3);
        cmd.Parameters.AddWithValue("@employer", employer);
        cmd.Parameters.AddWithValue("@dates_employed", dates_employed);
        cmd.Parameters.AddWithValue("@work_phone", work_phone);
        cmd.Parameters.AddWithValue("@pay_rate", pay_rate);
        cmd.Parameters.AddWithValue("@prev_to", prev_to);
        cmd.Parameters.AddWithValue("@prev_add", prev_add);
        cmd.Parameters.AddWithValue("@prev_city", prev_city);
        cmd.Parameters.AddWithValue("@prev_provenc", prev_provenc);
        cmd.Parameters.AddWithValue("@postal_code", postal_code);
        cmd.Parameters.AddWithValue("@position", position);
        cmd.Parameters.AddWithValue("@duties_profermrmc", duties_profermrmc);
        cmd.Parameters.AddWithValue("@reasion_for_leaving", reasion_for_leaving);
        cmd.Parameters.AddWithValue("@photo", photo);
        cmd.Parameters.AddWithValue("@resum", resum);
        cmd.Parameters.AddWithValue("@pen_card", pen_card);

        cmd.Parameters.AddWithValue("@certificate", certificate);
        cmd.Parameters.AddWithValue("@adhar_card", adhar_card);
        cmd.Parameters.AddWithValue("@id", id);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }
    //============================================//FeedBack==========================================//
    public bool feedback(string name, string mobile, string email, string sub, string rev, string feedback_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO feedback(name,mobile,email,sub,rev,feedback_dt)Values(@name,@mobile,@email,@sub,@rev,@feedback_dt) ";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Parameters.AddWithValue("@email", email);     
        cmd.Parameters.AddWithValue("@sub", sub);
        cmd.Parameters.AddWithValue("@rev", rev);
        cmd.Parameters.AddWithValue("@feedback_dt", feedback_dt);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

    //============================================//Client Review==========================================//
    public bool clientrev(string image, string name, string opinion)
    {
        SqlCommand insert = new SqlCommand();
        insert.CommandText = "insert into client_review(image,name,opinion)";
        insert.CommandText += "values(@image,@name,@opinion)";
        insert.Parameters.AddWithValue("@image", image);
        insert.Parameters.AddWithValue("@name", name);
        insert.Parameters.AddWithValue("@opinion", opinion);
        insert.Connection = con;
        insert.Connection.Open();
        insert.ExecuteNonQuery();
        insert.Connection.Close();
        return true;

    }

    //============================================//Enquiry==========================================//
    public bool enquiry(string name, string mobile, string email, string query, string enquiry_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO enquiry(name,mobile,email,query,enquiry_dt)Values(@name,@mobile,@email,@query,@enquiry_dt)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@email", email);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Parameters.AddWithValue("@query", query);
        cmd.Parameters.AddWithValue("@enquiry_dt", enquiry_dt);

        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

    //============================================//Contact==========================================//
    public bool ud_cont(string name, string mobile, string message, string contact_dt)
    {
        SqlCommand cmd = new SqlCommand();

        cmd.CommandText = "INSERT INTO contact(name,mobile,contact_dt,kmessage)Values(@name,@mobile,@message,@contact_dt)";
        cmd.Parameters.AddWithValue("@name", name);
        cmd.Parameters.AddWithValue("@mobile", mobile);
        cmd.Parameters.AddWithValue("@message", message);       
        cmd.Parameters.AddWithValue("@contact_dt", contact_dt);
        cmd.Connection = con;
        cmd.Connection.Open();
        cmd.ExecuteNonQuery();
        cmd.Connection.Close();
        return true;
    }

}