<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_CompanyInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<p>
    <%: Html.ActionLink("Create New", "Create") %>
</p>
<div class="row">  
    <div class="col-md-3">
    Name
    </div>
    <div class="col-md-9">
     <%: Html.DisplayFor(item => item.CompanyName) %>
    </div>
</div>
<div class="row">  
    <div class="col-md-3">
    Information
    </div>
    <div class="col-md-9">
     <%: Html.Raw(Model.Text) %>
    </div>
</div>
   
   
        
        <td>
            <%: Html.ActionLink("Edit", "Edit", new { id=item.Comapny_Id }) %> |
            <%: Html.ActionLink("Details", "Details", new { id=item.Comapny_Id }) %> |
            <%: Html.ActionLink("Delete", "Delete", new { id=item.Comapny_Id }) %>
        </td>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
