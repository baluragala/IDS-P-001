<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.master" Inherits="System.Web.Mvc.ViewPage<IPAPPM.Web.Portal.Models.tbl_SellerDetails>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        Create Seller</h2>
    <% using (Html.BeginForm())
       { %>
    <%: Html.ValidationSummary(true) %>
    <div class="row">
        <div class="col-md-4">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.SellerType_Id, "Seller Type") %>
                <span class="field-validation-error">*</span>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("SellerType_Id", String.Empty)%>
                <%: Html.ValidationMessageFor(model => model.SellerType_Id)%>
            </div>
        </div>
        <div class="col-md-4">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.Seller_Name, "Seller Name") %>
                <span class="field-validation-error">*</span>
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
                <span class="field-validation-error">*</span>
                <%: Html.ValidationMessageFor(model => model.Address)%>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Address, new Dictionary<string, object> { { "cols", "60" }, { "rows", "4" } })%>
                
            </div>
        </div>
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.PhoneNumbers, "PhoneNumber(s)")%>
                <span class="field-validation-error">*</span>
                <%: Html.ValidationMessageFor(model => model.PhoneNumbers)%>
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.PhoneNumbers, new Dictionary<string, object> { { "cols", "60" }, { "rows", "4" } })%>
                
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.City, "City")%>
                <span class="field-validation-error">*</span>
            </div>
            <div class="editor-field">
                <%: Html.DropDownList("City", String.Empty)%>
                <%: Html.ValidationMessageFor(model => model.City)%>
            </div>
        </div>
        <div class="col-md-6">
            <div class="editor-label">
                <%: Html.LabelFor(model => model.State, "State")%>
                <span class="field-validation-error">*</span>
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
                    
                        <% foreach (var item in ViewBag.ProductCategories)
                           { 
                        %>
                        
                            <input type="checkbox" name="ProductCategories" value="<%:item.Value%>" id="<%:item.Value%>" />
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
        <input type="submit" value="Create" />
    </p>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" runat="server">
    Seller Management
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ScriptsSection" runat="server">
    <%: Scripts.Render("~/bundles/jqueryval") %>
</asp:Content>
