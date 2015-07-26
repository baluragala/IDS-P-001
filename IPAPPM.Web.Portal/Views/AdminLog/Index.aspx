<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_LoginAudit>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


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
       
       
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Admin Login Logs
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
