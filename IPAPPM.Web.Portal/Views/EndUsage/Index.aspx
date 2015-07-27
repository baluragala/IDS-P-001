<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_EndUsage>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <table class="table table-bordered table-highlight">
        <tr>
            <th>
                End Usage
            </th>
            <th>
                Sub End Usage
            </th>
            <th>
                Product>
            </th>
            <th>
                GSMRange
            </th>
            <th>
                Availability
            </th>
            <th>
            </th>
        </tr>
        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.EndUsage) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.SubEndUsage) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Product) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.GSMRange) %>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.Availability) %>
            </td>
            <td>
                
                    <a href="<%= Url.Action("Edit/"+item.EndUsage_Id)     %>">
                        <img src="../../Images/Edit.png" /></a> <a href="<%= Url.Action("Delete/"+item.EndUsage_Id)  %>">
                            <img src="../../Images/Dustbin.png" /></a>
                
            </td>
        </tr>
        <% } %>
    </table>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    End Usage
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
