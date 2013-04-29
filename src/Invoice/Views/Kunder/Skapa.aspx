<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Invoice.Models.Dao.Kund>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<aside>
    <h2>Kunder</h2>
    <h3>Skapa</h3>
</aside>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.Namn) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Namn) %>
            <%: Html.ValidationMessageFor(model => model.Namn) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Address) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Address) %>
            <%: Html.ValidationMessageFor(model => model.Address) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.ReferensPersoner) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.ReferensPersoner) %>
            <%: Html.ValidationMessageFor(model => model.ReferensPersoner) %>
        </div>

        <p>
            <input type="submit" value="Create" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>
