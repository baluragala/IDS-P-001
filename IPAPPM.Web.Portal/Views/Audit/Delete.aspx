<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_AuditTrail>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>tbl_AuditTrail</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UserName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Action) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Action) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ActionItem) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ActionItem) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ActionDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ActionDate) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
