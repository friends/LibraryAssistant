//   NewsEdit  version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境
//   Email: xxj050@163.com
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
using System.IO;
using System.Net;
using System.Text.RegularExpressions;
using DT;
using LAS.DAL;

public partial class admin_postedit : Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void btnEdit_Click(object sender, EventArgs e)
    {
        News news = new News();
        news.content = content.Value;
        news.title = txtTitle.Text;
        news.type = int.Parse(typeRadioButtonList.SelectedItem.Value);
        news.publishTime = DateTime.Now;
        NewsHandler newsHandler = new NewsHandler(news);
        newsHandler.Insert();
        Response.Write("<script>alert('添加成功!')</script>");
        Response.Redirect("NewsManage.aspx");
    }
}
