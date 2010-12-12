//   _Default class version 1.0
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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        initDutyTable();
    }

    private void initDutyTable()
    {
        DataClassesDataContext db = new DataClassesDataContext();
        FillTable ft = new FillTable(10, 7);
        ft.creatDataArray(db.Duty.ToList());
        ft.fillDataArrayToTable(DutyTable,NoValueDisplay.NoValueString);
    }
}