<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ConsultationCommandes.aspx.cs" Inherits="AspProjetGestionVentes.ConsultationCommandes" %>

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

    <form id="formLsCommandes" class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">
        <div style="background-color:#ede9d6;" class="rounded container-sm-12 p-4 border border-secondary ">
            <h3 class="pt-2 text-center ">Liste des Commandes</h3>
            <hr />


            <!----------------------------------- START Main Form ---------------------------------------------->
            <div id="mainForm" class=" p-3">
                <!-- [ Rechercher par n Commande ] -->
                <div class="row mb-3">
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Rech par N Commande"></asp:Label>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:TextBox class="w-100 form-control"  ID="txtbxNumCom" runat="server" OnTextChanged="txtbxNumCom_TextChanged"></asp:TextBox>
                    </div>
                </div>
                <!-- [ Rech par Date ] -->
                <div class="row mb-3">
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Rech par Date"></asp:Label>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:TextBox class="w-100 form-control" TextMode="Date" ID="txtbxDate" runat="server" OnTextChanged="txtbxDate_TextChanged" ></asp:TextBox>
                    </div>
                </div>
                <!-- [  Rech Entre Dates ] -->
                <div class="row mb-3">
                    <div class="col-sm-12">                  
                        <asp:Label class="form-label" runat="server" Text="Rech Entre Dates"></asp:Label>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:TextBox class="w-100 form-control" TextMode="Date"  ID="txtbxDate1" runat="server" OnTextChanged="txtbxDate1_TextChanged"></asp:TextBox>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:TextBox class="w-100 form-control" TextMode="Date"  ID="txtbxDate2" runat="server" OnTextChanged="txtbxDate2_TextChanged"></asp:TextBox>
                    </div>
                </div>
                <!-- [ Rechercher Client ] -->
                <div class="row mb-3">
                    <div class="col-sm-6">                  
                        <asp:Label class="form-label" runat="server" Text="Rech Par Client"></asp:Label>
                    </div>
                    <div class="col-sm-6">                  
                        <asp:TextBox class="w-100 form-control"  ID="txtbxNumClient" runat="server" OnTextChanged="txtbxNumClient_TextChanged" ></asp:TextBox>
                    </div>
                </div>
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="NumCmd"  ForeColor="#333333" GridLines="None" DataSourceID="SqlDataSource1" OnSelectedIndexChanged="GridView1_SelectedIndexChanged"    >
                    <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                    <Columns>

                        <asp:BoundField DataField="NumCmd" HeaderText="NumCmd" InsertVisible="False" ReadOnly="True" SortExpression="NumCmd" />
                        <asp:BoundField DataField="dateCmd" HeaderText="dateCmd" SortExpression="dateCmd" DataFormatString="{0:d}" />
                        <asp:BoundField DataField="NumClient" HeaderText="NumClient" SortExpression="NumClient" />

                        
                        <asp:BoundField DataField="NumArticle" HeaderText="NumArticle" SortExpression="NumArticle" />
                        <asp:BoundField DataField="QteArticle" HeaderText="QteArticle" SortExpression="QteArticle" />

                        
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
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:aspGestionVentesConnectionString %>" SelectCommand="SELECT * FROM [Commande]"></asp:SqlDataSource>
            </div>          
            <!-------------------------------END Main Form------------------------------->

        </div>
    </form>
</body>
</html>