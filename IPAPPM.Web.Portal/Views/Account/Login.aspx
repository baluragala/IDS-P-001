<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Root.Master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.LoginModel>" %>

<%@ Import Namespace="CaptchaMvc.HtmlHelpers" %>
<asp:Content ID="loginTitle" ContentPlaceHolderID="TitleContent" runat="server">
    Login
</asp:Content>
<asp:Content ID="loginContent" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm(new { ReturnUrl = ViewBag.ReturnUrl }))
       { %>
    <%: Html.AntiForgeryToken() %>
    <div class="container">
        <br />
        <br />
        <br />
        <br />
        <br />
        <div class="row">
            <div class="col-md-8">
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <br />
                <center>
                    <img src="../../Images/ip-logo.png" /></center>
            </div>
            <div class="col-md-4 img-rounded" style="background-color: White">
                <br />
                <br />
                <br />
                <br />
                <br />
                <center>
                    <span class="field-validation-error">
                        <%: Html.ValidationMessage("LoginError")%></span></center>
                <div class="form-login">
                    <%: Html.TextBoxFor(m => m.UserName, new Dictionary<string, object> { {"class","form-control input-sm chat-input"},{"placeholder","username"}})%>
                    <%: Html.ValidationMessageFor(model => model.UserName) %>
                    <br />
                    <%: Html.PasswordFor(m => m.Password, new Dictionary<string, object> { {"class","form-control input-sm chat-input"},{"placeholder","password"}})%>
                    <%: Html.ValidationMessageFor(model => model.Password) %>
                    <br />
                    <%: Html.Captcha("Try another", "Enter the text you see above:", 4, "Is required field", true)%>
                    <%: Html.ValidationMessage("CaptchError")%>
                    <br />
                    <input type="submit" class="btn btn-primary btn-md" value="Login" />
                    <br />
                    <br />
                </div>
            </div>
        </div>
    </div>
    <% } %>
</asp:Content>
<asp:Content ID="scriptsContent" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
