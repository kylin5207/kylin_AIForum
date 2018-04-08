using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// UserDto 的摘要说明
/// </summary>
public class LoginBase
{
    public static UserInfo UserInfo
    {
        get
        {
            return HttpContext.Current.Session["userbase"] as UserInfo;
        }
        set
        {
            HttpContext.Current.Session["userbase"] = value;
        }
    }
    /// <summary>
    /// 用户名
    /// </summary>
    public static string username
    {
        get
        {
            if (HttpContext.Current.Session["userbase"] != null)
            {
                return UserInfo.UserName;
            }
            return string.Empty;
        }
    }
    public static bool IsNotice
    {
        get
        {
            if (HttpContext.Current.Session["userbase"] != null)
            {
                return UserInfo.IsNotice;
            }
            return false;
        }
        set
        {
            UserInfo.IsNotice = value;
            HttpContext.Current.Session["userbase"] = UserInfo;
        }
    }
    public static string ID
    {
        get
        {
            if (HttpContext.Current.Session["userbase"] != null)
            {
                return UserInfo.UserID;
            }
            return string.Empty;
        }
    }
    public static string Email
    {
        get
        {
            if (HttpContext.Current.Session["userbase"] != null)
            {
                return UserInfo.Email;
            }
            return string.Empty;
        }
    }
    public static int RoleId
    {
        get
        {
            if (HttpContext.Current.Session["userbase"] != null)
            {
                return UserInfo.RoleId;
            }
            return 0;//普通用户
        }
    }
    public static string Image
    {
        get
        {
            if (HttpContext.Current.Session["userbase"] != null)
            {
                return UserInfo.Image;
            }
            return string.Empty;
        }
        set
        {
            UserInfo.Image = value;
            HttpContext.Current.Session["userbase"] = UserInfo;
        }
    }
    public static int Certifi
    {
        get
        {
            if (HttpContext.Current.Session["userbase"] != null)
            {
                return UserInfo.Certifi;
            }
            return 0;
        }
    }
    public static string Register_Time
    {
        get
        {
            if (HttpContext.Current.Session["userbase"] != null)
            {
                return UserInfo.Regist_Time;
            }
            return string.Empty;
        }
    }

    public static void SetSession(UserInfo _userinfo)
    {
        HttpContext.Current.Session["userbase"] = _userinfo;

    }
    /// <summary>
    /// 消除Session
    /// </summary>
    public static void logoutSession()
    {
        HttpContext.Current.Session["userbase"] = null;
        HttpContext.Current.Session.Remove("userbase");
        HttpContext.Current.Session.RemoveAll(); //用于结果了所有的键值
        HttpContext.Current.Session.Abandon();              //用于结果了当前会话
    }
}