using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class ListeArticles : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnCommandes_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/CommandeClient.aspx");
        }

        protected void btnInfoClient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InfoClient.aspx");

        }
    }
}