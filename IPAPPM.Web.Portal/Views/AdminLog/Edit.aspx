<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_LoginAudit>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>tbl_LoginAudit</legend>

        <%: Html.HiddenFor(model => model.LAudit_Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.LoginTime) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.LoginTime) %>
            <%: Html.ValidationMessageFor(model => model.LoginTime) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.LogOutTime) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.LogOutTime) %>
            <%: Html.ValidationMessageFor(model => model.LogOutTime) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UserName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UserName) %>
            <%: Html.ValidationMessageFor(model => model.UserName) %>
        </div>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
