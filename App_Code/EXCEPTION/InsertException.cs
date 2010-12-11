//   InsertException class version 1.0
//   ==================================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境 
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 6
//   检查者: 陈兵
//   最后检查时间: 2010 - 12 -6
//   ==================================================

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LAS.Exceptions
{
    /// <summary>
    /// 数据库插入异常类
    /// </summary>
    public class InsertException : DatabaseOperationException
    {
        public InsertException()
        {
            // do nothing
        }
    }
}