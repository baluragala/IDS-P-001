<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Root.Master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.LoginModel>" %>

<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Log in
</asp:Content>
<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    
    <section id="loginForm">
    
    <% using (Html.BeginForm(new { ReturnUrl = ViewBag.ReturnUrl }))
       { %>
        <%: Html.AntiForgeryToken() %>
        <%: Html.ValidationSummary(true) %>

      <div class="container">
      <br />
      <br />
      <br />
      <br />
    <center><img src="../../Images/ip-logo.png" /></center>

     <br />
          

    <div class="row">
        <div class="col-md-offset-5 col-md-3">
            <div class="form-login">
           
            <%: Html.TextBoxFor(m => m.UserName, new Dictionary<string, object> { {"class","form-control input-sm chat-input"},{"placeholder","username"}})%>
            <%: Html.ValidationMessageFor(model => model.UserName) %>
            </br>
            <%: Html.PasswordFor(m => m.Password, new Dictionary<string, object> { {"class","form-control input-sm chat-input"},{"placeholder","password"}})%>
            <%: Html.ValidationMessageFor(model => model.Password) %>
            </br>
            <div class="wrapper">
            
            <input type="submit" class="btn btn-primary btn-md" value="Login" />
            
            </div>
            </div>
        
        </div>
    </div>
</div>
            
    <% } %>
    </section>
    <section class="social" id="socialLoginForm">
      
    </section>
</asp:Content>
<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
