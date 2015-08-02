<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_Notifications>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">



<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        

        <%: Html.HiddenFor(model => model.Notification_Id) %>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Message) %>
             <span class="field-validation-error">*</span>
             <%: Html.ValidationMessageFor(model => model.Message) %>
        </div>
        <div class="editor-field">
            <%: Html.TextAreaFor(model => model.Message) %>
        </div>

        
            <%: Html.HiddenFor(model => model.CreatedBy) %>
            <%: Html.HiddenFor(model => model.CreatedDate) %>
        <br />
        <p>
            <input type="submit" value="Update" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("All Notifications", "Index") %>
</div>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
Notifications
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
