<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ModifierArticleAdmin.aspx.cs" Inherits="AspProjetGestionVentes.ModifierArticleAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <title>Inscription</title>
    <style>


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
    <form id="formModifierArticle"  class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#f8f8f8;" class="rounded p-2 container-sm-8 mb-3 mt-3 border border-secondary ">
            <h3 class="pt-2  text-center ">Modifier Infos</h3>
            <hr />
            <!----------------------------------- START Alerts ---------------------------------------------->
                    <!--Alert Article Modifié-->
                <div style="display:none" id="alertArticleMdf" runat="server" class="alert alert-danger">
                    Article Modifié Avec Success!!
                </div>
            <!----------------------------------- End Alerts ---------------------------------------------->

                        <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3">
                <!--[ Designation ] -->
                <div class="row mb-3">                
                    <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Numero De l'Article"></asp:Label>                                     
                    <asp:TextBox ID="txtbxNumArticle" runat="server"></asp:TextBox>                      
                </div>
                <!--[ Quantite] -->
                <div class="row mb-3">                
                    <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Quantite"></asp:Label>                                     
                    <asp:TextBox ID="txtbxQuant" runat="server"></asp:TextBox>                       
                </div>
                 <!--[ Prix Unitaire] -->
                <div class="row mb-3">                
                    <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Prix Unitaire"></asp:Label>                                     
                    <asp:TextBox ID="txtbxPu" runat="server"></asp:TextBox>                       
                </div> 
                <!--Boutons Modifier Article -->
                <div class="row d-flex justify-content-around">
                    <asp:Button ID="btnModifier" class="btn btn-success col-sm-5" runat="server" Text="Modifier Article"   />
                </div>
            </div>          
            <!-------------------------------END Main Form------------------------------->




            
        </div>
    </form>
</body>
</html>
