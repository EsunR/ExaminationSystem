using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;



/// <summary>
/// Datacon 的摘要说明
/// </summary>
public class Datacon
{
	public Datacon()
	{
		
	}


    /// <summary>
    /// 用来连接数据库
    /// </summary>
    /// <returns></returns>
    public SqlConnection getcon()
    {
        //连接本地服务器数据库文件
        string strCon = WebConfigurationManager.ConnectionStrings["Examination"].ConnectionString;
        //连接内置数据库文件
        //string strCon = "Data Source=(LocalDB)\\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\\db_Examination_Data.MDF;Integrated Security=True";
        SqlConnection sqlCon = new SqlConnection(strCon);
        return sqlCon;
    }


    /// <summary>
    /// 用来执行sql语句
    /// </summary>
    /// <param name="sqlstr"></param>
    /// <returns></returns>
    public bool eccom(string sqlstr) 
    {
        SqlConnection con=this.getcon();
        con.Open();
        SqlCommand mycommand=new SqlCommand(sqlstr,con);
        try
        {
            mycommand.ExecuteNonQuery();
            return true;
        }
        catch 
        {
            return false;
        }
       finally
        {
            con.Close();
        }
    }


    /// <summary>
    /// 用来创建下拉列表
    /// </summary>
    /// <param name="DDL"></param>
    /// <param name="sqlstr3">sql查询语句</param>
    /// <param name="DTF"></param>
    /// <param name="DVF"></param>
    /// <returns></returns>
    public bool ecDropDownList(DropDownList DDL, string sqlstr3, string DTF, string DVF)
    {
        //创建数据库连接
        SqlConnection con = this.getcon();
        //打开数据库连接
        con.Open();
        //定义并初使化数据适配器
        SqlDataAdapter mydataadapter = new SqlDataAdapter(sqlstr3,con);
        //创建一个数据集mydataset
        DataSet mydataset = new DataSet();
        //将数据适配器中的数据填充到数据集中
        mydataadapter.Fill(mydataset);
        DDL.DataSource = mydataset;
        DDL.DataTextField = DTF;    //记录选择文本框的显示文字Text
        DDL.DataValueField = DVF;   //记录选择文本框的值Value
        try
        {
            
            DDL.DataBind();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            //关闭数据库连接
            con.Close();
        }
    }
    public bool ecadabind(GridView gv,string sqlstrl4)
    {
        //定义新的数据库连接
        SqlConnection con = this.getcon();
        //打开数据库连接
        con.Open();
        //定义并初使化数据适配器
        SqlDataAdapter mydataadapter = new SqlDataAdapter(sqlstrl4,con);
        //创建一个数据集mydataset
        DataSet mydataset = new DataSet();
        //将数据适配器中的数据填充到数据集中
        mydataadapter.Fill(mydataset);
        //将此数据集作为表格控件的数据源
        gv.DataSource=mydataset;
        try
        {
            //绑定数据库中数据
            gv.DataBind();
            //返回这个数据集
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            //关闭数据库连接
            con.Close();
        }
    }




    /// <summary>
    /// 对GridView绑定信息
    /// </summary>
    /// <param name="gv"></param>
    /// <param name="sqlstr5"></param>
    /// <param name="DNK"></param>
    /// <returns></returns>
    public bool ecadabindinfostring(GridView gv,string sqlstr5,string DNK)
    {
        SqlConnection con = this.getcon();
        con.Open();
        SqlDataAdapter mydataadapter = new SqlDataAdapter(sqlstr5,con);
        DataSet mydataset = new DataSet();
        mydataadapter.Fill(mydataset);
        gv.DataSource=mydataset;
        gv.DataKeyNames = new string[] { DNK };
        try
        {
            gv.DataBind();
            return true;
        }
        catch
        {
            return false;
        }
        finally
        {
            con.Close();
        }
    }



    /// <summary>
    /// 创建一个SqlCommand对象，表示要执行的SqlCom语句或存储过程
    /// </summary>
    /// <param name="SqlCom"></param>
    /// <returns></returns>
    public SqlDataReader ExceRead(string SqlCom)
    {
        SqlConnection con = this.getcon();
        con.Open();
        SqlCommand sqlcom = new SqlCommand(SqlCom, con);
        SqlDataReader read = sqlcom.ExecuteReader();
        return read;
    }
}
