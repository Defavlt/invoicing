using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Web.Mvc.Html; //For ActionLink extensions!

namespace Invoice
{
    public static class HtmlHelperExtensions
    {
        public static MvcHtmlString ActionLink<TController, TModel>( this HtmlHelper html, string linkText, string actionName )
        {
            string controller = typeof(TController).Name.Replace("Controller", String.Empty);

            return html.ActionLink(linkText, actionName, controller);
        }
    }
}