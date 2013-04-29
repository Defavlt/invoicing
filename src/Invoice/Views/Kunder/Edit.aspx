<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Invoice.Models.Dao.Kund>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Edit
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<h2>Edit</h2>

<% using (Html.BeginForm()) { %>
    <%: Html.ValidationSummary(true) %>

    <fieldset>
        <legend>Kund</legend>

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

        <%: Html.HiddenFor(model => model.Id) %>

        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index") %>
</div>

</asp:Content>
