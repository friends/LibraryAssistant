//   NewsManage  version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 11
//   检查者: 苏平
//   最后检查时间: 2010 - 12 -11
//   =================================

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAS.DAL;
using LAS.Exceptions;
using DT;

public partial class UI_UserManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        bindAssistantListToListRepeaterControl();

        if (isDeleteRequest())
        {
            try
            {
                deleteRequestAssistant();
                PromptSuccessMessage();
            }
            catch (DatabaseOperationException exception)
            {
                PromptErrorMessage(exception.Message);
            }
        }
    }

    /// <summary>
    /// 删除请求的新闻
    /// </summary>
    public void deleteRequestAssistant()
    {
        string id = Request.QueryString["id"];
        Assistants assistant = AssistantHandler.getAssistantById(id);
        AssistantHandler assistantHandler = new AssistantHandler(assistant);
        assistantHandler.Delete();
    }

    /// <summary>
    /// 判断是否是删除新闻的请求
    /// </summary>
    /// <returns>如果是,返回true,否则返回false</returns>
    private bool isDeleteRequest()
    {
        return (Request.QueryString["operate"] == "delete");
    }

    /// <summary>
    /// 提示成功信息
    /// </summary>
    public void PromptSuccessMessage()
    {
        Response.Write("<script>alert('删除成功!');</script>");
        Response.Redirect("UserManage.aspx");
    }


    /// <summary>
    /// 提示错误信息
    /// </summary>
    /// <param name="errorMessage"></param>
    public void PromptErrorMessage(string errorMessage)
    {
        Response.Write("<script>alert('删除失败!" + errorMessage + "');</script>");
        Response.Redirect("UserManage.aspx");
    }

    /// <summary>
    /// 绑定助理数据到控件上
    /// </summary>
    public void bindAssistantListToListRepeaterControl()
    {
        userlistRepeater.DataSource = AssistantHandler.getAssistantsList();
        userlistRepeater.DataBind();
    }
}