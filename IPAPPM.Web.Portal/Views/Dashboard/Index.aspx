<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.ViewModels.DashboardVM>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index.aspx
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="col-md-6">
        <h4 class="heading">
            Registerd User List
        </h4>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>
                        Name
                    </th>
                    <th>
                        City
                    </th>
                    <th>
                        Company Name
                    </th>
                    <th>
                        Designation
                    </th>
                </tr>
            </thead>
            <tbody>
                <% foreach (var item in Model.UserDetails)
                   {  
                %>
                <tr>
                    <td>
                        <%: item.Name %>
                    </td>
                    <td>
                        <%: item.City %>
                    </td>
                    <td>
                        <%: item.CompanyName %>
                    </td>
                    <td>
                        <%: item.Designation %>
                    </td>
                </tr>
                <%
                   } 
                %>
            </tbody>
        </table>
        <a href="/User/Index" style="margin-left: 475px">More..</a>
    </div>
    <!-- /.col -->
    <div class="col-md-6">
        <h4 class="heading">
            Admin Login Logs
        </h4>
        <table class="table table-bordered table-highlight">
            <thead>
                <tr>
                    <th>
                        Name
                    </th>
                    <th>
                        Login Time
                    </th>
                    <th>
                        Logout Time
                    </th>
                    <th>
                        IP
                    </th>
                </tr>
            </thead>
            <tbody>
                <% foreach (var item in Model.LoginAudits)
                   {  
                %>
                <tr>
                    <td>
                        <%: item.UserName %>
                    </td>
                    <td>
                        <%: item.LoginTime %>
                    </td>
                    <td>
                        <%: item.LogOutTime %>
                    </td>
                    <td>
                          <%: item.IP %>
                    </td>
                </tr>
                <%
                   }
                %>
            </tbody>
        </table>
        <a href="/AdminLog/Index" style="margin-left: 475px">More..</a>
    </div>
    <div class="col-md-6">
        <h4 class="heading">
            Admin Audit Trails
        </h4>
        <table class="table table-bordered table-highlight">
            <thead>
                <tr>
                    <th>
                        Role Name
                    </th>
                    <th>
                        Action
                    </th>
                    <th>
                        Action Item
                    </th>
                    <th>
                        Date
                    </th>
                </tr>
            </thead>
            <tbody>
                <% foreach (var item in Model.AuditTrails)
                   {  
                %>
                <tr>
                    <td>
                        <%: item.UserName %>
                    </td>
                    <td>
                         <%: item.Action %>
                    </td>
                    <td>
                         <%: item.ActionItem %>
                    </td>
                    <td>
                         <%: item.ActionDate %>
                    </td>
                </tr>
                <%
                   } %>
            </tbody>
        </table>
        <a href="/Audit/Index" style="margin-left: 475px">More..</a>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Dashboard
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
