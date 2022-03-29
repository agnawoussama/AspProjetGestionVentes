<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListeArticles.aspx.cs" Inherits="AspProjetGestionVentes.ListeArticles" %>

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
            <a class="nav-link" href="#">Commander Article</a>
          </li>
          <li class="nav-item">
            <a class="nav-link"  href="Deconnexion.aspx">Deconnection</a>
          </li>
        </ul>
      </div>
    </nav>
    <!--End Nav-->

    <form id="formListArticles" class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#ede9d6;" class="rounded container-sm-12 p-4 border border-secondary ">
            <h3 class="pt-2 text-center ">Liste des Articles</h3>
            <hr />


            <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3">
                <asp:GridView ID="GridView1" class="table table-bordered table-condensed table-responsive table-hover align-baseline text-center table-responsive " runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NumArticle" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None"  >
                    <AlternatingRowStyle BackColor="White" />
                    <Columns>
                        <asp:BoundField DataField="NumArticle" HeaderText="NumArticle" InsertVisible="False" ReadOnly="True" SortExpression="NumArticle" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                        <asp:BoundField DataField="Pu" HeaderText="Pu" SortExpression="Pu" />
                    </Columns>
                    <EditRowStyle BackColor="#2461BF" />
                    <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                    <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                    <RowStyle BackColor="#EFF3FB" />
                    <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                    <SortedAscendingCellStyle BackColor="#F5F7FB" />
                    <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                    <SortedDescendingCellStyle BackColor="#E9EBEF" />
                    <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    

                </asp:GridView>            
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspGestionVentesConnectionString %>" SelectCommand="SELECT * FROM [Article]"></asp:SqlDataSource>
            </div>          
            <!-------------------------------END Main Form------------------------------->
            <div class="row d-flex justify-content-around">
            </div>  
        </div>
    </form>
</body>
</html>

