<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_Notifications>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>tbl_Notifications</legend>

        <%: Html.HiddenFor(model => model.Notification_Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Message) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Message) %>
            <%: Html.ValidationMessageFor(model => model.Message) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.IsActive) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IsActive) %>
            <%: Html.ValidationMessageFor(model => model.IsActive) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CreatedBy) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CreatedBy) %>
            <%: Html.ValidationMessageFor(model => model.CreatedBy) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CreatedDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CreatedDate) %>
            <%: Html.ValidationMessageFor(model => model.CreatedDate) %>
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
