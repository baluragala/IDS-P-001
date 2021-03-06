﻿<%@ Import Namespace="PagedList.Mvc" %>
<%@ Import Namespace="PagedList" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" 
Inherits="System.Web.Mvc.ViewPage<PagedList.IPagedList<IPAPPM.Web.Portal.Models.tbl_LoginAudit>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<p>
<a href="/AdminLog/ExportData">Export</a>
</p>

<table class="table table-bordered table-highlight">
    <tr>
    <th>
            User Name
        </th>
        <th>
            Last Login
        </th>
        <th>
           Last Logout
        </th>
        <th>
           IP
        </th>
        
    </tr>

<% foreach (var item in Model) { %>
    <tr>
     <td>
            <%: Html.DisplayFor(modelItem => item.UserName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.LoginTime) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.LogOutTime) %>
        </td>
         <td>
            <%: Html.DisplayFor(modelItem => item.IP) %>
        </td>
       
       
    </tr>
<% } %>

</table>
Page <%: (Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber) %> of <%:Model.PageCount %>

<%: Html.PagedListPager(Model, page => Url.Action("Index", new { page }))
    %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Admin Login Logs
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
