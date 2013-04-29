<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<Invoice.Models.Dao.Inställningar>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Inställningar
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ModelTitle" runat="server">
Inställningar
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ActionTitle" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

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
            <%: Html.LabelFor(model => model.Org__nummer) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Org__nummer) %>
            <%: Html.ValidationMessageFor(model => model.Org__nummer) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Postnummer) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Postnummer) %>
            <%: Html.ValidationMessageFor(model => model.Postnummer) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Epost) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Epost) %>
            <%: Html.ValidationMessageFor(model => model.Epost) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Telefon) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Telefon) %>
            <%: Html.ValidationMessageFor(model => model.Telefon) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Momsreg__nummer) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Momsreg__nummer) %>
            <%: Html.ValidationMessageFor(model => model.Momsreg__nummer) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Övrig___information) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Övrig___information) %>
            <%: Html.ValidationMessageFor(model => model.Övrig___information) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Adress) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Adress) %>
            <%: Html.ValidationMessageFor(model => model.Adress) %>
        </div>

        <div class="editor-label">
            <%: Html.LabelFor(model => model.Ort) %>
        </div>
        <div class="editor-field">
            <%: Html.EditorFor(model => model.Ort) %>
            <%: Html.ValidationMessageFor(model => model.Ort) %>
        </div>

        <%: Html.HiddenFor(model => model.Id) %>
        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
<% } %>

<div>
    <%: Html.ActionLink("Back to List", "Index" ) %>
</div>

</asp:Content>
