//   UI_Login class version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================

using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.Configuration;
using System.Linq;
using DT;
using LAS.DAL;

public partial class UI_Login : System.Web.UI.Page
{
    private const string personalPage="assistant/Personal.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btnLogin_Click(object sender, EventArgs e)
    {
        if (isIdOrPwdEmpty())
        {
            lblMessage.Text = "用户名或密码不能为空！";
            return;
        }
        if(!isPwdCorrect(txtUserName.Text,txtPassword.Text))
        {
            lblMessage.Text = "密码或用户名错误";
            return;
        }
        logIn(txtUserName.Text);
        Response.Redirect(personalPage);
    }

    protected void logIn(string id)
    {
        Session["userId"] = id;
    }

    protected bool isIdOrPwdEmpty()
    {
        if (string.IsNullOrEmpty(txtUserName.Text) || string.IsNullOrEmpty(txtPassword.Text))
        {
            return true;
        }
        else
            return false;
    }

    protected bool isPwdCorrect(string id,string pwd)
    {
        DataClassesDataContext db=new DataClassesDataContext();
        try
        {
            Assistants a = db.Assistants.First(ass => ass.ID == id);
            if (a.password == pwd)
                return true;
            else
                return false;
        }
        catch (Exception)
        {
            return false;
        }
    }
}