//   AssistantHandler class version 1.0
//   =================================
//   Copyright (C) 2010  yang haichuan
//   作者： 杨海川 
//   Email: yanghaichuan@live.cn
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵 谢晓境
//   最后检查时间: 2010 - 12 -11
//   =================================
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DT;
using LAS.Exceptions;


namespace LAS.DAL
{
    /// <summary>
    ///操作Assistants对象的handler
    /// </summary>
    public class AssistantHandler : IHandler
    {
        private static DataClassesDataContext db = new DataClassesDataContext();
        private Assistants currentAssistant;
        public AssistantHandler(Assistants a)
        {
            currentAssistant = a;
        }
        //接口IHandler的实现
        public void Insert()
        {
            try
            {
                db.Assistants.InsertOnSubmit(currentAssistant);
                Submit();
            }
            catch (Exception)
            {
                throw new InsertException();
            }
        }
        public void Delete()
        {
            try
            {
                db.Assistants.DeleteOnSubmit(currentAssistant);
                Submit();
                currentAssistant = null;
            }
            catch (Exception)
            {
                throw new DeleteException();
            }
        }

        public void Submit()
        {
            db.SubmitChanges();
        }

        /// <summary>
        /// 获取所有的Assistant表项
        /// </summary>
        /// <returns>Assistant列表</returns>
        public static List<Assistants> getAssistantsList()
        {
            return db.Assistants.ToList();
        }

        /// <summary>
        /// 根据id获取一个Assistant对象
        /// </summary>
        /// <param name="id">Assistant的id</param>
        /// <returns>获取到的Assistant对象</returns>
        public static Assistants getAssistantById(string id)
        {
            return db.Assistants.First(assistant => assistant.ID == id);
        }
    }
}
