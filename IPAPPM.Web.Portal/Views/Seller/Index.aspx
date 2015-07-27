<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_SellerDetails>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
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
            Code
        </th>
        <th>
            Address
        </th>
        
        <th>
            PhoneNumbers
        </th>
        <th>
            Type
        </th>
        <th>
            State
        </th>
        <th>
            City
        </th>
        <th>
            Product Categories
        </th>
        
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Seller_Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Seller_code) %>
        </td>
        <td>
            <%: Html.Raw(item.Address) %>
        </td>
        
        <td>
            <%: Html.Raw(item.PhoneNumbers) %>
        </td>
        
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_SellerType.Seller_Type) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_State.State_Name) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.tbl_City.City_Name) %>
        </td>

        <td>
        <ul>
        <%foreach (var pc in item.tbl_ProductCategory)
          { %>
            <li><%: pc.Category_Name %></li>
        <% } %>
        </ul>
        </td>
        
        <td>
           <a href="<%= Url.Action("Edit/"+item.Seller_Id)  %>"><img src="../../Images/Edit.png" /></a>
            <a onclick="deleteSeller('<%: item.Seller_Name %>','<%: item.Seller_Id %>')">
            <img src="../../Images/Dustbin.png" /></a>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
 Seller Management
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
<script type="text/javascript">
    function deleteSeller(name, id) {
        var r = confirm("Are you sure to delete " + name + " ?");
        if (r == true) {
            /*DELETE*/
            $.ajax({
                url: '/Seller/Delete/' + id,
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
