﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_CommonTerms>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <%: Html.HiddenFor(model => model.CtTerms_Id) %>
        <%: Html.HiddenFor(model => model.TermType) %>
        <%: Html.HiddenFor(model => model.CreatedBy) %>
        <%: Html.HiddenFor(model => model.CreatedDate) %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Title, "Problem")%>
            <span class="field-validation-error">*</span>
            <%: Html.ValidationMessageFor(model => model.Title) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Title) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description, "Solution")%>
            <span class="field-validation-error">*</span>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Description)%>
        </div>
        <br />
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
    Troubleshooting Common Printing Problems
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
