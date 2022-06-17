<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Tiket_Online.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1 shrink-to-fit=no" >
    <title>Beranda</title>
    <link href="bootstrap4/css/bootstrap.min.css" rel="stylesheet" />
    <link href="additional-file/css/global.css" rel="stylesheet" />
    <!--<link href="bootstrap4/css/bootstrap.css" rel="stylesheet" />-->
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
                    <li class="nav-item active">
                      <a class="navbar-brand" href="#">
                          <img src="additional-file/img/logoMyTicket.png" width="150" height="50" alt="">
                      </a>
                    </li>
                    <li class="nav-item">
                      <a class="nav-link" style="font-size:20px" href="Home.aspx">Beranda</a>
                    </li>
                  </ul> 
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
                            <td><%# Eval("Tanggal","{0:dd-MM-yyyy}")%></td>
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
                <button type="button" class="btn btn-outline-primary" data-target="#ModalTambah" data-toggle="modal">Tambah Data</button>
            </div>
            <!-- Modal -->
            <div class="modal fade" id="ModalTambah" tabindex="-1" role="dialog" aria-labelledby="#exampleModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header alert-primary">
                        <h5 class="modal-title" id="exampleModalLabel">Form Tambah Daftar Bus</h5>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                        </div>
                        <div class="modal-body">
                            <div class="form-group">
                                <asp:Label ID="Label1" runat="server" Text="Tanggal"></asp:Label>
                                <asp:TextBox ID="TxtTanggal" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label2" runat="server" Text="Nama Bus"></asp:Label>
                                <asp:DropDownList ID="DDLNamaBus" CssClass="form-control" runat="server">
                                    <asp:ListItem>Pilih Bus</asp:ListItem>
                                    <asp:ListItem>Sido Mulyo</asp:ListItem>
                                    <asp:ListItem>Sri rejeki</asp:ListItem>
                                    <asp:ListItem>Lancar Jaya</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label3" runat="server" Text="Tujuan"></asp:Label>
                                <asp:TextBox ID="TxtTujuan" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label4" runat="server" Text="Keberangkatan"></asp:Label>
                                <asp:TextBox ID="TxtKeberangkatan" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label5" runat="server" Text="Jam Keberangkatan"></asp:Label>
                                <asp:TextBox ID="TxtJamBerangkat" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label6" runat="server" Text="Jam Tiba"></asp:Label>
                                <asp:TextBox ID="TxtJamTiba" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:Label ID="Label7" runat="server" Text="Kursi Tersedia"></asp:Label>
                                <asp:TextBox ID="TxtKursi" CssClass="form-control" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Batal</button>
                                <asp:Button ID="BtnSave" OnClick="BtnSave_Click" CssClass="btn btn-primary" runat="server" Text="Simpan" />
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <footer></footer>
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
