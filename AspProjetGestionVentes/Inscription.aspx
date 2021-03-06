<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inscription.aspx.cs" Inherits="AspProjetGestionVentes.Inscription" %>

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
    <form id="formInscription"  class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#f8f8f8;" class="rounded p-2 container-sm-8 mb-3 mt-3 border border-secondary ">
            <h3 class="pt-2  text-center ">Page Inscription</h3>
            <hr />
            <!----------------------------------- START Alerts ---------------------------------------------->
                    <!--Alert Ville Vide-->
                <div style="display:none" id="alertVilleVide" runat="server" class="alert alert-danger">
                    <strong>Aucun Ville est choisie!</strong> Veuillez Choisir une Ville Svp!
                </div>
            <!----------------------------------- End Alerts ---------------------------------------------->


            <!----------------------------------- START Main Form ---------------------------------------------->

            <div id="mainForm" class=" p-3">              
                <!--Zero Row [ Numero Client ] -->
                <div class="row mb-3">
                    <div class="col-sm-12">                  
                        <asp:Label class="form-label" runat="server" Text="Numero Client"></asp:Label>
                        <asp:TextBox class="w-100 form-control"  ID="txtbxNumClient" ReadOnly="true" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!--First Row [ Nom + Prenom ] -->
                <div class="row mb-3">
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Nom"></asp:Label>
                        <asp:TextBox class="w-100 form-control" ID="txtbxNom" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Prenom"></asp:Label>
                        <asp:TextBox class="w-100 form-control" ID="txtbxPrenom" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!--Second Row [ Adresse ] -->
                <div class="row mb-3">
                    <div class="col-sm-12">                  
                        <asp:Label class="form-label" runat="server" Text="Adresse"></asp:Label>
                        <textarea class="form-control" id="txtAreaAdresse" rows="2" runat="server"></textarea>
                    </div>
                </div>
                <!--Third Row [ Ville + Tel ] -->
                <div class="row mb-3">
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Ville"></asp:Label>
                        <asp:DropDownList aria-label="Default select example" class="w-100 form-select" ID="ddlVille" runat="server"></asp:DropDownList>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Telephone"></asp:Label>
                        <asp:TextBox class="w-100 form-control" ID="txtbxTel" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!--Fourth Row [ Login + Mdp ] -->
                <div class="row mb-3">
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Login"></asp:Label>
                        <asp:TextBox class="w-100 form-control" ID="txtbxLogin" runat="server"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Mot de Passe"></asp:Label>
                        <asp:TextBox class="w-100 form-control" TextMode="Password" ID="txtbxMdps" runat="server"></asp:TextBox>
                    </div>
                </div>
                <!--Boutons Inscription + Back to list -->
                <div class="row d-flex justify-content-around">
                    <asp:Button ID="btnInscript" class="btn btn-primary col-sm-5" runat="server" Text="Inscription" OnClick="btnInscript_Click"  />
                    <asp:Button ID="btnLogin" class="btn btn-success col-sm-5" runat="server" Text="Login" OnClick="btnLogin_Click"  />
                </div>
                
            </div>
            
            <!-------------------------------END Main Form------------------------------->



            
        </div>
    </form>
</body>
</html>
