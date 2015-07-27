<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_EndUsage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>tbl_EndUsage</legend>

        <%: Html.HiddenFor(model => model.EndUsage_Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EndUsage) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EndUsage) %>
            <%: Html.ValidationMessageFor(model => model.EndUsage) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SubEndUsage) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SubEndUsage) %>
            <%: Html.ValidationMessageFor(model => model.SubEndUsage) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Product) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Product) %>
            <%: Html.ValidationMessageFor(model => model.Product) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.GSMRange) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.GSMRange) %>
            <%: Html.ValidationMessageFor(model => model.GSMRange) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Availability) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Availability) %>
            <%: Html.ValidationMessageFor(model => model.Availability) %>
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
