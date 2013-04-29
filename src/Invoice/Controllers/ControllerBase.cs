using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Text.RegularExpressions;

namespace Invoice.Controllers
{
    public class ControllerBase : Controller
    {
        public RedirectToRouteResult RedirectToAction<T>( ) where T : Controller
        {
            //Remove 'Controller'
            string
                name = typeof(T).Name,
                controller = name.Replace("Controller", String.Empty);

            if (String.IsNullOrWhiteSpace(controller))
            {
                return this.RedirectToAction(name);
            }
            else
            {
                return this.RedirectToAction(controller);
            }
        }

        public RedirectToRouteResult RedirectToAction( Func<ActionResult> f )
        {
            return this.RedirectToAction(f.Method.Name);
        }

        public ViewResult View( Func<ViewResult> Function )
        {
            return this.View(Function.Method.Name);
        }

        public ViewResult View( Func<ViewResult> Function, object model )
        {
            return this.View(Function.Method.Name, model);
        }
    }
}
