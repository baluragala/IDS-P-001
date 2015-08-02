<%@ Import Namespace="PagedList.Mvc" %>
<%@ Import Namespace="PagedList" %>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" 
Inherits="System.Web.Mvc.ViewPage<PagedList.IPagedList<IPAPPM.Web.Portal.Models.tbl_UserDetails>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<table class="table table-bordered table-highlight">
    <tr>
        <th>
            Name
        </th>
        <th>
            Company
        </th>
        <th>
          Designation
        </th>
        <th>
            Email
        </th>
        <th>
            Mobile
        </th>
        <th>
           City
        </th>

        <th>
            Registered Date
        </th>
       
        <th>
           Company Type
        </th>
       
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.CompanyName) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Designation) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Email) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.MobileNumber) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.City) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Registered_Date) %>
        </td>
        
       
        
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_CompanyType.Company_Type) %>
        </td>
       
    </tr>
<% } %>

</table>
Page <%: (Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber) %> of <%:Model.PageCount %>

<%: Html.PagedListPager(Model, page => Url.Action("Index", new { page }))
    %>
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Registered User Details
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
