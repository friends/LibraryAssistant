//   FillTable class version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 29
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI.WebControls;
using System.Web.UI.HtmlControls;
using System.Drawing;
using DT;



public enum NoValueDisplay
{
    NoValueString,
    Nothing
}
/// <summary>
///通过一个Duty的list来填充相应的TableUI控件
/// </summary>
public class FillTable
{
    private List<string>[][] dataArray;
    private int rowNum;
    private int colNum;
    private NoValueDisplay noValueSign;

    public int RowNum
    {
        get 
        {
            return rowNum;
        }
    }

    public int ColNum
    {
        get
        {
            return colNum;
        }
    }

    public List<string>[][] DataArray
    {
        get
        {
            return dataArray;
        }
    }

    public NoValueDisplay NoValueSign
    {
        get
        {
            return noValueSign;
        }
    }

    public FillTable(int rowNum, int colNum)
    {
        this.rowNum = rowNum;
        this.colNum = colNum;
        initArray(rowNum, colNum);
    }

    private void initArray(int rowNum, int colNum)
    {
        dataArray = new List<string>[rowNum][];
        for (int i = 0; i < rowNum; i++)
            dataArray[i] = new List<string>[colNum];
        for (int i = 0; i < rowNum; i++)
            for (int j = 0; j < colNum; j++)
                dataArray[i][j] = new List<string>();
    }


    public void creatDataArray(List<Duty> dutys)
    {
        foreach (Duty duty in dutys)
        {
            putInDataArray(duty);
        }
    }

    private void putInDataArray(Duty duty)
    {
        int row = duty.time;
        int col = duty.day-1;
        dataArray[row][col].Add(duty.Assistants.name);
    }

    public void fillDataArrayToTable(Table t,NoValueDisplay sign)
    {
        noValueSign = sign;
        for (int row = 0; row < rowNum; row++)
        {
            TableRow newTableRow = new TableRow();
            newTableRow.Cells.Add(getTab(row));
            for (int col = 0; col < colNum; col++)
            {
                newTableRow.Cells.Add(getCell(row, col));
            }
            t.Rows.Add(newTableRow);
        }

    }

    private TableCell getTab(int row)
    {
        TableCell tab = new TableCell();
        tab.Text = "时间" + row;
        return tab;
    }

    private string getTitle(List<string> strList)
    {
        if (strList.Count == 0)
            return getNoValueShow();
        else if (strList.Count > 1)
            return strList.First() + "...";
        else
            return strList.First();
    }

    private string getNoValueShow()
    {
        if (noValueSign == NoValueDisplay.Nothing)
            return "";
        else if (noValueSign == NoValueDisplay.NoValueString)
            return "没有数据";
        else
            return "";
    }
    private string getWholeStringFromStringList(List<string> strList)
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

    private TableCell getCell(int row, int col)
    {
        TableCell c = new TableCell();
        fillCell(row, col, c);
        return c;
    }

    private void fillCell(int row, int col, TableCell c)
    {
        if (dataArray[row][col].Count <= 1)
        {
            fillCellWithText(row, col, c);
        }
        else
        {
            fillCellWithLink(row, col, c);
        }
    }

    private void fillCellWithLink(int row, int col, TableCell c)
    {
        HtmlAnchor a = new HtmlAnchor();
        a.InnerText = getTitle(dataArray[row][col]);
        a.Attributes.Add("onclick", "alert('" + getWholeStringFromStringList(dataArray[row][col]) + "')");
        c.Controls.Add(a);
    }

    private void fillCellWithText(int row, int col, TableCell c)
    {
        c.Text = getTitle(dataArray[row][col]);
        if (c.Text == "没有数据")
            c.ForeColor = Color.Red;
    }
}