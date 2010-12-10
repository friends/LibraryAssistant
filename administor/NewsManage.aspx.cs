using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using LAS.DAL;
using DT;
using LAS.Exceptions;

public partial class UI_NewsManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        newsListRepeater.DataSource = NewsHandler.getNewsList();
        newsListRepeater.DataBind();

        if (Request.QueryString["operate"] == "delete")
        {
            try
            {
                int id = int.Parse(Request.QueryString["newsId"]);
                News news = NewsHandler.getNewsById(id);
                NewsHandler newsHandler = new NewsHandler(news);
                newsHandler.Delete();
                Response.Write("<script>alert('删除成功!');</script>");
                Response.Redirect("NewsManage.aspx");
            }
            catch (DatabaseOperationException exception)
            {
                Response.Write("<script>alert('删除失败!" + exception.Message + "');</script>");
                Response.Redirect("NewsManage.aspx");
            }
        }
    }
}