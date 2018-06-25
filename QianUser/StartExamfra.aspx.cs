using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class QianUser_StartExamfra : System.Web.UI.Page
{
    Datacon dataconn = new Datacon();
    static int int_row1 = 0;//单选题题号索引
    static int int_row2 = 0;//多选题题号索引
    static int int_row1Point = 0;//单选题分数
    static int int_row2Point = 0;//多选题分数
    //============页面加载事件，从数据库中提取题目================
    protected void Page_Load(object sender, EventArgs e)
    {        
        if (!IsPostBack)
        {
            this.getCom(1);
            this.getCom(2);
        }
        Label3.Visible = Label4.Visible = Label7.Visible = Label8.Visible = Label9.Visible = Label10.Visible = false;
    }
    //=========================提交试卷===========================
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Label3.Visible = Label4.Visible = Label7.Visible = Label8.Visible = Label9.Visible = Label10.Visible = true;
        //生成试卷单
        this.lblStuID.Text = Session["StuName"].ToString();
        this.lblSubject.Text = Session["SelLession"].ToString();
        this.lblQuestion.Text = Session["SelTitle"].ToString();
        this.getCom(3);
        this.getCom(4);
        this.lblTotal.Text = Convert.ToString(int_row1Point + int_row2Point);
        dataconn.eccom("insert into tb_StuResult"
                    + "(stu_id,which_lesson,taotiid,taotiname,res_single,res_more)"
                    + "values('" + lblStuID.Text + "','" + lblSubject.Text + "',"
                    + Application["d2"].ToString() + ",'" + lblQuestion.Text + "'," + int_row1Point + "," + int_row2Point + ")");
        this.getCom(5);
        Response.Write("<script lanuage=javascript>alert('您确定要交卷吗？');localtion='StartExamfra.aspx';</script>");
        this.btnSubmit.Enabled = false;
    }
    //==================执行与数据库的关联操作=====================
    protected void getCom(int i)
    {
        //提取选择的课程的id
        string dd1 = Application["d1"].ToString();
        //提取选择的套题的id
        string dd2 = Application["d2"].ToString();
        SqlConnection con = dataconn.getcon();
        switch (i)
        {
            //从数据库中选择单选题
            case 1:
                SqlDataAdapter myadapter1 = new SqlDataAdapter("select * "
                    + "from tb_Questions where que_type='单选题'and que_lessonid='"
                    + dd1 + "'and que_taotiid='" + dd2 + "'order by id desc", con);
                DataSet myds1 = new DataSet();
                myadapter1.Fill(myds1);
                DataList1.DataSource = myds1;
                DataList1.DataBind();
                //生成单选题题号
                for (int tID1 = 1; tID1 <= DataList1.Items.Count; tID1++)
                {
                    Label lblSelect = (Label)DataList1.Items[tID1 - 1].FindControl("Label2");
                    lblSelect.Text = tID1.ToString() + "、";
                }
                break;
            //从数据库中选择多选题
            case 2:
                SqlDataAdapter myadapter2 = new SqlDataAdapter("select * "
                    + "from tb_Questions where que_type='多选题'and que_lessonid='"
                    + dd1 + "'and que_taotiid='" + dd2 + "'order by id desc", con);
                DataSet myds2 = new DataSet();
                myadapter2.Fill(myds2);
                DataList2.DataSource = myds2;
                DataList2.DataBind();
                //生成多选题题号
                for (int tID2 = 1; tID2 <= DataList2.Items.Count; tID2++)
                {
                    Label lblDSelect = (Label)DataList2.Items[tID2 - 1].FindControl("Label24");
                    lblDSelect.Text = tID2.ToString() + "、";
                }
                break;
            //核对单选题答案
            case 3:
                SqlDataAdapter myadapter3 = new SqlDataAdapter("select id,que_answer"
                    + " from tb_Questions where que_type='单选题'and que_lessonid="
                    + dd1 + " and que_taotiid=" + dd2 + " order by id desc", con);
                DataSet myds3 = new DataSet();
                myadapter3.Fill(myds3);
                DataRow[] row1 = myds3.Tables[0].Select();  //获取答案序列
                //计算单选题成
                foreach (DataRow answer1 in row1)
                {
                    int_row1 += 1;
                    if (int_row1<= 3) 
                    {
                        RadioButtonList rbl = (RadioButtonList)(DataList1.Items[int_row1 - 1].FindControl("RadioButtonList1"));
                        if (rbl.SelectedValue == "")
                        {
                            int_row1Point += 0; //如果改题未做，该题得分则为0
                        }
                        else
                        {
                            if (answer1["que_answer"].ToString().Trim() == rbl.SelectedValue.ToString().Trim())
                            {
                                int_row1Point += 40 / DataList1.Items.Count;
                                this.lblSel.Text = int_row1Point.ToString();
                            }
                        }
                    }
                }
                break;
            //核对多选题答案
            case 4:
                SqlDataAdapter myadapter4 = new SqlDataAdapter("select id,que_answer"
                    + " from tb_Questions where que_type='多选题'and que_lessonid="
                    + dd1 + " and que_taotiid=" + dd2 + " order by id desc", con);
                DataSet myds4 = new DataSet();
                myadapter4.Fill(myds4);
                DataRow[] row2 = myds4.Tables[0].Select();
                //计算多选题成绩
                foreach (DataRow answer2 in row2)
                {
                    int_row2 += 1;
                    if (int_row2 <= 3)
                    {
                        CheckBoxList cbl = (CheckBoxList)(DataList2.Items[int_row2 - 1].FindControl("CheckBoxList1"));
                        if (cbl.SelectedValue == "")
                        {
                            int_row2Point += 0;
                        }
                        else
                        {
                            this.TextBox1.Text = "";
                            for (int q = 0; q < cbl.Items.Count; q++)
                            {
                                if (cbl.Items[q].Selected == true)
                                {
                                    this.TextBox1.Text = TextBox1.Text.Trim() + cbl.Items[q].Value + ", ";
                                }
                            }
                            if (answer2["que_answer"].ToString().Trim() + "," == this.TextBox1.Text.Trim())
                            {
                                int_row2Point += 60 / DataList2.Items.Count;
                                this.lblDSel.Text = int_row2Point.ToString();
                            }
                        }
                    }
                }
                break;
        }
    }      
    //========================退出当前系统========================
    protected void btnExit_Click(object sender, EventArgs e)
    {
        Response.Write("<script lanuage=javascript>window.close();location='../Default.aspx'</script>");
    }
}
