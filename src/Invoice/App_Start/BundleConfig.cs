using System.Web;
using System.Web.Optimization;

namespace Invoice
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254725
        public static void RegisterBundles( BundleCollection bundles )
        {
            bundles.Add(new ScriptBundle("~/bundles/jqueryval").Include(
                        "~/js/jquery.unobtrusive*",
                        "~/js/jquery.validate*"));

            bundles.Add(new ScriptBundle("~/js").Include(
                        "~/js/lib/jquery-{version}.js",
                        "~/js/lib/jquery-ui-{version}.js",
                        "~/js/lib/bootstrap.js",
                        "~/js/general.js"));

            bundles.Add(new StyleBundle("~/css").Include(
                        "~/css/lib/jquery.ui.core.css",
                        "~/css/lib/jquery.ui.resizable.css",
                        "~/css/lib/jquery.ui.selectable.css",
                        "~/css/lib/jquery.ui.accordion.css",
                        "~/css/lib/jquery.ui.autocomplete.css",
                        "~/css/lib/jquery.ui.button.css",
                        "~/css/lib/jquery.ui.dialog.css",
                        "~/css/lib/jquery.ui.slider.css",
                        "~/css/lib/jquery.ui.tabs.css",
                        "~/css/lib/jquery.ui.datepicker.css",
                        "~/css/lib/jquery.ui.progressbar.css",
                        "~/css/lib/jquery.ui.theme.css",
                        "~/css/lib/bootstrap.css",
                        "~/css/general.css"));
        }
    }
}