using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DT;

public partial class assistant_Personal : System.Web.UI.Page
{
    private const string loginPage="../Login.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {
        string assistantId;
        if (string.IsNullOrEmpty(assistantId=getAssistantId()))
            Response.Redirect(loginPage);
        initDutyTable(assistantId);
    }

    private void initDutyTable(string id)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        FillTable ft = new FillTable(10, 7);
        ft.creatDataArray(db.Duty.Where(dutys=>dutys.assistantID==id).ToList());
        ft.fillDataArrayToTable(DutyTable);
    }

    private string getAssistantId()
    {
        return (string)Session["userId"];
    }
}