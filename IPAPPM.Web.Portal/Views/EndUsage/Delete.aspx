<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_EndUsage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>tbl_EndUsage</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.EndUsage) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.EndUsage) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.SubEndUsage) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.SubEndUsage) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Product) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Product) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.GSMRange) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.GSMRange) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Availability) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Availability) %>
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
