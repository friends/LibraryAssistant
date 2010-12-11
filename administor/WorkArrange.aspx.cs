//   administor_WorkArrange class version 1.0
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

public partial class administor_WorkArrange : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        
    }

    protected string decorate(int i)
    { 
        switch (i)
        {
            case 1: return "星期一";
            case 2: return "星期二";
            case 3: return "星期三";
            case 4: return "星期四";
            case 5: return "星期五";
            case 6: return "星期六";
            case 7: return "星期天";
            default: return "-";
        }
    }
}