<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_UserQuestions>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Create</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>tbl_UserQuestions</legend>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Question) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Question) %>
            <%: Html.ValidationMessageFor(model => model.Question) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Answer) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Answer)%>
            <%: Html.ValidationMessageFor(model => model.Answer) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.UserId, "tbl_UserDetails") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("UserId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.UserId) %>
        </div>

        <%--<div class="editor-label">
            <%: Html.LabelFor(model => model.IsActive) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IsActive) %>
            <%: Html.ValidationMessageFor(model => model.IsActive) %>
        </div>--%>

        <%--<div class="editor-label">
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
        </div>--%>

        <p>
            <input type="submit" value="Create" />
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
