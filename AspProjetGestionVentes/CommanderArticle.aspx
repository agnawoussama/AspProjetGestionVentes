<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommanderArticle.aspx.cs" Inherits="AspProjetGestionVentes.CommanderArticle" %>

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
            <a class="nav-link" href="#">Commander Article</a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="Deconnexion.aspx">Deconnection</a>
          </li>
        </ul>
      </div>
    </nav>
    <!--End Nav-->
    <form id="formCommanderArticle"  class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#f8f8f8;" class="rounded p-2 container-sm-8 mb-3 mt-3 border border-secondary ">
            <h5 class="pt-2  text-center ">Commander une Article</h5>
            <hr />


            <!----------------------------------- START Main Form ---------------------------------------------->

            <div id="mainForm" class=" p-3">              

                <!--[ Article ] -->
                <div class="row mb-3">
                    <div class="col-sm-12">                  
                        <asp:Label class="form-label" runat="server" Text="Designation"></asp:Label>
                        <asp:DropDownList aria-label="Default select example" class="w-100 form-select" ID="ddlDesg" runat="server"></asp:DropDownList>
                    </div>
                </div>
                <!--[ Quantite ] -->
                <div class="row mb-3">
                    <div class="col-sm-12">                  
                        <asp:Label class="form-label" runat="server" Text="Quantite"></asp:Label>
                        <asp:TextBox class="w-100 form-control" TextMode="Number" ID="txtbxQuant" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!--Boutons Inscription + Back to list -->
                <div class="row d-flex justify-content-around">
                    <asp:Button ID="btnPasserCommande" class="btn btn-primary col-sm-12" runat="server" Text="Passer Commande" OnClick="btnPasserCommande_Click"   />
                </div>
                
            </div>
            
            <!-------------------------------END Main Form------------------------------->



            
        </div>
    </form>
</body>
</html>