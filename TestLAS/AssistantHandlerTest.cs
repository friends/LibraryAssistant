using LAS.DAL;
using NUnit.Framework;
using System;
using DT;
using System.Collections.Generic;
using System.Linq;

namespace TestLAS
{
    
    
    /// <summary>
    ///这是 AssistantHandlerTest 的测试类，旨在
    ///包含所有 AssistantHandlerTest 单元测试
    ///</summary>
    [TestFixture()]
    public class AssistantHandlerTest
    {


        private TestContext testContextInstance;

        /// <summary>
        ///获取或设置测试上下文，上下文提供
        ///有关当前测试运行及其功能的信息。
        ///</summary>
        public TestContext TestContext
        {
            get
            {
                return testContextInstance;
            }
            set
            {
                testContextInstance = value;
            }
        }

        


        /// <summary>
        ///getAssistantsList 的测试
        ///</summary>
        [Test()]
        public void getAssistantsListTest()
        {
            List<Assistants> expected = AssistantHandler.DB.Assistants.ToList(); 
            List<Assistants> actual=AssistantHandler.getAssistantsList();
            Assert.AreEqual(expected,actual);
        }

        /// <summary>
        ///getAssistantById 的测试
        ///</summary>
        [Test()]
        public void getAssistantByIdTest()
        {
            Assistants a = new Assistants { ID = "test", name = "test", password = "test" };
            AssistantHandler.DB.Assistants.InsertOnSubmit(a);
            AssistantHandler.DB.SubmitChanges();

            Assistants expected = AssistantHandler.DB.Assistants.First(assistant => assistant.ID == "test");
            Assistants actual = AssistantHandler.getAssistantById("test");

            AssistantHandler.DB.Assistants.DeleteOnSubmit(a);
            AssistantHandler.DB.SubmitChanges();
            Assert.AreSame(expected, actual);
        }

        /// <summary>
        ///Submit 的测试
        ///</summary>
        [Test()]
        public void SubmitTest()
        {
            Assistants a = new Assistants { ID = "test", name = "test", password = "test" };
            AssistantHandler.DB.Assistants.InsertOnSubmit(a);
            AssistantHandler ah = new AssistantHandler(a);
            ah.Submit();

            Assert.IsTrue(AssistantHandler.DB.Assistants.First(assistant => assistant.ID == "test").Equals(a));

            AssistantHandler.DB.Assistants.DeleteOnSubmit(a);
            AssistantHandler.DB.SubmitChanges();
        }

        /// <summary>
        ///Insert 的测试
        ///</summary>
        [Test()]
        public void InsertTest()
        {
            Assistants a = new Assistants { ID = "test", name = "test", password = "test" };
            AssistantHandler ah = new AssistantHandler(a);
            ah.Insert();
            Assert.IsTrue(AssistantHandler.DB.Assistants.First(assistant => assistant.ID == "test").Equals(a));

            AssistantHandler.DB.Assistants.DeleteOnSubmit(a);
            AssistantHandler.DB.SubmitChanges();
        }

        /// <summary>
        ///Delete 的测试
        ///</summary>
        [Test()]
        public void DeleteTest()
        {
            Assistants a = new Assistants { ID = "test", name = "test", password = "test" };
            AssistantHandler.DB.Assistants.InsertOnSubmit(a);
            AssistantHandler.DB.SubmitChanges();
            AssistantHandler ah = new AssistantHandler(a);
            ah.Delete();
            Assert.IsFalse(AssistantHandler.DB.Assistants.Any(assistant => assistant.ID == "test"));

            if (AssistantHandler.DB.Assistants.Any(assistant => assistant.ID == "test"))
            {
                AssistantHandler.DB.Assistants.DeleteOnSubmit(a);
                AssistantHandler.DB.SubmitChanges();
            }
        }

        /// <summary>
        ///AssistantHandler 构造函数 的测试
        ///</summary>
        [Test()]
        public void AssistantHandlerConstructorTest()
        {
            Assistants assistant = new Assistants();
            AssistantHandler assistantHandler = new AssistantHandler(assistant);
            Assert.AreSame(assistant, assistantHandler.CurrentAssistant);
        }
    }
}
