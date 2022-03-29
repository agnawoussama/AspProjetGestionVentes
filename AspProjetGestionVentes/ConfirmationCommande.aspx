<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConfirmationCommande.aspx.cs" Inherits="AspProjetGestionVentes.ConfirmationCommande" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <title>Login</title>
    <style>
        body{
            height: 100vh;
            
        }

    </style>
</head>
<body>
    <!--Begin Nav-->
    <nav class="navbar navbar-expand-lg navbar-dark  bg-dark p-2 ">
      <label class="navbar-brand" id="lblBien" runat="server">Bienvenue </label>
      <div class="collapse navbar-collapse" id="navbarNav">
        <ul class="navbar-nav">
          <li class="nav-item active">
            <a class="nav-link" href="InfoClient.aspx">Infos Client </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ListeArticles.aspx">Liste Articles</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="CommandeClient.aspx">Mes Commandes</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="CommanderArticle.aspx">Commander Article</a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="Deconnexion.aspx">Deconnection</a>
          </li>
        </ul>
      </div>
    </nav>
    <!--End Nav-->


    <form id="formConfirmationCommande" class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#ede9d6;" class="rounded container-sm-12 p-4 border border-secondary ">
            <h3 class=" text-center ">Confirmation de Commande</h3>
            <hr />
            <!----------------------------------- START Alerts ---------------------------------------------->
                    <!--Alert Ville Vide-->
                <div style="display:block" id="alertConfirmation" runat="server" class="alert alert-primary">
                     Voulez Vous Vraiment Commander Cette Article?
                </div>
            <!--Alert Succes-->
                <div style="display:none" id="alertSuccess" runat="server" class="alert alert-success">
                     L'article a ete commande avec success!
                </div>
            <!----------------------------------- End Alerts ---------------------------------------------->


            <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3">
                <!--[ Designation ] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Nom De l'Article"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblArticle" runat="server"></asp:Label>                       
                </div>
                <!--[ Quantite] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Quantite"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblQuant" runat="server" ></asp:Label>                       
                </div>
                 <!--[ Prix Unitaire] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Prix Unitaire"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblPu" runat="server" ></asp:Label>                       
                </div>
                <!--Boutons Oui + Non -->
                <div class="row d-flex justify-content-between">
                    <asp:Button ID="btnOui" class="btn btn-success col-sm-3" runat="server" Text="Oui" OnClick="btnOui_Click"  />                    
                    <asp:Button ID="btnNon" class="btn btn-danger col-sm-3" runat="server" Text="Non" OnClick="btnNon_Click"  /> 
                </div>               
            </div>          
            <!-------------------------------END Main Form------------------------------->
        </div>
    </form>
</body>
</html>
