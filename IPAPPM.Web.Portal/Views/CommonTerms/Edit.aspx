<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_CommonTerms>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>tbl_CommonTerms</legend>

        <%: Html.HiddenFor(model => model.CtTerms_Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Title) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Title) %>
            <%: Html.ValidationMessageFor(model => model.Title) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.TermType) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.TermType) %>
            <%: Html.ValidationMessageFor(model => model.TermType) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ISActive) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ISActive) %>
            <%: Html.ValidationMessageFor(model => model.ISActive) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CreatedBy) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CreatedBy) %>
            <%: Html.ValidationMessageFor(model => model.CreatedBy) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CaretedDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CaretedDate) %>
            <%: Html.ValidationMessageFor(model => model.CaretedDate) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ModifiedBy) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ModifiedBy) %>
            <%: Html.ValidationMessageFor(model => model.ModifiedBy) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ModifiedDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ModifiedDate) %>
            <%: Html.ValidationMessageFor(model => model.ModifiedDate) %>
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
