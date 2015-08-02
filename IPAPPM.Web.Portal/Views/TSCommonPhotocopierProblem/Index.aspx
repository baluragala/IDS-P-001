<%@ Import Namespace="PagedList.Mvc" %>
<%@ Import Namespace="PagedList" %>


<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" 
Inherits="System.Web.Mvc.ViewPage<PagedList.IPagedList<IPAPPM.Web.Portal.Models.tbl_CommonTerms>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <table class="table table-bordered">
        <tr>
            <th>
                Problem
            </th>
            <th>
                Solution
            </th>
            <th>
            </th>
        </tr>
        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
                <%: Html.Raw(item.Title) %>
            </td>
            <td>
                <%: Html.Raw(item.Description) %>
            </td>
            <td>
                <a href="<%= Url.Action("Edit/"+item.CtTerms_Id)  %>">
                    <img src="../../Images/Edit.png" alt="Edit" /></a> <a onclick="deleteCommonTerm('<%: item.Title %>','<%: item.CtTerms_Id %>')">
                        <img src="../../Images/Dustbin.png" alt="Delete" /></a>
            </td>
        </tr>
        <% } %>
    </table>
        Page <%: (Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber) %> of <%:Model.PageCount %>

<%: Html.PagedListPager(Model, page => Url.Action("Index", new { page }))
    
    %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Troubleshoot Common Photocopier Problem
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        function deleteCommonTerm(name, id) {
            var r = confirm("Are you sure to delete " + name + " ?");
            if (r == true) {
                /*DELETE*/
                $.ajax({
                    url: '/TSCommonPhotocopierProblem/Delete/' + id,
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
