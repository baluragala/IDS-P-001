<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_Notifications>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Message) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Message, new Dictionary<string, object> { { "cols", "60" }, { "rows", "6" } })%>
            <%: Html.ValidationMessageFor(model => model.Message) %>
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
        </div>--%>

       <%-- <div class="editor-label">
            <%: Html.LabelFor(model => model.CreatedDate) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CreatedDate) %>
            <%: Html.ValidationMessageFor(model => model.CreatedDate) %>
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
Notification
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
