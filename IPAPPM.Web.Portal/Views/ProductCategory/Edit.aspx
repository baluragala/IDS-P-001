<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_ProductCategory>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm("Edit", "ProductCategory", null, FormMethod.Post,
                              new { enctype = "multipart/form-data" }))
       { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>tbl_ProductCategory</legend>

       <%-- <div class="editor-label">
            <%: Html.LabelFor(model => model.Category_Id) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Category_Id) %>
            <%: Html.ValidationMessageFor(model => model.Category_Id) %>
        </div>--%>
        <%: Html.HiddenFor(model => model.Category_Id) %>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Category_Name) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Category_Name) %>
            <%: Html.ValidationMessageFor(model => model.Category_Name) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Description) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Description) %>
            <%: Html.ValidationMessageFor(model => model.Description) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ImagePath) %>
        </div>
         <div class="editor-label">
             <img src= "/<%: Model.ImagePath %>" alt="Image" height="60" width="60"/>
        </div>
        <%: Html.HiddenFor(model => model.ImagePath) %>
        <div class="editor-field">
            <input id="ImagePath" title="Upload a image"
                type="file" name="file" />
            <%: Html.ValidationMessageFor(model => model.ImagePath) %>
        </div>
        

        <div class="editor-label">
            <%: Html.LabelFor(model => model.IsActive) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.IsActive) %>
            <%: Html.ValidationMessageFor(model => model.IsActive) %>
        </div>
        
        <%: Html.HiddenFor(model => model.CreatedBy) %>
        <%: Html.HiddenFor(model => model.CreatedDate) %>
       

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

       <%-- <div class="editor-label">
            <%: Html.LabelFor(model => model.ImagePath) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ImagePath) %>
            <%: Html.ValidationMessageFor(model => model.ImagePath) %>
        </div>--%>

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
