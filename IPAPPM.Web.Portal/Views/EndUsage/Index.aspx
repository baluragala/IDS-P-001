<%@ Import Namespace="PagedList.Mvc" %>
<%@ Import Namespace="PagedList" %>
<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" 
Inherits="System.Web.Mvc.ViewPage<PagedList.IPagedList<IPAPPM.Web.Portal.Models.tbl_EndUsage>>" %>

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
                        <img src="../../Images/Edit.png" /></a> 
                        <a onclick="deleteEndUsage('<%: item.EndUsage %>','<%: item.EndUsage_Id %>')">
                            <img src="../../Images/Dustbin.png" /></a>
                
            </td>
        </tr>
        <% } %>
    </table>
       Page <%: (Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber) %> of <%:Model.PageCount %>

<%: Html.PagedListPager(Model, page => Url.Action("Index", new { page }))
    
    %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    End Usage
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
<script type="text/javascript">
    function deleteEndUsage(name, id) {
        var r = confirm("Are you sure to delete " + name + " ?");
        if (r == true) {
            /*DELETE*/
            $.ajax({
                url: '/EndUsage/Delete/' + id,
                type: "post",
                async: true,
                processData: false,
                cache: false,
                success: function (data) {
                    alert(data);
                    location.reload();
                },
                error: function (xhr) {
                    alert(xhr.responseText);
                }
            });
        }
    }
    </script>
</asp:Content>
