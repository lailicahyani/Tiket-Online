<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Tiket_Online.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no" >
    <title>Beranda</title>
    <link href="additional-file/css/global.css" rel="stylesheet" />
    <link href="bootstrap4/css/bootstrap.css" rel="stylesheet" />
    <link href="additional-file/css/jquery.dataTables.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav class="navbar navbar-expand-lg bg-primary">
                <!--Brand-->
              <div class="container-fluid">
                <a class="navbar-brand" href="#">
                    <asp:Image ID="Image1" runat="server" />
                </a>

                  <!--toggle (jika layar di perkecil ada titik 3, button collaps=> diumpetin)-->
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                  <span class="navbar-toggler-icon"></span>
                </button>

                  <!--MenuBar-->
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                  <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                      <a class="nav-link active" aria-current="page" href="#">Home</a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" href="#">Link</a>
                    </li>
                    <li class="nav-item dropdown">
                      <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">
                        Dropdown
                      </a>
                      <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <li><a class="dropdown-item" href="#">Action</a></li>
                        <li><a class="dropdown-item" href="#">Another action</a></li>
                        <li><hr class="dropdown-divider"></li>
                        <li><a class="dropdown-item" href="#">Something else here</a></li>
                      </ul>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link disabled">Disabled</a>
                    </li>
                  </ul>
                  <!--<form class="d-flex" role="search">
                    <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                    <button class="btn btn-outline-success" type="submit">Search</button>
                  </form>-->
                </div>
              </div>
                <!--/MenuBar-->
            </nav>
        </header>
        <main role="main">
            <div class="container mt-5 mb-5">
                <asp:Repeater ID="RptTampilDaftar" runat="server">
                    <HeaderTemplate>
                         <table id="myTable" class="table table-bordered table-striped table-hover">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Tanggal</th>
                                    <th>Nama Bus</th>
                                    <th>Tujuan</th>
                                    <th>Keberangkatan</th>
                                    <th>Jam Keberangkatan</th>
                                    <th>Jam Tiba</th>
                                    <th>Kursi Tersedia</th>
                                    <th>Detail</th>
                                </tr>
                            </thead>
                            <tbody>
                    </HeaderTemplate>
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("ID") %></td>
                            <td><%# Eval("Tanggal") %></td>
                            <td><%# Eval("NamaBus") %></td>
                            <td><%# Eval("Tujuan") %></td>
                            <td><%# Eval("Keberangkatan") %></td>
                            <td><%# Eval("JamBerangkat") %></td>
                            <td><%# Eval("JamTiba") %></td>
                            <td><%# Eval("Kursi") %></td>
                            <td>
                                <a href="#" class="btn btn-success btn-sm">Detail</a>
                                <a href="#" class="btn btn-primary btn-sm">Edit</a>
                            </td>
                        </tr>
                    </ItemTemplate>
                    <FooterTemplate>
                            </tbody>
                        </table>
                    </FooterTemplate>
                </asp:Repeater>                           
            </div>
        </main>
        <footer>

        </footer>
    </form>
    <script src="additional-file/js/jquery-3.2.1.slim.min.js"></script>
    <script src="additional-file/js/popper.min.js"></script>
    <script src="bootstrap4/js/bootstrap.min.js"></script>
    <script src="additional-file/js/jquery.dataTables.min.js"></script>

    <script>
        $(document).ready(function () {
            $("#myTable").DataTable();
        });
    </script>
</body>
</html>
