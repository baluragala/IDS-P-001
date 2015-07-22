<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_SellerDetails>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table class="table table-bordered table-highlight">
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Seller_Name) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Seller_code) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Address) %>
        </th>
        
        <th>
            <%: Html.DisplayNameFor(model => model.PhoneNumbers) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.tbl_SellerType.Seller_Type) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.tbl_State.State_Name) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.tbl_City.City_Name) %>
        </th>
        
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Seller_Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Seller_code) %>
        </td>
        <td>
            <%: Html.Raw(item.Address) %>
        </td>
        
        <td>
            <%: Html.Raw(item.PhoneNumbers) %>
        </td>
        
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_SellerType.Seller_Type) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_State.State_Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_City.City_Name) %>
        </td>
        
        <td>
           <a href="<%= Url.Action("Edit/"+item.Seller_Id)  %>"><img src="../../Images/Edit.png" /></a>
            <a href="<%= Url.Action("Delete/"+item.Seller_Id)  %>"><img src="../../Images/Dustbin.png" /></a>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
