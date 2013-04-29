<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Invoice.Models.Dao.Kund>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Details
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Details</h2>

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
<p>

    <%: Html.ActionLink("Edit", "Edit", new { id=Model.Id }) %> |
    <%: Html.ActionLink("Back to List", "Index") %>
</p>

</asp:Content>
