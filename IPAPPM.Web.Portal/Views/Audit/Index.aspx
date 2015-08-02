<%@ Import Namespace="PagedList.Mvc" %>
<%@ Import Namespace="PagedList" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" 
Inherits="System.Web.Mvc.ViewPage<PagedList.IPagedList<IPAPPM.Web.Portal.Models.tbl_AuditTrail>>" %>



<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<p>
<a href="/Audit/ExportData">Export</a>
</p>

<table class="table table-bordered table-highlight">
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.First().UserName) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.First().Action) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.First().ActionItem) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.First().ActionDate) %>
        </th>
        
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.UserName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Action) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ActionItem) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ActionDate) %>
        </td>
        
    </tr>
<% } %>

</table>
Page <%: (Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber) %> of <%:Model.PageCount %>

<%: Html.PagedListPager(Model, page => Url.Action("Index", new { page }))
    %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Audit Trail
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
