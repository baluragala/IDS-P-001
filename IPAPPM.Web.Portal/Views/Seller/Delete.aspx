﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_SellerDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
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
        <%: Html.DisplayNameFor(model => model.Address) %>
    </div>
    <div class="display-field">
        <%: Html.Raw(Model.Address) %>
    </div>
    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.PhoneNumbers) %>
    </div>
    <div class="display-field">
         <%: Html.Raw(Model.PhoneNumbers) %>
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

   
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
