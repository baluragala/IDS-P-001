﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_EndUsage>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
       

        <%: Html.HiddenFor(model => model.EndUsage_Id) %>
        <%: Html.HiddenFor(model => model.CreatedBy) %>
        <%: Html.HiddenFor(model => model.CreatedDate) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.EndUsage,"End Usage") %>
            <span class="field-validation-error">*</span>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.EndUsage) %>
            <%: Html.ValidationMessageFor(model => model.EndUsage) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.SubEndUsage,"Sub End Usage") %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.SubEndUsage) %>
            <%: Html.ValidationMessageFor(model => model.SubEndUsage) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Product) %>
            <span class="field-validation-error">*</span>
        </div>

        <div class="editor-field">
            <%: Html.EditorFor(model => model.Product) %>
            <%: Html.ValidationMessageFor(model => model.Product) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.GSMRange,"GSM Range") %>
            <span class="field-validation-error">*</span>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.GSMRange) %>
            <%: Html.ValidationMessageFor(model => model.GSMRange) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Availability) %>
            <span class="field-validation-error">*</span>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Availability) %>
            <%: Html.ValidationMessageFor(model => model.Availability) %>
        </div>
        <br />
        <p>
            <input type="submit" value="Update" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("All End Usage", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
End Usage
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
