﻿<%@ Import Namespace="System.Web.Configuration"%>
<%@ Import Namespace="System.Diagnostics"%>
<%@ Application Language="C#" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e) 
    {
        string indexPath = WebConfigurationManager.AppSettings["IndexPath"];

        string machine = Environment.MachineName.ToLowerInvariant();
        if (indexPath == null && machine == "moppelchen") indexPath = @"C:\Users\Christian\Documents\_Entwicklung\SubversionSearch\index";
        Application["Index"] = new App_Code.Index(indexPath);
    }       
    
    void Application_End(object sender, EventArgs e) 
    {
        //  Code that runs on application shutdown

    }
        
    void Application_Error(object sender, EventArgs e) 
    { 
        // Code that runs when an unhandled error occurs

    }

    void Session_Start(object sender, EventArgs e) 
    {
        // Code that runs when a new session is started

    }

    void Session_End(object sender, EventArgs e) 
    {
        // Code that runs when a session ends. 
        // Note: The Session_End event is raised only when the sessionstate mode
        // is set to InProc in the Web.config file. If session mode is set to StateServer 
        // or SQLServer, the event is not raised.

    }
       
</script>


