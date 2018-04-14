<%@ WebHandler Language="C#" Class="ajax_UserJoinOnline" %>

using System;
using System.Web;
using Newtonsoft.Json;
using Newtonsoft.Json.Linq;

public class ajax_UserJoinOnline : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        
        context.Response.ContentType = "text/plain";
        context.Response.Write("Hello World");
        //获取前台传递过来的授课JSON字符串数组  
        string ss = context.Request.Form["TeachCourseJson"];  
        //反序列化获取的JSON字符串数组  
        JArray javascript = (JArray)JsonConvert.DeserializeObject(ss);  
        //依次遍历反序列化的json字符串数组  
        for (int i = 0; i < javascript.Count; i++)
        {
            //将一个个反序列化的JSON字符串数组转换成对象，并将转换后的对象的值依次赋给各变量  
            JObject obj = (JObject)javascript[i];
            string strTeacherID = obj["TeacherID"].ToString();                 //教师ID  
            string strCourseID = obj["CourseID"].ToString();                   //课程ID  
            string strTeachClassID = obj["TeachClassID"].ToString();           //上课班ID  
            int intIndexing = Convert.ToInt32(obj["Indexing"].ToString());     //课程分配ID  
            int intStuNum = Convert.ToInt32(obj["StuNum"].ToString());         //授课学生人数  
            string strStudentID = obj["StudentID"].ToString();                 //学生ID  
        }
        context.Response.Write(ss);
        context.Response.End();  
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}