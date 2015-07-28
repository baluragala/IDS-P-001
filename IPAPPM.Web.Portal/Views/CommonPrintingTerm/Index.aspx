﻿<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_CommonTerms>>" %>

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
                <%: Html.DisplayNameFor(model => model.Title) %>
            </th>
            <th>
                <%: Html.DisplayNameFor(model => model.Description) %>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Common Printing Term
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        function deleteCommonTerm(name, id) {
            var r = confirm("Are you sure to delete " + name + " ?");
            if (r == true) {
                /*DELETE*/
                $.ajax({
                    url: '/CommonPrintingTerm/Delete/' + id,
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