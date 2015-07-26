<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_UserQuestions>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Update</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        

        <%: Html.HiddenFor(model => model.Question_Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Question) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Question) %>
            <%: Html.ValidationMessageFor(model => model.Question) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Answer) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Answer) %>
            <%: Html.ValidationMessageFor(model => model.Answer) %>
        </div>

        <%: Html.HiddenFor(model => model.CreatedBy) %>
        <%: Html.HiddenFor(model => model.CreatedDate) %>
        <%: Html.HiddenFor(model => model.ModifiedBy) %>
        <%: Html.HiddenFor(model => model.ModifiedDate) %>
        <%: Html.HiddenFor(model => model.UserId) %>
        <%--<div class="editor-label">
            <%: Html.LabelFor(model => model.UserId, "tbl_UserDetails") %>
        </div>
        <div class="editor-field">
            <%: Html.DropDownList("UserId", String.Empty) %>
            <%: Html.ValidationMessageFor(model => model.UserId) %>
        </div>--%>
        <p>
            <input type="submit" value="Update" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Answer Questions
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
