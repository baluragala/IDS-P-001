<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_ProductDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm("Edit", "Product", null, FormMethod.Post,
                              new { enctype = "multipart/form-data" }))
       { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>
    <%: Html.HiddenFor(model => model.Product_Id) %>
    <%: Html.HiddenFor(model => model.CreatedBy) %>
    <%: Html.HiddenFor(model => model.CreatedDate) %>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Category_Id, "Product Category") %>
                 <span class="field-validation-error">*</span>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("Category_Id", String.Empty) %>
                <%: Html.ValidationMessageFor(model => model.Category_Id) %>
            </div>
        </div>
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Product_Name, "Name") %>
                 <span class="field-validation-error">*</span>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Product_Name) %>
                <%: Html.ValidationMessageFor(model => model.Product_Name) %>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Description, "Description") %>
                 <span class="field-validation-error">*</span>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Description, new Dictionary<string, object> { { "cols", "60" },{"rows","4"}})%>
                <%: Html.ValidationMessageFor(model => model.Description) %>
            </div>
        </div>
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Benefits, "Benefits") %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Benefits,new Dictionary<string, object> { { "cols", "60" },{"rows","4"}}) %>
                <%: Html.ValidationMessageFor(model => model.Benefits) %>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Features, "Features")%>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Features, new Dictionary<string, object> { { "cols", "60" }, { "rows", "4" } })%>
                <%: Html.ValidationMessageFor(model => model.Features)%>
            </div>
        </div>
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.EndUses, "EndUses")%>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.EndUses, new Dictionary<string, object> { { "cols", "60" }, { "rows", "4" } })%>
                <%: Html.ValidationMessageFor(model => model.EndUses)%>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Specifications, "Specifications")%>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Specifications, new Dictionary<string, object> { { "cols", "60" }, { "rows", "4" } })%>
                <%: Html.ValidationMessageFor(model => model.Specifications)%>
            </div>
        </div>
        <div class="col-md-4">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.ImagePath, "Image") %>
            </div>
            <div class="editor-field">
                <img src="<%: Model.ImagePath  %>" alt="image <%: Model.Product_Name  %>"/>
                <input id="ImagePath" title="Upload a image" type="file" name="file" />
                <%: Html.ValidationMessageFor(model => model.ImagePath) %>
            </div>
        </div>
       <%-- <div class="col-md-2">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.IsActive,"Active?") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.IsActive) %>
                <%: Html.ValidationMessageFor(model => model.IsActive) %>
            </div>
        </div>--%>
    </div>
    <br />
    <p>
        <input type="submit" value="Update" />
    </p>
    <% } %>
    <div>
        <%: Html.ActionLink("All Products", "Index") %>
    </div>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
