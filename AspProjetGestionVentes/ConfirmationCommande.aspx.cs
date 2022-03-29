using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class ConfirmationCommande : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["nomArticle"] == null && Session["quantite"] == null)
            {
                Response.Redirect("~/Login.aspx");
            }
            else
            {
                lblArticle.Text = Session["nomArticle"].ToString();
                lblQuant.Text = Session["quantite"].ToString();
                lblPu.Text = Session["pu"].ToString();
            }
        }

        protected void btnOui_Click(object sender, EventArgs e)
        {
            AdoClass ado = new AdoClass();
            try
            {
                ado.command = new System.Data.SqlClient.SqlCommand("INSERT INTO COMMANDE VALUES (@dateCmd, @numClient, @numArticle, @qteArticle)", ado.connection);
                ado.command.Parameters.AddWithValue("@dateCmd", DateTime.Now);
                ado.command.Parameters.AddWithValue("@numClient", Session["numClient"].ToString());
                ado.command.Parameters.AddWithValue("@numArticle", Session["numArticle"].ToString());
                ado.command.Parameters.AddWithValue("@qteArticle", Session["quantite"].ToString());
                ado.Connecter();
                ado.command.ExecuteNonQuery();
                alertSuccess.Attributes.CssStyle.Add("display", "block");
                alertConfirmation.Attributes.CssStyle.Add("display", "none");
                btnOui.Attributes.CssStyle.Add("display", "none");
                btnNon.Attributes.CssStyle.Add("display", "none");

            }
            catch (Exception ex) { Response.Write(ex.Message); }
            finally { ado.Deconnecter(); }
        }

        protected void btnNon_Click(object sender, EventArgs e)
        {

        }
    }
}