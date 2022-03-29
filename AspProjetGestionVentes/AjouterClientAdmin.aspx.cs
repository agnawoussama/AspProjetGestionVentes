using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class AjouterClientAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            ddlVille.AutoPostBack = true;
            AdoClass ado = new AdoClass();
            try
            {
                ado.command = new System.Data.SqlClient.SqlCommand("SELECT IDENT_CURRENT('Client')", ado.connection);
                ado.Connecter();
                int nextNumClient = Convert.ToInt32(ado.command.ExecuteScalar()) + 1;
                txtbxNumClient.Text = nextNumClient.ToString();
                // Remplir le dropDownListe pas les Villes
                if (!IsPostBack)
                {
                    ado.command = new System.Data.SqlClient.SqlCommand("SELECT distinct Ville from Client ", ado.connection);
                    ado.reader = ado.command.ExecuteReader();
                    if (ado.reader.HasRows)
                    {
                        ddlVille.DataTextField = "Ville";
                        ddlVille.DataValueField = "Ville";
                        ddlVille.DataSource = ado.reader;
                        ddlVille.DataBind();
                    }

                    //Selectionner Une Ville
                    ListItem liVille = new ListItem("Selectionner une Ville", "-1");
                    ddlVille.Items.Insert(0, liVille);
                }


            }
            catch (Exception ex) { Response.Write(ex.ToString()); }
            finally { ado.Deconnecter(); }
        }

        protected void btnAjouterClient_Click(object sender, EventArgs e)
        {
            //Si aucun ville est choisie==>
            if (ddlVille.SelectedValue == "-1")
            {   //==> on affiche un message d'erreur=>
                alertVilleVide.Attributes.CssStyle.Add("display", "block");
            }
            else //=>sinon on ajoute le client si tous les autres validations sont valides
            {
                AdoClass ado = new AdoClass();
                try
                {
                    ado.command = new System.Data.SqlClient.SqlCommand("INSERT INTO Client VALUES (@nom,@pre, @adr, @ville, @tel, @login, @pass)", ado.connection);
                    ado.command.Parameters.AddWithValue("@nom", txtbxNom.Text);
                    ado.command.Parameters.AddWithValue("@pre", txtbxPrenom.Text);
                    ado.command.Parameters.AddWithValue("@adr", txtAreaAdresse.Value);
                    ado.command.Parameters.AddWithValue("@ville", ddlVille.SelectedValue);
                    ado.command.Parameters.AddWithValue("@tel", txtbxTel.Text);
                    ado.command.Parameters.AddWithValue("@login", txtbxLogin.Text);
                    ado.command.Parameters.AddWithValue("@pass", txtbxMdps.Text);
                    ado.Connecter();
                    ado.command.ExecuteNonQuery();
                    //alertAjoutReussi.Attributes.CssStyle.Add("display", "block");
                    Page.Response.Redirect(Page.Request.Url.ToString(), true);
                    
                }
                catch (Exception ex) { Response.Write(ex.ToString()); }
                finally { ado.Deconnecter(); }
            }
        }
    }
}