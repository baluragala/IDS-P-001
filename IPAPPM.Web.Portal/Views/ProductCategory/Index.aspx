<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_ProductCategory>>" %>

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
                    <img src="../../Images/Edit.png" /></a> <a href="<%= Url.Action("Delete/"+item.Category_Id)  %>">
                        <img src="../../Images/Dustbin.png" /></a>
                <%: Ajax.ActionLink(
                "Delete"
                ,"Delete"
                       , new { id = item.Category_Id }
                , new AjaxOptions()
                { 
                    OnSuccess="deleteElement"   
                    ,Confirm="Are you sure that you want to delete this item?"
                    , HttpMethod = "Delete"} ) %>
            </td>
        </tr>
        <% } %>
    </table>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    
</asp:Content>
