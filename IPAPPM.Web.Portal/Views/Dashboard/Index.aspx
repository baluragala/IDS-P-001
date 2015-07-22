﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

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
                <tr>
                    <td>
                        Ramu
                    </td>
                    <td>
                        Hyd
                    </td>
                    <td>
                        IPAPPM
                    </td>
                    <td>
                        Accountant
                    </td>
                </tr>
                <tr>
                    <td>
                        Mohan
                    </td>
                    <td>
                        Hyd
                    </td>
                    <td>
                        IPAPPM
                    </td>
                    <td>
                        Hr
                    </td>
                </tr>
                <tr>
                    <td>
                        Jones
                    </td>
                    <td>
                        Wgl
                    </td>
                    <td>
                        Idsign
                    </td>
                    <td>
                        Developer
                    </td>
                </tr>
                <tr>
                    <td>
                        Martin
                    </td>
                    <td>
                        Chennai
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        Tester
                    </td>
                </tr>
                <tr>
                    <td>
                        Seenam
                    </td>
                    <td>
                        Hyd
                    </td>
                    <td>
                        IES
                    </td>
                    <td>
                        Developer
                    </td>
                </tr>
                <tr>
                    <td>
                        Hari
                    </td>
                    <td>
                        Banglore
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        Tester
                    </td>
                </tr>
                <tr>
                    <td>
                        Begum
                    </td>
                    <td>
                        Hyd
                    </td>
                    <td>
                        IPAPPM
                    </td>
                    <td>
                        Reporter
                    </td>
                </tr>
                <tr>
                    <td>
                        Naresh
                    </td>
                    <td>
                        Wgl
                    </td>
                    <td>
                        Holygrand
                    </td>
                    <td>
                        Clerk
                    </td>
                </tr>
                <tr>
                    <td>
                        Kishan
                    </td>
                    <td>
                        Wgl
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        HR
                    </td>
                </tr>
                <tr>
                    <td>
                        Lalith
                    </td>
                    <td>
                        Hyderabad
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        Tester
                    </td>
                </tr>
                <tr>
                    <td>
                        Nagaraj
                    </td>
                    <td>
                        Chennai
                    </td>
                    <td>
                        IES
                    </td>
                    <td>
                        Developer
                    </td>
                </tr>
                <tr>
                    <td>
                        murali
                    </td>
                    <td>
                        Chennai
                    </td>
                    <td>
                        Idsign
                    </td>
                    <td>
                        Admin
                    </td>
                </tr>
                <tr>
                    <td>
                        Harika
                    </td>
                    <td>
                        Hyd
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        Developer
                    </td>
                </tr>
                <tr>
                    <td>
                        Vishal
                    </td>
                    <td>
                        Chennai
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        Tester
                    </td>
                </tr>
                <tr>
                    <td>
                        Kumar
                    </td>
                    <td>
                        Hyd
                    </td>
                    <td>
                        Infosys
                    </td>
                    <td>
                        Sap Developer
                    </td>
                </tr>
                <tr>
                    <td>
                        Kalyan
                    </td>
                    <td>
                        Hyd
                    </td>
                    <td>
                        Idsign
                    </td>
                    <td>
                        Developer
                    </td>
                </tr>
                <tr>
                    <td>
                        Nag
                    </td>
                    <td>
                        Chennai
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        Clerk
                    </td>
                </tr>
                <tr>
                    <td>
                        Martin
                    </td>
                    <td>
                        Chennai
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        Tester
                    </td>
                </tr>
                <tr>
                    <td>
                        Bahargavi
                    </td>
                    <td>
                        Hyd
                    </td>
                    <td>
                        Idsign
                    </td>
                    <td>
                        Developer
                    </td>
                </tr>
                <tr>
                    <td>
                        Karteek
                    </td>
                    <td>
                        Chennai
                    </td>
                    <td>
                        Seaways
                    </td>
                    <td>
                        Developer
                    </td>
                </tr>
            </tbody>
        </table>
        <a href="#" style="margin-left: 475px">More..</a>
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
                <tr>
                    <td>
                        Admin1
                    </td>
                    <td>
                        10/06/2015 1.00PM
                    </td>
                    <td>
                        10/06/2015 2.00PM
                    </td>
                    <td>
                        192.168.1.1
                    </td>
                </tr>
                <tr>
                    <td>
                        Admin2
                    </td>
                    <td>
                        10/06/2015 9.00AM
                    </td>
                    <td>
                        10/06/2015 10.00AM
                    </td>
                    <td>
                        192.168.1.6
                    </td>
                </tr>
                <tr>
                    <td>
                         Admin3
                    </td>
                    <td>
                        12/06/2015 10.00AM
                    </td>
                    <td>
                        12/06/2015 10.30AM
                    </td>
                    <td>
                        192.168.1.2
                    </td>
                </tr>
                <tr>
                    <td>
                         Admin4
                    </td>
                    <td>
                        15/07/2015 03.00PM
                    </td>
                    <td>
                        15/07/2015 04.30PM
                    </td>
                    <td>
                        192.168.1.4
                    </td>
                </tr>
            </tbody>
        </table>
        <a href="#" style="margin-left: 475px">More..</a>
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