<%@ Page Title="" Language="C#" AutoEventWireup="true" CodeBehind="register1.aspx.cs" Inherits="Sci_Instruments.HomeMaterial.register1">

<!DOCTYPE html>

<html>
<head runat="server">
    <title>Sci-Instruments</title>
    <link href="index.css" rel="stylesheet" />
        <meta charset="UTF-8" />
    <meta http-equiv="X-UA-Compatible" content="IE-edge" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    
    <link href="index.css" rel="stylesheet" />
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.7/dist/umd/popper.min.js" integrity="sha384-zYPOMqeu1DAVkHiLqWBUTcbYfZ8osu1Nd6Z89ify25QV9guujx43ITvfi12/QExE" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/js/bootstrap.min.js" integrity="sha384-Y4oOpwW3duJdCWv5ly8SCFYWqFDsfob/3GkgExXKV4idmbt98QcxXYs9UoXAB7BZ" crossorigin="anonymous"></script>



    
    <asp:ContentPlaceHolder ID="head" runat="server">
    </asp:ContentPlaceHolder>
</head>
<body>
    <form id="form1" runat="server">
        
                <header class="heading">
                    <h1>Sci-Instruments</h1>
                    <p>Brain full of machine Knowledge</p>
                </header>

                <nav class="navbar navbar-expand-lg bg-body-tertiary w-100 h-25">
  <div class=" container-fluid">
      <a class="navbar-brand" href="#">
        <img src="logo.jpg"  width="30"/></a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id=" nav navbarNav" style="position:fixed">
      <ul class="navbar-nav">
          <li class="nav-item">
              <a class="nav-link active"  href="../Home.aspx">Home</a>
          </li>
        <li class="nav-item">
            
          <a class="nav-link" href="#">Instruments</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Contact</a>
        </li>
        <li class="nav-item">
          <a class="nav-link " href="../HomeMaterial/register.aspx">Sign-In</a>
        </li>
      </ul>
    </div>
  </div>
</nav>
                
                <div class="contentHolder">

            <asp:ContentPlaceHolder ID="ContentPlaceHolder1" runat="server">
               
            </asp:ContentPlaceHolder>
                    
                </div>
                <footer>
                    <p>Get the deal done</p>
                    <p>Interact with Us</p>
                    <p>
                        <a href="sciInstrument@gmail.com">sciInstrument@gmail.com</a>
                    </p>
                </footer>
        
    </form>
</body>
</html>

