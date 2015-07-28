<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_CompanyInfo>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <% if (Model.CompanyName == null)
           { %>
        <%: Html.ActionLink("Create New", "Create")%>
        <%}
           else
           {%>
    </p>
    <div class="row">
        <div class="col-md-10">
            <img src="/<%:Model.ImagePath%>" alt="Image" height="200" width="200" />
        </div>
        <div class="col-md-2">
            <a href="<%= Url.Action("Edit/"+Model.Company_Id)  %>">
                <img src="../../Images/Edit.png" alt="Edit" /></a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            Name
        </div>
        <div class="col-md-9">
            <%: Html.DisplayFor(item => item.CompanyName)%>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            Information
        </div>
        <div class="col-md-9">
            <%: Html.Raw(Model.Text)%>
        </div>
    </div>
    <div class="row">
        <div class="col-md-3">
            Website
        </div>
        <div class="col-md-9">
            <%: Html.Raw(Model.Website)%>
        </div>
    </div>
    <%
           }%>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Company Information
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
</asp:Content>
