<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="GestionArticles.aspx.cs" Inherits="AspProjetGestionVentes.GestionArticles" %>

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
            <a class="nav-link" href="GestionClient.aspx">Gestion Des Client </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="GestionArticles.aspx">Gestion Des Articles</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="ConsultationCommandes.aspx">Consultation des Commandes </a>
          </li>
        </ul>
      </div>
    </nav>
    <!--End Nav-->

    <form id="formArticles" class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#ede9d6;" class="rounded container-sm-12 p-4 border border-secondary ">
            <h3 class="pt-2 text-center ">Liste des Articles</h3>
            <hr />


            <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3">
                <!-- [ Rechercher Client ] -->
                <div class="row mb-3">
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Rechercher par Article"></asp:Label>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:TextBox class="w-100 form-control"  ID="txtbxArticle" runat="server" OnTextChanged="txtbxArticle_TextChanged"></asp:TextBox>
                    </div>
                </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NumArticle"  ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource1" OnRowCommand="GridView1_RowCommand"    >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>

                        <asp:BoundField DataField="NumArticle" HeaderText="NumArticle" InsertVisible="False" ReadOnly="True" SortExpression="NumArticle" />
                        <asp:BoundField DataField="Designation" HeaderText="Designation" SortExpression="Designation" />
                        <asp:BoundField DataField="Pu" HeaderText="Pu" SortExpression="Pu" />

                        <asp:TemplateField HeaderText="Edit" >
                            <ItemTemplate>
                                <asp:Button class="btn btn-primary" runat="server" ID="btnEdit"  CommandArgument="<%# Container.DisplayIndex %>" CommandName="IsEdit" Text="Edit" ></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:TemplateField HeaderText="Delete">
                            <ItemTemplate>
                                <asp:Button class="btn btn-danger" runat="server" ID="btnDelete"  CommandArgument="<%# Container.DisplayIndex %>" CommandName="IsDelete" Text="Delete" ></asp:Button>
                            </ItemTemplate>
                        </asp:TemplateField>
                        
                    </Columns>

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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspGestionVentesConnectionString %>" SelectCommand="SELECT * FROM [Article]"></asp:SqlDataSource>
            </div>          
            <!-------------------------------END Main Form------------------------------->

        </div>
    </form>
</body>
</html>
