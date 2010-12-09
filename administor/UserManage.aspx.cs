using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class UI_UserManage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        //UserHandler userHandler = new UserHandler();
        //userlistRepeater.DataSource = userHandler.getUserList();
        //userlistRepeater.DataBind();

        if (Request.QueryString["operate"] == "delete")
        {
            //userHandler.SetCurrentUserById(Request.QueryString["userId"]);
            //userHandler.Delete();
            Response.Write("<script>alert('删除成功!');</script>");
            Response.Redirect("UserManage.aspx");
        }
    }
}