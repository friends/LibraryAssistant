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
        private DataClassesDataContext db;
        public Assistants currentAssistant;
        public AssistantHandler(Assistants a)
        {
            db = new DataClassesDataContext();
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
            catch (Exception ex)
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
            catch (Exception ex)
            {
                throw new DeleteException();
            }
        }

        public void Submit()
        {
            db.SubmitChanges();
        }
    }
}
