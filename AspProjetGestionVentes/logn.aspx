<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="logn.aspx.cs" Inherits="AspProjetGestionVentes.logn" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <title>Login</title>
    <style>
        body{
            height: 100vh;
            
        }
        #header{  
            color: #247BA0;  
            text-align: center;  
            font-size: 20px;  
        }  
        #nav{  
            background-color:#ede9d6;
            padding: 5px;  
        }  
        ul{  
          
            list-style-type: none;  
        }  
        li a {  
            color: black; 
            font-size: 30px;  
            column-width: 5%;  
        }  
        li {  
            display: inline;  
            padding-left: 2px;  
            column-width: 20px;  
        }  
        a{  
            text-decoration: none;  
            margin-left:20px  
        }  

    </style>

    <asp:Panel ID="Panel1" runat="server">
  
        <div id="test" class="d-flex  mt-5 justify-content-center align-items-center w-100 h-100" runat="server">
            <div style="background-color:#ede9d6;" class="rounded container-sm-12 p-4 border border-secondary " runat="server">
            <h3 class="pt-2 text-center ">Page Login</h3>
            <hr />
            <!----------------------------------- START Alerts ---------------------------------------------->
                    <!--Alert Ville Vide-->
                <div style="display:none" id="alertLoginMdp" runat="server" class="alert alert-danger">
                    Login ou Mot de Passe <strong> Incorrect</strong>
                </div>
            <!----------------------------------- End Alerts ---------------------------------------------->


            <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3" runat="server">
                <!--First Row [ Login + Password ] -->
                <div class="row mb-3" runat="server">
                    <asp:Label class="form-label" runat="server" Text="Login"></asp:Label>    
                    <asp:TextBox class="w-100 form-control" ID="txtbxLogin" runat="server"></asp:TextBox>
                </div>
                <div class="row mb-3">
                    <asp:Label class="form-label" runat="server" Text="Mot de Passe"></asp:Label>    
                </div>
                <!--Boutons Login + Inscription -->
                <div class="row d-flex justify-content-between">
                 
                </div>               
            </div>          
            <!-------------------------------END Main Form------------------------------->
            </div>
        </div>
        </asp:Panel> 

</asp:Content>
