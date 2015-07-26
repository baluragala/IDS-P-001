<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_UserQuestions>>" %>

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
            <%: Html.DisplayNameFor(model => model.Question) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Answer) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.tbl_UserDetails.Name) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.IsActive) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.CreatedBy) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.CreatedDate) %>
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
            <%: Html.DisplayFor(modelItem => item.Question) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Answer) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_UserDetails.Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.IsActive) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CreatedBy) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CreatedDate) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ModifiedBy) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ModifiedDate) %>
        </td>
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Question_Id }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.Question_Id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Question_Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
