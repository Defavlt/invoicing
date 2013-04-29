<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Invoice.Models.Dao.Kund>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Delete
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Delete</h2>

<h3>Are you sure you want to delete this?</h3>
<fieldset>
    <legend>Kund</legend>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Namn) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Namn) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.Address) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.Address) %>
    </div>

    <div class="display-label">
        <%: Html.DisplayNameFor(model => model.ReferensPersoner) %>
    </div>
    <div class="display-field">
        <%: Html.DisplayFor(model => model.ReferensPersoner) %>
    </div>
</fieldset>
<% using (Html.BeginForm()) { %>
    <p>
        <input type="submit" value="Delete" /> |
        <%: Html.ActionLink("Back to List", "Index") %>
    </p>
<% } %>

</asp:Content>
