using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using DT;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataClassesDataContext db = new DataClassesDataContext();
        FillTable ft = new FillTable(10, 7);
        ft.creatDataArray(db.Duty.ToList());
        ft.fillDataArrayToTable(DutyTable);
    }
}