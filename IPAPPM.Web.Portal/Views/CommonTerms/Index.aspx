<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_CommonTerms>>" %>

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
            <%: Html.DisplayNameFor(model => model.Title) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Description) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.TermType) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ISActive) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.CreatedBy) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.CaretedDate) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ModifiedBy) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ModifiedDate) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Title) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Description) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.TermType) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ISActive) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CreatedBy) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CaretedDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ModifiedBy) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ModifiedDate) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.CtTerms_Id }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.CtTerms_Id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.CtTerms_Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
