<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_ProductDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>tbl_ProductDetails</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Product_Id) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Product_Id) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Product_Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Product_Name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Description) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Description) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Benefits) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Benefits) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ImagePath) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ImagePath) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Feature_Product) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Feature_Product) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ImageModifiedDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ImageModifiedDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.tbl_ProductCategory.Category_Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tbl_ProductCategory.Category_Name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.IsActive) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.IsActive) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CreatedBy) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CreatedBy) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.CreatedDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.CreatedDate) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ModifiedBy) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ModifiedBy) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ModifiedDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ModifiedDate) %>
    </div>
</fieldset>
<p>
    <%: Html.ActionLink("Edit", "Edit", new { /* id=Model.PrimaryKey */ }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
