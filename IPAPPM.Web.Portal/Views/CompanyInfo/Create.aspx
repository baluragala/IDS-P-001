﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_CompanyInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <% using (Html.BeginForm("Create", "CompanyInfo", null, FormMethod.Post,
                              new { enctype = "multipart/form-data" }))
       { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        
        <div class="editor-label">
            <%: Html.LabelFor(model => model.CompanyName) %>
            <span class="field-validation-error">*</span>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.CompanyName) %>
            <%: Html.ValidationMessageFor(model => model.CompanyName) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Text) %>
            <span class="field-validation-error">*</span>
            <%: Html.ValidationMessageFor(model => model.Text) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Text) %>
            
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.ImagePath) %>
        </div>
        <div class="editor-field">
            <input id="ImagePath" title="Upload a image"
                type="file" name="file" />
            <%: Html.ValidationMessageFor(model => model.ImagePath) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Website) %>
            <span class="field-validation-error">*</span>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Website) %>
            <%: Html.ValidationMessageFor(model => model.Website) %>
        </div>
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
    Company Information
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
