<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_CompanyInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <% using (Html.BeginForm("Edit", "CompanyInfo", null, FormMethod.Post,
                              new { enctype = "multipart/form-data" }))
       { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        
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
            <%: Html.TextAreaFor(model => model.Text) %>
            <%: Html.ValidationMessageFor(model => model.Text) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.ImagePath) %>
        </div>
        <div class="editor-field">
            <img src="/<%: Model.ImagePath  %>" alt="image <%: Model.CompanyName  %>"/>
            <input id="ImagePath" title="Upload a image"
                type="file" name="file" />
            <%: Html.ValidationMessageFor(model => model.ImagePath) %>
        </div>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Website) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Website) %>
            <%: Html.ValidationMessageFor(model => model.Website) %>
        </div>
        <%: Html.HiddenFor(model => model.Company_Id)%>
        <%: Html.HiddenFor(model => model.CreatedBy)%>
        <%: Html.HiddenFor(model => model.CreatedDate)%>
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
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
