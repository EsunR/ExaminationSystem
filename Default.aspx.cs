using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    Datacon dataconn=new Datacon();
    protected void Page_Load(object sender, EventArgs e)
    {
        Session["StuName"] = this.txtUserName.Text;//��¼ѧ��ѧ��
        if (!IsPostBack)
        {
            Random rnd = new Random();
            labValidate.Text = rnd.Next(1000, 9999).ToString();
        }
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        //�ж���֤���Ƿ�����
        if (txtValidate.Text != txtValidate.Text)
        {
            Response.Write("<script language=javascript>alert('��֤������')location='javascript:history.go(-1)'</script>");
        }
        else
        {
            //
            if(DropDownList1.SelectedValue == "ѧ��")
            {
                getcom(2);
            }
            else if(DropDownList1.SelectedValue == "��ʦ")
            {
                getcom(3);
            }
            else if(DropDownList1.SelectedValue == "����Ա")
            {
                getcom(1);
            }
        }
    }
    //�Զ��巽��getcom�������ж��Ƿ��ǹ���Ա���ǿ���
    private void getcom(int i)
    {
        //�����ݿ����ӣ������ù������е�getcon����
        SqlConnection con = dataconn.getcon();
        con.Open();
        //����һ���µ�SqlCommandʵ������
        SqlCommand com = con.CreateCommand();
        switch (i)
        {
            case 1:
                com.CommandText = "select count(*) from tb_Administrator where Name='" + this.txtUserName.Text + "'and PWD='" + this.txtPwd.Text + "'";
                //��ȡSQL����ֵ ǿ��ת������ֵ����
                int count1 = Convert.ToInt32(com.ExecuteScalar());
                //�ж����ݿ����Ƿ��������
                if (count1 > 0)
                {
                    Application["Name"] = txtUserName.Text;//�ɹ�����¼����ԱID
                    Application["PWD"] = txtPwd.Text;//�ɹ�����¼����Ա����
                    //�����¼�ɹ�������ת������Աҳ��
                    Page.Response.Redirect("HouAdmin/admin.aspx");
                }
                else
                {
                    //�����¼ʧ�ܣ��򵯳�������Ϣ
                    Response.Write("<script lanuage=javascript>alert('�û�������������');location='javascript:history.go(-1)'</script>");
                }
                break;
            case 2:
                com.CommandText = "select count(*) from tb_Student where ID='" + txtUserName.Text + "' and PWD='" + txtPwd.Text + "'";
                int count2 = Convert.ToInt32(com.ExecuteScalar());
                if (count2 > 0)
                {
                    Application["ID"] = txtUserName.Text;//��¼��¼ѧ��ID
                    Application["PWD"] = txtPwd.Text;//��¼��¼ѧ������
                    Page.Response.Redirect("QianUser/zaixian_kaoshi.aspx");
                }
                else
                {
                    Response.Write("<script lanuage=javascript>alert('�û�������������');location='javascript:history.go(-1)'</script>");
                    return;
                }
                break;
            case 3:
                com.CommandText = "select count(*) from tb_Teacher where Name='" + txtUserName.Text + "' and PWD='" + txtPwd.Text + "'";
                int count3 = Convert.ToInt32(com.ExecuteScalar());
                if (count3 > 0)
                {
                    Application["Name"] = txtUserName.Text;//��¼��ʦID
                    Application["PWD"] = txtPwd.Text;//��¼��ʦ����
                    Page.Response.Redirect("Teacher/taoti_xinxi.aspx");
                }
                else
                {
                    Response.Write("<script lanuage=javascript>alert('�û�������������');location='javascript:history.go(-1)'</script>");
                    return;
                }
                break;
        }
    }
    //�һ�����
    protected void Button3_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("InfoPwd.aspx");
    }
    //�û�ע��

    protected void btnZhunce_Click(object sender, EventArgs e)
    {
        Page.Response.Redirect("zhuce.aspx");
    }
}