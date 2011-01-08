using LAS.DAL;
using NUnit.Framework;
using System;
using DT;
using System.Collections.Generic;
using System.Linq;

namespace TestLAS
{
    
    
    /// <summary>
    ///这是 NewsHandlerTest 的测试类，旨在
    ///包含所有 NewsHandlerTest 单元测试
    ///</summary>
    [TestFixture()]
    public class NewsHandlerTest
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
        ///Submit 的测试
        ///</summary>
        [Test()]
        public void SubmitTest()
        {
            News n = new News { title="test", publishTime=DateTime.Parse("2011/1/1 0:00:00"), type=0};
            NewsHandler.DataClassesDataContext.News.InsertOnSubmit(n);
            NewsHandler nh = new NewsHandler(n);
            nh.Submit();
            try
            {
                Assert.IsTrue(NewsHandler.DataClassesDataContext.News.First(news => news.title == "test").Equals(n));
            }
            finally
            {
                NewsHandler.DataClassesDataContext.News.DeleteOnSubmit(n);
                NewsHandler.DataClassesDataContext.SubmitChanges();
            }
        }

        /// <summary>
        ///Insert 的测试
        ///</summary>
        [Test()]
        public void InsertTest()
        {
            News n = new News { title = "test", publishTime = DateTime.Parse("2011/1/1 0:00:00"), type = 0 };
            NewsHandler nh = new NewsHandler(n);
            nh.Insert();

            Assert.IsTrue(NewsHandler.DataClassesDataContext.News.First(news => news.title == "test").Equals(n));

            NewsHandler.DataClassesDataContext.News.DeleteOnSubmit(n);
            NewsHandler.DataClassesDataContext.SubmitChanges();
        }

        /// <summary>
        ///Delete 的测试
        ///</summary>
        [Test()]
        public void DeleteTest()
        {
            News n = new News { title = "test", publishTime = DateTime.Parse("2011/1/1 0:00:00"), type = 0 };
            NewsHandler.DataClassesDataContext.News.InsertOnSubmit(n);
            NewsHandler.DataClassesDataContext.SubmitChanges();
            NewsHandler nh = new NewsHandler(n);
            nh.Delete();

            Assert.IsFalse(NewsHandler.DataClassesDataContext.News.Any(news => news.title == "test"));

            if (NewsHandler.DataClassesDataContext.News.Any(news => news.title == "test"))
            {
                NewsHandler.DataClassesDataContext.News.DeleteOnSubmit(n);
                NewsHandler.DataClassesDataContext.SubmitChanges();
            }
        }

        /// <summary>
        ///NewsHandler 构造函数 的测试
        ///</summary>
        [Test()]
        public void NewsHandlerConstructorTest()
        {
            News news = new News();
            NewsHandler newsHandler = new NewsHandler(news);
            Assert.AreSame(news, newsHandler.CurrentNews);
        }

        /// <summary>
        ///getNewsById 的测试
        ///</summary>
        [Test()]
        public void getNewsByIdTest()
        {
            News n = new News { title = "test", publishTime = DateTime.Parse("2011/1/1 0:00:00"), type = 0 };
            NewsHandler.DataClassesDataContext.News.InsertOnSubmit(n);
            NewsHandler.DataClassesDataContext.SubmitChanges();

            News expected = NewsHandler.DataClassesDataContext.News.First(news => news.title == "test");
            News actual = NewsHandler.getNewsById(expected.newsId);

            NewsHandler.DataClassesDataContext.News.DeleteOnSubmit(n);
            NewsHandler.DataClassesDataContext.SubmitChanges();
            Assert.AreSame(expected, actual);
        }

        /// <summary>
        ///getNewsList 的测试
        ///</summary>
        [Test()]
        public void getNewsListTest()
        {
            List<News> expected = NewsHandler.DataClassesDataContext.News.ToList();
            List<News> actual = NewsHandler.getNewsList();
            Assert.AreEqual(expected, actual);
        }
    }
}
