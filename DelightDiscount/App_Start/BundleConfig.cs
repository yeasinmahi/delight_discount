using System.Web.Optimization;

namespace DelightDiscount
{
    public class BundleConfig
    {
        // For more information on Bundling, visit http://go.microsoft.com/fwlink/?LinkId=254726
        public static void RegisterBundles(BundleCollection bundles)
        {
            bundles.Add(new ScriptBundle("~/bundles/WebFormsJs").Include(
                  "~/Scripts/WebForms/WebForms.js",
                  "~/Scripts/WebForms/WebUIValidation.js",
                  "~/Scripts/WebForms/MenuStandards.js",
                  "~/Scripts/WebForms/Focus.js",
                  "~/Scripts/WebForms/GridView.js",
                  "~/Scripts/WebForms/DetailsView.js",
                  "~/Scripts/WebForms/TreeView.js",
                  "~/Scripts/WebForms/WebParts.js"));

            bundles.Add(new ScriptBundle("~/bundles/MsAjaxJs").Include(
                "~/Scripts/WebForms/MsAjax/MicrosoftAjax.js",
                "~/Scripts/WebForms/MsAjax/MicrosoftAjaxApplicationServices.js",
                "~/Scripts/WebForms/MsAjax/MicrosoftAjaxTimer.js",
                "~/Scripts/WebForms/MsAjax/MicrosoftAjaxWebForms.js"));

            // Use the Development version of Modernizr to develop with and learn from. Then, when you’re
            // ready for production, use the build tool at http://modernizr.com to pick only the tests you need
            bundles.Add(new ScriptBundle("~/bundles/modernizr").Include(
                "~/Scripts/modernizr-*"));

            bundles.Add(new ScriptBundle("~/bundles/myBundle").Include(
                      "~/Scripts/jquery.min.js",
                      "~/Scripts/bootstrap.min.js",
                      "~/Scripts/bootstrap-datepicker.min.js",
                      "~/Scripts/jquery.validate.min.js",
                      "~/Scripts/fastclick.js",
                      "~/Scripts/nprogress.js",
                      "~/Scripts/custom.min.js"));

            bundles.Add(new StyleBundle("~/Content/myCss").Include(
                      "~/Content/bootstrap.min.css",
                      "~/Content/bootstrap-datepicker.min.css",
                      "~/Content/font-awesome.min.css",
                      "~/Content/nprogress.css",
                      "~/Content/custom.min.css"));
            bundles.Add(new StyleBundle("~/Content/animation").Include(
                      "~/Content/animate.min.css"));
        }
    }
}