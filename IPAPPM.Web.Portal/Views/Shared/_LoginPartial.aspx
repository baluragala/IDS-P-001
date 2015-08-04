<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage" %>

<% if (Request.IsAuthenticated) { %>
   
    <% using (Html.BeginForm("LogOff", "Account", FormMethod.Post, new { id = "logoutForm" })) { %>
        <%: Html.AntiForgeryToken() %>
         Hello, <%: User.Identity.Name %> &nbsp;! <a href="javascript:document.getElementById('logoutForm').submit()" style="color:White">Log off</a>
       
    <% } %>
<% } else { %>
    
<% } %>