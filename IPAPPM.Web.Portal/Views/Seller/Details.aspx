<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_SellerDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>tbl_SellerDetails</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Seller_Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Seller_Name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Seller_code) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Seller_code) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Address1) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Address1) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Address2) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Address2) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Address3) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Address3) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PhoneNumber1) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNumber1) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PhoneNumber2) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNumber2) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PhoneNumber3) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.PhoneNumber3) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.tbl_SellerType.Seller_Type) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tbl_SellerType.Seller_Type) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.tbl_State.State_Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tbl_State.State_Name) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.tbl_City.City_Name) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.tbl_City.City_Name) %>
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

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.Seller_Id }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
