<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Invoice.Models.Dao.Kund>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Index
</asp:Content>

<asp:Content ContentPlaceHolderID="ModelTitle" runat="server">
Kunder
</asp:Content>
<asp:Content ContentPlaceHolderID="ActionTitle" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">


<p>
    <%: Html.ActionLink("Skapa ny", "Skapa") %>
</p>
<table>
    <tr>
        <th>
            <%: Html.DisplayNameFor(model => model.Namn) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.Address) %>
        </th>
        <th>
            <%: Html.DisplayNameFor(model => model.ReferensPersoner) %>
        </th>
        <th></th>
    </tr>

<% foreach (var item in Model) { %>
    <tr>
        <td>
            <%: Html.DisplayFor(modelItem => item.Namn) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.Address) %>
        </td>
        <td>
            <%: Html.DisplayFor(modelItem => item.ReferensPersoner) %>
        </td>
        <td>
            <%: Html.ActionLink("Ändra", "Ändra", new { id=item.Id }) %> |
            <%: Html.ActionLink("Detaljer", "Detaljer", new { id=item.Id }) %> |
            <%: Html.ActionLink("Radera", "Radera", new { id=item.Id }) %>
        </td>
    </tr>
<% } %>

</table>

</asp:Content>
