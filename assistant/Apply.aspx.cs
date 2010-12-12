//   assistant_Apply class version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DT;
using LAS.DAL;

public partial class assistant_Apply : System.Web.UI.Page
{
    private const string LOGIN_PAGE="~/Login.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        if (isIdOrPwdOrNameEmpty())
        {
            ErrMessage.Text = "用户ID,密码,名字不能为空";
            return;
        }
        if (!register(TextBoxID.Text, TextBoxPwd.Text, TextBoxName.Text))
        {
            ErrMessage.Text = "注册失败！";
            return;
        }
        Response.Redirect(LOGIN_PAGE);
    }

    protected bool register(string id, string pwd, string name)
    {
        Assistants a = new Assistants { ID=id,name=name,password=pwd};
        AssistantHandler ah = new AssistantHandler(a);
        try
        {
            ah.Insert();
        }
        catch (Exception)
        {
            return false;
        }
        return true;
    }

    protected bool isIdOrPwdOrNameEmpty()
    {
        if (string.IsNullOrEmpty(TextBoxID.Text) || string.IsNullOrEmpty(TextBoxPwd.Text) || string.IsNullOrEmpty(TextBoxName.Text))
        {
            return true;
        }
        else
            return false;
    }
}