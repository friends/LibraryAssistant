using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using DT;

/// <summary>
///
/// </summary>
public class NewsHandler : IHandler
{
    private DataClassesDataContext db;

    public News currentNews { get;set; }

    public NewsHandler(News News)
    {
        db = new DataClassesDataContext();
        currentNews = News;
    }
    public NewsHandler()
    {
        db = new DataClassesDataContext();
        currentNews = null;
    }

    //接口IHandler的实现
    public ErrorMessage Insert(object o)
    {
        News n = (News)o;
        if (n == null)
            return ErrorMessage.ERROR;
        else if (SetCurrentNewsById(n.newsId) == ErrorMessage.NOT_EXIST)
        {
            db.News.InsertOnSubmit(n);
            Submit();
            SetCurrentNewsById(n.newsId);
            return ErrorMessage.OK;
        }
        else
            return ErrorMessage.ALREADY_EXIST;
    }

    public ErrorMessage Insert()
    {
        if (currentNews == null)
        {
            return ErrorMessage.ERROR;
        }
        else
        {
            db.News.InsertOnSubmit(currentNews);
            Submit();
            return ErrorMessage.OK;
        }
    }
    public ErrorMessage Delete()
    {
        if (currentNews == null)
        {
            return ErrorMessage.ERROR;
        }
        else
        {
            db.News.DeleteOnSubmit(currentNews);
            Submit();
            currentNews = null;
            return ErrorMessage.OK;
        }
    }
    public ErrorMessage Submit()
    {
        db.SubmitChanges();
        return ErrorMessage.OK;
    }
    //self

    /// <summary>
    ///根据NewsId找到对应存在于表中的News,存在则将其赋值给currentNews,若不存在返回ErrorMessage.NOT_EXIST,currentNews置为null
    /// </summary>
    public ErrorMessage SetCurrentNewsById(int nid)
    {
        var queryNews = from news in db.News
                            where news.newsId== nid
                            select news;
        if (!queryNews.Any())
        {
            currentNews = null;
            return ErrorMessage.NOT_EXIST;
        }
        else
        {
            currentNews = queryNews.First();
            return ErrorMessage.OK;
        }

    }

    public List<News> getNewsList()
    {
        return db.News.ToList();
    }
}
