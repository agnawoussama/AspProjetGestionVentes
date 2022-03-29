<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="InfoClient.aspx.cs" Inherits="AspProjetGestionVentes.InfoClient" %>

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


    <form id="formInfoClient" class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#ede9d6;" class="rounded container-sm-12 p-4 border border-secondary ">
            <h3 class=" text-center ">Informations Personnelles</h3>
            <hr />

            <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3">
                <!--[ Numero Client] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Numero Client"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblNumClient" runat="server" ></asp:Label>                       
                </div>
                <!--[ Nom] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Nom"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblNom" runat="server" ></asp:Label>                       
                </div>
                <!--[ Prenom] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Prenom"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblPre" runat="server" ></asp:Label>                       
                </div>
                <!--[ Adresse] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Adresse"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblAdresse" runat="server" ></asp:Label>                       
                </div>
                <!--[ Ville] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Ville"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblVille" runat="server"></asp:Label>                       
                </div>
                <!--[ Telephone] -->
                <div class="row mb-3">                
                        <asp:Label class="form-label col-sm-6" runat="server" Font-Bold="true" Text="Telephone"></asp:Label>                                     
                        <asp:Label class="form-label col-sm-6" ID="lblTel" runat="server" ></asp:Label>                       
                </div>
                <!--Boutons Login + Inscription -->
                <div class="row d-flex justify-content-between">
                    <asp:Button ID="btnModifier" class="btn btn-primary col-sm-12" runat="server" Text="ModifierInfo" OnClick="btnModifier_Click"   />                    
                    
                </div>               
            </div>          
            <!-------------------------------END Main Form------------------------------->
        </div>
    </form>
</body>
</html>
