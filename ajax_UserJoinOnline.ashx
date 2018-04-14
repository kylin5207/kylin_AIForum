<%@ WebHandler Language="C#" Class="ajax_UserJoinOnline" %>

using System;
using System.Web;

public class ajax_UserJoinOnline : IHttpHandler {
    
    public void ProcessRequest (HttpContext context) {
        context.Response.ContentType = "text/plain";
        context.Response.Write("Hello World");
    }
 
    public bool IsReusable {
        get {
            return false;
        }
    }

}