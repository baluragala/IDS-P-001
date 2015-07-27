<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_AuditTrail>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

<fieldset>
    <legend>tbl_AuditTrail</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.UserName) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.UserName) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Action) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Action) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ActionItem) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ActionItem) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ActionDate) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ActionDate) %>
    </div>
</fieldset>
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.AuditTrail_Id }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
