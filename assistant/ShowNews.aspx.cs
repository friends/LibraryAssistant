//   ShowNews version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境
//   Email: xxj050@163.com
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

public partial class assistant_ShowNews : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        int newId = int.Parse(Request.QueryString["newsId"]);
        News news = NewsHandler.getNewsById(newId);
        newsTitle.InnerText = news.title;
        content.InnerHtml = news.content;
        time.InnerText = news.publishTime.ToShortDateString();
    }
}