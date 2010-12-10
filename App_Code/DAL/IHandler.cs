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
