<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_CompanyInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>tbl_CompanyInfo</legend>

        <%: Html.HiddenFor(model => model.Comapny_Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.CompanyName) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CompanyName) %>
            <%: Html.ValidationMessageFor(model => model.CompanyName) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Text) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Text) %>
            <%: Html.ValidationMessageFor(model => model.Text) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Imagepath) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Imagepath) %>
            <%: Html.ValidationMessageFor(model => model.Imagepath) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Website) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Website) %>
            <%: Html.ValidationMessageFor(model => model.Website) %>
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
