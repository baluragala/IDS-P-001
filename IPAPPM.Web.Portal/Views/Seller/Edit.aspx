<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_SellerDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Update Seller</h2>
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true) %>
    <%: Html.HiddenFor(model=>model.Seller_Id) %>
    <%: Html.HiddenFor(model=>model.CreatedBy) %>
    <%: Html.HiddenFor(model=>model.CreatedDate) %>
    <div class="row">
        <div class="col-md-4">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SellerType_Id, "Seller Type") %>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("SellerType_Id", String.Empty)%>
                <%: Html.ValidationMessageFor(model => model.SellerType_Id)%>
            </div>
        </div>
        <div class="col-md-4">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Seller_Name, "Seller Name") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Seller_Name)%>
                <%: Html.ValidationMessageFor(model => model.Seller_Name)%>
            </div>
        </div>
        <div class="col-md-4">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Seller_code, "Code") %>
            </div>
            <div class="editor-field">
                <%: Html.EditorFor(model => model.Seller_code)%>
                <%: Html.ValidationMessageFor(model => model.Seller_code)%>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Address, "Address") %>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Address, new Dictionary<string, object> { { "cols", "60" }, { "rows", "4" } })%>
                <%: Html.ValidationMessageFor(model => model.Address)%>
            </div>
        </div>
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.PhoneNumbers, "PhoneNumber(s)")%>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.PhoneNumbers, new Dictionary<string, object> { { "cols", "60" }, { "rows", "4" } })%>
                <%: Html.ValidationMessageFor(model => model.PhoneNumbers)%>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.City, "City")%>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("City", String.Empty)%>
                <%: Html.ValidationMessageFor(model => model.City)%>
            </div>
        </div>
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.State, "State")%>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("State", String.Empty)%>
                <%: Html.ValidationMessageFor(model => model.State)%>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.tbl_ProductCategory, "Product Category")%>
            </div>
            <div class="editor-field">
                <div id="divProductCategories" style="height: 200px; overflow: auto;">
                    <%
                        string selected=String.Empty;
                    %>
                    <% foreach (var item in ViewBag.ProductCategories)
                       {
                           selected = String.Empty;
                    %>
                        
                    <%
                           foreach (var spc in  ViewBag.SelectedProductCategories)
                           {
                               if (spc.ToString() == item.Value)
                               {
                                    selected = "checked";
                               }
                           }
                         %>
                          
                          <% if (selected.Equals("checked")) {%> 
                            <input type="checkbox" name="ProductCategories" value="<%:item.Value%>" id="<%:item.Value%>"
                        checked="checked" />
                        <%} else{%>
                         <input type="checkbox" name="ProductCategories" value="<%:item.Value%>" id="<%:item.Value%>"/>
                        <%} %>
                    <label for="<%:item.Value%>">
                        <%:item.Text%></label>
                    <br />
                    <%
                       }
                    %>
                </div>
            </div>
        </div>
        <div class="col-md-6">
        </div>
    </div>
    <br />
    <p>
        <input type="submit" value="Update" />
    </p>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "All Sellers") %>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Seller Management
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
