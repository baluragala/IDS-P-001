<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_UserDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>tbl_UserDetails</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ComanyName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ComanyName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Designation) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Designation) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Email) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Email) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.MobileNumber) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.MobileNumber) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.City) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.City) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UserName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Password) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Password) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Registered_Date) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Registered_Date) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.IsActive) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IsActive) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.tbl_CompanyType.Company_Type) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tbl_CompanyType.Company_Type) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.tbl_MRoles.RoleName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tbl_MRoles.RoleName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PhoneNumber) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNumber) %>
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
