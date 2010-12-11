//   FillTable class version 1.0
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
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using DT;

/// <summary>
///通过一个Duty的list来填充相应的TableUI控件
/// </summary>
public class FillTable
{
    public FillTable(int rowNum, int colNum)
    {
        this.rowNum = rowNum;
        this.colNum = colNum;
        initArray(rowNum, colNum);
    }

    protected void initArray(int rowNum, int colNum)
    {
        dataArray = new List<string>[rowNum][];
        for (int i = 0; i < rowNum; i++)
            dataArray[i] = new List<string>[colNum];
        for (int i = 0; i < rowNum; i++)
            for (int j = 0; j < colNum; j++)
                dataArray[i][j] = new List<string>();
    }
    protected List<string>[][] dataArray;
    protected int rowNum;
    protected int colNum;

    public void creatDataArray(List<Duty> dutys)
    {
        foreach (Duty d in dutys)
        {
            putInDataArray(d);
        }
    }

    protected void putInDataArray(Duty d)
    {
        int row = d.time;
        int col = d.day-1;
        dataArray[row][col].Add(d.assistantID);
    }

    public void fillDataArrayToTable(Table t)
    {
        for (int row = 0; row < rowNum; row++)
        {
            TableRow r = new TableRow();
            r.Cells.Add(getTab(row));
            for (int col = 0; col < colNum; col++)
            {
                r.Cells.Add(getCell(row, col));
            }
            t.Rows.Add(r);
        }

    }

    protected TableCell getTab(int row)
    {
        TableCell tab = new TableCell();
        tab.Text = "时间" + row;
        return tab;
    }

    protected string getTitle(List<string> strList)
    {
        if (strList.Count == 0)
            return "-";
        else if (strList.Count > 1)
            return strList.First() + "...";
        else
            return strList.First();
    }
    protected string getAll(List<string> strList)
    {
        if (strList.Count <= 1)
            return null;
        else
        {
            string strAll = "";
            for (int i = 0; i < strList.Count; i++)
            {
                strAll += strList[i];
                if (i != strList.Count - 1)
                    strAll += ",";
            }
            return strAll;
        }
    }

    protected TableCell getCell(int row, int col)
    {
        TableCell c = new TableCell();
        if (dataArray[row][col].Count <= 1)
            c.Text = getTitle(dataArray[row][col]);
        else
        {
            HtmlAnchor a = new HtmlAnchor();
            a.InnerText = getTitle(dataArray[row][col]);
            a.Attributes.Add("onclick", "alert('" + getAll(dataArray[row][col]) + "')");
            c.Controls.Add(a);
        }
        return c;
    }
}