<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="AspProjetGestionVentes.admin" %>

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

    <form id="formAdmin" class="d-flex justify-content-center align-items-center w-100 h-100" runat="server">

    </form>
</body>
</html>
