<%@ Import Namespace="PagedList.Mvc" %>
<%@ Import Namespace="PagedList" %>

<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" 
Inherits="System.Web.Mvc.ViewPage<PagedList.IPagedList<IPAPPM.Web.Portal.Models.tbl_UserQuestions>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div class="row">
        <div class="col-md-1">
           Id
        </div>
        <div class="col-md-2">
            Question
                    </div>
        <div class="col-md-5">
           Answer
        </div>
        <div class="col-md-1">
            User
        </div>
        <div class="col-md-1">
        </div>
    </div>
    <% foreach (var item in Model)
       { %>
    <div class="row">
        <div class="col-md-1">
            <%: Html.DisplayFor(modelItem => item.Question_Id)%>
        </div>
        <div class="col-md-2">
            <%: Html.DisplayFor(modelItem => item.Question) %>
        </div>
        <div class="col-md-5">
            <%: Html.Raw(item.Answer) %>
        </div>
        <div class="col-md-2">
            <%: Html.DisplayFor(modelItem => item.tbl_UserDetails.Name) %>
        </div>
        <div class="col-md-2">
            <a href="<%= Url.Action("Edit/"+item.Question_Id)  %>">
                <img src="../../Images/Edit.png" /></a> <a onclick="deleteQuestion('<%: item.Question_Id %>','<%: item.Question_Id %>')">
                    <img src="../../Images/Dustbin.png" alt="Delete" /></a>
        </div>
    </div>
    <% } %>
      Page <%: (Model.PageCount < Model.PageNumber ? 0 : Model.PageNumber) %> of <%:Model.PageCount %>

<%: Html.PagedListPager(Model, page => Url.Action("Index", new { page }))
    
    %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Answer Questions
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <script type="text/javascript">
        function deleteQuestion(name, id) {
            var r = confirm("Are you sure to delete question with id " + name + " ?");
            if (r == true) {
                /*DELETE*/
                $.ajax({
                    url: '/UserQuestion/Delete/' + id,
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
