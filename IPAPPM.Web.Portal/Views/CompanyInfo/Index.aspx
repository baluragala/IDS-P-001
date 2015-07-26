<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_CompanyInfo>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.CompanyName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Text) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Imagepath) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Website) %>
        </th>
        
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.CompanyName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Text) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Imagepath) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Website) %>
        </td>
        
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Comapny_Id }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.Comapny_Id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Comapny_Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
