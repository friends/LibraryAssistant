using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_NewsManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        NewsHandler newsHandler = new NewsHandler();
        newsListRepeater.DataSource = newsHandler.getNewsList();
        newsListRepeater.DataBind();

        if (Request.QueryString["operate"] == "delete")
        {
            newsHandler.SetCurrentNewsById(int.Parse(Request.QueryString["newsId"]));
            newsHandler.Delete();
            Response.Write("<script>alert('删除成功!');</script>");
            Response.Redirect("NewsManage.aspx");
        }
    }
}