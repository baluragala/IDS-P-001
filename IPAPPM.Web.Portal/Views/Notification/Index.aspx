<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<IPAPPM.Web.Portal.Models.tbl_Notifications>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
   
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
    <div class="row">
        <div class="col-md-2">
            <%: Html.DisplayNameFor(model => model.Notification_Id) %>
        </div>
        <div class="col-md-10">
            <%: Html.DisplayNameFor(model => model.Message) %>
        </div>
       
    </div>
    <% foreach (var item in Model)
       { %>
    <div class="col-md-2">
        <%: Html.DisplayFor(modelItem => item.Notification_Id) %>
    </div>
    <div class="col-md-8">
        <%: Html.Raw(item.Message) %>
    </div>
   <div class="col-md-2">
            <a href="<%= Url.Action("Edit/"+item.Notification_Id)  %>">
                    <img src="../../Images/Edit.png" /></a> <a onclick="deleteNotification('<%:item.Notification_Id %>')">
                    <img src="../../Images/Dustbin.png" alt="Delete" /></a>
     </div>    
    
    <% } %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Notifications
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
<script type="text/javascript">
    function deleteNotification(id) {
        var r = confirm("Are you sure to delete this notification ?");
        if (r == true) {
            /*DELETE*/
            $.ajax({
                url: '/Notification/Delete/' + id,
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
