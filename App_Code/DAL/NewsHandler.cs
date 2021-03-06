﻿//   NewsHandler class version 1.0
//   =================================
//   Copyright (C) 2010  Xie Xiaojing
//   作者： 谢晓境 
//   Email: xxj050@163.com
//   最后修改时间： 2010 - 12 - 11
//   检查者: 陈兵
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
    /// 操作news对象的handler
    /// </summary>
    public class NewsHandler : IHandler
    {
        /// <summary>
        /// 由linq生成的数据库上下文类
        /// </summary>
        private static DataClassesDataContext dataClassesDataContext = new DataClassesDataContext("Data Source=FIREFLY-PC;Initial Catalog=LASDB;Integrated Security=True");

        /// <summary>
        /// 当前handler对应的news对象
        /// </summary>
        private News currentNews;

        public static DataClassesDataContext DataClassesDataContext
        {
            get
            {
                return dataClassesDataContext;
            }
        }

        public News CurrentNews
        {
            get
            {
                return currentNews;
            }
        }

        /// <summary>
        /// 基于一个News对象的构造函数
        /// </summary>
        /// <param name="news">当前关联的News</param>
        public NewsHandler(News news)
        {
            currentNews = news;
        }

        /// <summary>
        /// 将当前关联的News对象插入到数据库中
        /// </summary>
        public void Insert()
        {
            try
            {
                dataClassesDataContext.News.InsertOnSubmit(currentNews);
                Submit();
            }
            catch (Exception)
            {
                throw new InsertException();
            }
        }

        /// <summary>
        /// 将当前关联的News对象从数据库中删除
        /// </summary>
        public void Delete()
        {
            try
            {
                dataClassesDataContext.News.DeleteOnSubmit(currentNews);
                Submit();
                currentNews = null;
            }
            catch (Exception)
            {
                throw new DeleteException();
            }
        }

        /// <summary>
        /// 提交操作到数据库
        /// </summary>
        public void Submit()
        {
            dataClassesDataContext.SubmitChanges();
        }

        /// <summary>
        /// 获取所有的News表项
        /// </summary>
        /// <returns>News列表</returns>
        public static List<News> getNewsList()
        {
            return dataClassesDataContext.News.ToList();
        }

        /// <summary>
        /// 根据id获取一个News对象
        /// </summary>
        /// <param name="newsId">News的id</param>
        /// <returns>获取到的News对象</returns>
        public static News getNewsById(int newsId)
        {
            return dataClassesDataContext.News.First(news => news.newsId == newsId);
        }
    }
}