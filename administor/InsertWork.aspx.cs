﻿//   administrator_InsertWork class version 1.0
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

public partial class administrator_InsertWork : System.Web.UI.Page
{
    private const string WORKARRANGE="WorkArrange.aspx";
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void ButtonOK_Click(object sender, EventArgs e)
    {
        if (!insertAWork(DropDownListID.SelectedValue,
            int.Parse(DropDownListDay.SelectedValue),
            int.Parse(DropDownListTime.SelectedValue)))
        {
            ErrMessage.Text = "插入失败！";
            return;
        }
        Response.Redirect(WORKARRANGE);
    }

    protected bool insertAWork(string id, int day, int time)
    {
        try
        {
            DataClassesDataContext db = new DataClassesDataContext();
            db.Duty.InsertOnSubmit(new Duty { assistantID = id, day = day, time = time });
            db.SubmitChanges();
        }
        catch (Exception)
        {
            return false;
        }
        return true;
    }


}