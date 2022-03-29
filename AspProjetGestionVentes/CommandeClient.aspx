<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CommandeClient.aspx.cs" Inherits="AspProjetGestionVentes.CommandeClient" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8"/>
    <meta name="viewport" content="width=device-width, initial-scale=1"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"/>
    <title>Liste des Commandes</title>
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
    <form id="formCommandeClient" class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#ede9d6;" class="rounded container-sm-12 p-4 border border-secondary ">
            <h3 class="pt-2 text-center ">Liste des Commandes</h3>
            <hr />

            <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3">
                <asp:GridView ID="GridView1" runat="server" CellPadding="4" ForeColor="#333333" GridLines="None">
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <EditRowStyle BackColor="#999999" />
                    <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                    <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#E9E7E2" />
                    <SortedAscendingHeaderStyle BackColor="#506C8C" />
                    <SortedDescendingCellStyle BackColor="#FFFDF8" />
                    <SortedDescendingHeaderStyle BackColor="#6F8DAE" />

                </asp:GridView>                       
            </div>          
            <!-------------------------------END Main Form------------------------------->
            <div class="row d-flex justify-content-around">
            </div>  
        </div>
    </form>
</body>
</html>
