<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="AspProjetGestionVentes.Login" %>

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
    <form id="formLogin" class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#ede9d6;" class="rounded container-sm-12 p-4 border border-secondary ">
            <h3 class="pt-2 text-center ">Page Login</h3>
            <hr />
            <!----------------------------------- START Alerts ---------------------------------------------->
                    <!--Alert Ville Vide-->
                <div style="display:none" id="alertLoginMdp" runat="server" class="alert alert-danger">
                    Login ou Mot de Passe <strong> Incorrect</strong>
                </div>
            <!----------------------------------- End Alerts ---------------------------------------------->


            <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3">
                <!--First Row [ Login + Password ] -->
                <div class="row mb-3">
                    <asp:Label class="form-label" runat="server" Text="Login"></asp:Label>    
                    <asp:TextBox class="w-100 form-control" ID="txtbxLogin" runat="server"></asp:TextBox>
                </div>
                <div class="row mb-3">
                    <asp:Label class="form-label" runat="server" Text="Mot de Passe"></asp:Label>    
                    <asp:TextBox class="w-100 form-control" TextMode="Password" ID="txtbxPass" runat="server"></asp:TextBox>                
                </div>
                <!--Boutons Login + Inscription -->
                <div class="row d-flex justify-content-between">
                    <asp:Button ID="btnLogin" class="btn btn-success col-sm-5" runat="server" Text="Login" OnClick="btnLogin_Click"  />
                    <asp:Button ID="btnInscript" class="btn btn-primary col-sm-5" runat="server" Text="Inscription" OnClick="btnInscript_Click"   />                    
                </div>               
            </div>          
            <!-------------------------------END Main Form------------------------------->
        </div>
    </form>
</body>
</html>

