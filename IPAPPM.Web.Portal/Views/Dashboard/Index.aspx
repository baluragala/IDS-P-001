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
                        <%: item.ComanyName %>
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
                        192.168.1.1
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
                <tr>
                    <td>
                        Admin1
                    </td>
                    <td>
                      Added
                    </td>
                    <td>
                        Product
                    </td>
                    <td>
                       10/06/2015 2.00PM
                    </td>
                </tr>
                <tr>
                    <td>
                        Admin2
                    </td>
                    <td>
                        Edited
                    </td>
                    <td>
                       Company Info
                    </td>
                    <td>
                         12/06/2015 11.00AM
                    </td>
                </tr>
                <tr>
                    <td>
                         Admin3
                    </td>
                    <td>
                      Deleted
                    </td>
                    <td>
                       Product
                    </td>
                    <td>
                       13/06/2015 10.00AM
                    </td>
                </tr>
                <tr>
                    <td>
                         Admin4
                    </td>
                    <td>
                       Added
                    </td>
                    <td>
                      Company Info
                    </td>
                    <td>
                         15/07/2015 03.00PM
                    </td>
                </tr>
            </tbody>
        </table>
        <a href="#" style="margin-left: 475px">More..</a>
    </div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Dashboard
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
