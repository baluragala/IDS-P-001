<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_Notifications>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Index</h2>

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<table class="table table-bordered">
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Notification_Id) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Message) %>
        </th>
       <%-- <th>
            <%: Html.DisplayNameFor(model => model.IsActive) %>
        </th>--%>
       <%-- <th>
            <%: Html.DisplayNameFor(model => model.CreatedBy) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.CreatedDate) %>
        </th>--%>
        <%--<th></th>--%>
    </tr>
</table>
<% foreach (var item in Model) { %>
    <div class="col-md-1">
        
            <%: Html.DisplayFor(modelItem => item.Notification_Id) %>
    </div>
    <div class="col-md-11">
            <%: Html.Raw(item.Message) %>
    </div>
       <%-- <td>
            <%: Html.DisplayFor(modelItem => item.IsActive) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CreatedBy) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CreatedDate) %>
        </td>--%>
        <%--<td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Notification_Id }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.Notification_Id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Notification_Id }) %>
        </td>--%>
    </tr>
<% } %>



</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Notifications
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
