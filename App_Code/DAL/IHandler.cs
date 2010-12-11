//   IHandler interface version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 杨海川 谢晓境 
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -11
//   =================================

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
///操作数据库中表的增删改操作
/// </summary>
interface IHandler
{
    void Insert();
    void Delete();
    void Submit();
}
