<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_ProductDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% using (Html.BeginForm("Create", "Product", null, FormMethod.Post,
                              new { enctype = "multipart/form-data" }))
       { %>
    <%: Html.AntiForgeryToken() %>
    <%: Html.ValidationSummary(true) %>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Category_Id, "Product Category") %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("Category_Id", String.Empty) %>
                <%: Html.ValidationMessageFor(model => model.Category_Id) %>
            </div>
        </div>
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Product_Name, "Name") %>
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
        <input type="submit" value="Create" />
    </p>
    <% } %>
    <div>
        <%: Html.ActionLink("All Products", "Index") %>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
   <script type="text/javascript">
       $(function () {
           
           $("textarea").htmlarea();
       });
    </script>
</asp:Content>
