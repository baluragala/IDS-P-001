<%@ Import Namespace="PagedList.Mvc" %>
<%@ Import Namespace="PagedList" %>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" 
Inherits="System.Web.Mvc.ViewPage<PagedList.IPagedList<IPAPPM.Web.Portal.Models.tbl_ProductCategory>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FeaturedContent" runat="server">
    Product Category
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <table class="table table-bordered table-highlight">
        <tr>
            <th>
                Name
            </th>
            <th>
                Description
            </th>
            <th>
                Active?
            </th>
            <th>
                Image
            </th>
            <th>
            </th>
        </tr>
        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
                <%: Html.DisplayFor(modelItem => item.Category_Name) %>
            </td>
            <td>
                <%: Html.Raw(item.Description)%>
            </td>
            <td>
                <%: Html.DisplayFor(modelItem => item.IsActive) %>
            </td>
            <td>
                <img src="/<%:item.ImagePath%>" alt="Image" height="30" width="30" />
            </td>
            <td>
                <a href="<%= Url.Action("Edit/"+item.Category_Id)  %>">
                    <img src="../../Images/Edit.png" /></a> <a onclick="deleteProductCategory('<%: item.Category_Name %>','<%: item.Category_Id %>')">
                    <img src="../../Images/Dustbin.png" alt="Delete" /></a>
            </td>
        </tr>
        <% } %>
    </table>

    Page <%: (Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber) %> of <%:Model.PageCount %>

<%: Html.PagedListPager(Model, page => Url.Action("Index", new { page }))
    
    %>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        function deleteProductCategory(name, id) {
            var r = confirm("Are you sure to delete " + name + " ?");
            if (r == true) {
                /*DELETE*/
                $.ajax({
                    url: '/ProductCategory/Delete/' + id,
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
