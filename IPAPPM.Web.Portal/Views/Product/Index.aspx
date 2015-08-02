<%@ Import Namespace="PagedList.Mvc" %>
<%@ Import Namespace="PagedList" %>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" 
Inherits="System.Web.Mvc.ViewPage<PagedList.IPagedList<IPAPPM.Web.Portal.Models.tbl_ProductDetails>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FeaturedContent" runat="server">
    Product
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <% foreach (var item in Model)
       { %>
    <div class="row">
        <div class="col-md-10">
            <h2>
                <%: Html.DisplayFor(modelItem => item.Product_Name) %>[<%: Html.DisplayFor(modelItem => item.tbl_ProductCategory.Category_Name) %>]</h2>
        </div>
        <div class="col-md-2">
            <a href="<%= Url.Action("Edit/"+item.Product_Id)  %>">
                <img src="../../Images/Edit.png" alt="Edit" /></a> 
                <a onclick="deleteProduct('<%: item.Product_Name %>','<%: item.Product_Id %>')">
                    <img src="../../Images/Dustbin.png" alt="Delete" /></a>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h4>Description: </h4><br />
            <%: Html.Raw(item.Description) %>
        </div>
        <div class="col-md-6">
            <img src="/<%:item.ImagePath%>" alt="Image" height="200" width="200" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h4>Features: </h4><br />
            <%: Html.Raw(item.Features) %>
        </div>
        <div class="col-md-6">
            <h4>EndUses: </h4><br />
            <%: Html.Raw(item.EndUses)%>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <h4>Specifications: </h4><br />
            <%: Html.Raw(item.Specifications)%>
        </div>
        <div class="col-md-6">
            <h4>Benefits: </h4><br />
            <%: Html.Raw(item.Benefits)%>
        </div>
    </div>
    <hr />
    <% } %>

        Page <%: (Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber) %> of <%:Model.PageCount %>

<%: Html.PagedListPager(Model, page => Url.Action("Index", new { page }))
    
    %>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
<script type="text/javascript">
    function deleteProduct(name, id) {
        var r = confirm("Are you sure to delete " + name + " ?");
        if (r == true) {
            /*DELETE*/
            $.ajax({
                url: '/Product/Delete/' + id,
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
