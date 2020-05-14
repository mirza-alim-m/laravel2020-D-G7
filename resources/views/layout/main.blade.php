<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>RS</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css"
        integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
    </script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6" crossorigin="anonymous">
    </script>
</head>

<body>
    <div class="container">
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item active">
                        <a class="nav-link" href="/">Home <span class="sr-only">(current)</span></a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/kamars/index">Data Kamar</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pegawai/index">Data Pegawai</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/pasien/index">Data Pasien</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/dokter/index">Data Dokter</a>
                    </li>
                    <li class="nav-item dropdown">
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                            Tambah Data
                        </a>
                        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                            <a class="dropdown-item" href="/kamars/create">Tambah Data Kamar</a>
                            <a class="dropdown-item" href="/pegawai/create">Tambah Data Pegawai</a>
                            <a class="dropdown-item" href="/pasien/create">Tambah Data Pasien</a>
                            <a class="dropdown-item" href="/dokter/create">Tambah Data Dokter</a>
                        </div>
                    </li>
                    </form>
                    <li class="nav-item">
                      <a class="nav-link" href="#" onclick="signOut()">Logout</a>
                      <form id="login-form" action="{{ route('logout') }}" method="post" style="display: none">@csrf</form>
                  </li>
                </ul>
        </nav>
    </div>
    </nav>


    @yield('content')

    <script>
      function signOut(){
        const logout = document.querySelector('#login-form');

        logout.submit();
      }
    </script>
</body>

</html>
