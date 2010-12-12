using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class main : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (isLogin())
        {
            login.Text = "退出";
            login.NavigateUrl = "../Logout.aspx";
            apply.Visible = false;
            spliter.Visible = false;
            user.InnerText = "欢迎" + getLoginUserName() + " | ";
        }
    }

    private string getLoginUserName()
    {
        return (string)Session["userId"];
    }

    private bool isLogin()
    {
        return !string.IsNullOrEmpty(getLoginUserName());
    }
}
