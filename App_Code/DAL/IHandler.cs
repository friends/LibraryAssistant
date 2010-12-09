using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


public enum ErrorMessage
{
    OK,
    ERROR,
    ALREADY_EXIST,
    NOT_EXIST
}

/// <summary>
///操作数据库中表的增删改操作
/// </summary>
public interface IHandler
{
    ErrorMessage Insert(object o);
    ErrorMessage Delete();
    ErrorMessage Submit();
}
