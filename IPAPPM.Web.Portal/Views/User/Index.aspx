<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_UserDetails>>" %>

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
            <%: Html.DisplayNameFor(model => model.Designation) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Email) %>
        </th>
        <th>
            Mobile
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.City) %>
        </th>

        <th>
            <%: Html.DisplayNameFor(model => model.Registered_Date) %>
        </th>
       
        <th>
            <%: Html.DisplayNameFor(model => model.tbl_CompanyType.Company_Type) %>
        </th>
       
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ComanyName) %>
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
            <%: Html.DisplayFor(modelItem => item.UserName) %>
        </td>
        
       
        
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_CompanyType.Company_Type) %>
        </td>
       
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Registered User Details
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
