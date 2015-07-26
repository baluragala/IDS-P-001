<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_UserDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>tbl_UserDetails</legend>

        <%: Html.HiddenFor(model => model.UserId) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Name) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Name) %>
            <%: Html.ValidationMessageFor(model => model.Name) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ComanyName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ComanyName) %>
            <%: Html.ValidationMessageFor(model => model.ComanyName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Designation) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Designation) %>
            <%: Html.ValidationMessageFor(model => model.Designation) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Email) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Email) %>
            <%: Html.ValidationMessageFor(model => model.Email) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.MobileNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.MobileNumber) %>
            <%: Html.ValidationMessageFor(model => model.MobileNumber) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.City) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.City) %>
            <%: Html.ValidationMessageFor(model => model.City) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UserName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.UserName) %>
            <%: Html.ValidationMessageFor(model => model.UserName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Password) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Password) %>
            <%: Html.ValidationMessageFor(model => model.Password) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Registered_Date) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Registered_Date) %>
            <%: Html.ValidationMessageFor(model => model.Registered_Date) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.IsActive) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IsActive) %>
            <%: Html.ValidationMessageFor(model => model.IsActive) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CompanyType_Id, "tbl_CompanyType") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("CompanyType_Id", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.CompanyType_Id) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.RoleId, "tbl_MRoles") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("RoleId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.RoleId) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.PhoneNumber) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.PhoneNumber) %>
            <%: Html.ValidationMessageFor(model => model.PhoneNumber) %>
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
