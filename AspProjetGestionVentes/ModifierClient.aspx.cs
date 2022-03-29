using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AspProjetGestionVentes
{
    public partial class ModifierClient : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
                //Si Ontre sans login
                if (Session["numClient"] == null)
                {
                    Response.Redirect("~/Login.aspx");
                }
                else
                {
                    AdoClass ado = new AdoClass();
                    txtbxNumClient.Text = Session["numClient"].ToString();
                    // Remplir le dropDownListe pas les Villes
                    if (!IsPostBack)
                    {
                        ado.command = new System.Data.SqlClient.SqlCommand("SELECT distinct Ville from Client ", ado.connection);
                        ado.Connecter();
                        ado.reader = ado.command.ExecuteReader();
                        if (ado.reader.HasRows)
                        {
                            ddlVille.DataTextField = "Ville";
                            ddlVille.DataValueField = "Ville";
                            ddlVille.DataSource = ado.reader;
                            ddlVille.DataBind();
                        }
                        ado.Deconnecter();
                    }
                //Remplir les infos de client automatiquements
                if (!IsPostBack)
                {
                    try
                    {
                        ado.command = new System.Data.SqlClient.SqlCommand("SELECT * FROM Client WHERE NumClient = @numClient", ado.connection);
                        ado.command.Parameters.AddWithValue("@numClient", Session["numClient"].ToString());
                        ado.Connecter();
                        ado.reader = ado.command.ExecuteReader();
                        if (ado.reader.HasRows)
                        {
                            ado.reader.Read();
                            txtbxNom.Text = ado.reader[1].ToString();
                            txtbxPrenom.Text = ado.reader[2].ToString();
                            txtAreaAdresse.Value = ado.reader[3].ToString();                    
                            txtbxTel.Text = ado.reader[5].ToString();
                            txtbxLogin.Text = ado.reader[6].ToString();                          
                            //Pour la Ville
                            for (int i = 0; i < ddlVille.Items.Count; i++)
                            {
                                if (ddlVille.Items[i].Text == ado.reader[4].ToString())
                                {
                                    ddlVille.SelectedIndex = i;
                                    break;
                                }
                            }
                            //Actualiser les nouveau Sessions
                            Session["numClient"] = ado.reader[0].ToString();
                            Session["login"] = txtbxLogin.Text;
                        }

                    }
                    catch (Exception ex) { Response.Write(ex.Message); }
                    finally { ado.Deconnecter(); }
                }
               
            }
        }

        //Bouton Info Client
        protected void btnInfosClient_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/InfoClient.aspx");
        }


        
        protected void btnModifier_Click(object sender, EventArgs e)
        {
           
        }

        //Bouton Modifier
        protected void btnModifier_Click1(object sender, EventArgs e)
        {
            AdoClass ado = new AdoClass();
            try
            {
                ado.command = new System.Data.SqlClient.SqlCommand("UPDATE Client SET Nom = @nom,Prenom = @pre, Adresse = @adr, Ville = @ville, Tel = @tel, Loginn = @lgn, Pass = @pass WHERE NumClient = @numClient", ado.connection);
                ado.command.Parameters.AddWithValue("@numClient", Session["numClient"].ToString());
                ado.command.Parameters.AddWithValue("@nom", txtbxNom.Text);
                ado.command.Parameters.AddWithValue("@pre", txtbxPrenom.Text);
                ado.command.Parameters.AddWithValue("@adr", txtAreaAdresse.Value);
                ado.command.Parameters.AddWithValue("@ville", ddlVille.SelectedValue);
                ado.command.Parameters.AddWithValue("@tel", txtbxTel.Text);
                ado.command.Parameters.AddWithValue("@lgn", txtbxLogin.Text);
                ado.command.Parameters.AddWithValue("@pass", txtbxMdps.Text);

                ado.Connecter();
                ado.command.ExecuteNonQuery();
            }
            catch (Exception ex) { Response.Write(ex.Message); }
            finally { ado.Deconnecter(); }
        }
    }
}