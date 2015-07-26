<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_UserQuestions>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<table class="table table-bordered table-highlight">
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Question) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Answer) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.tbl_UserDetails.Name) %>
        </th>
        
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Question) %>
        </td>
        <td>
            <%: Html.Raw(item.Answer) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_UserDetails.Name) %>
        </td>
        
        <td>
                <a href="<%= Url.Action("Edit/"+item.Question_Id)  %>">
                    <img src="../../Images/Edit.png" /></a> <a href="<%= Url.Action("Delete/"+item.Question_Id)  %>">
                        <img src="../../Images/Dustbin.png" /></a>
               
            </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Answer Questions
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
