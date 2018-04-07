using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// 用户登录基础属性
/// </summary>
public class UserInfo
{
    /// <summary>
    /// 用户ID
    /// </summary>
    public string ID = "";
    /// <summary>
    /// 用户名
    /// </summary>
    public string UserName = "";
    /// <summary>
    /// 邮箱
    /// </summary>
    public string Email = "";
    /// <summary>
    /// 角色ID
    /// </summary>
    public int RoleId = 1;
    /// <summary>
    /// 头像
    /// </summary>
    public string Image = "";
    /// <summary>
    /// 注册时间
    /// </summary>
    public string Regist_Time = "";
    /// <summary>
    /// 认证类型0-未认证，1-学生，2-教师，3-商家, 4-版主
    /// </summary>
    public int Certifi = 0;
    /// <summary>
    /// 是否阅读公告
    /// </summary>
    public bool IsNotice = false;
}