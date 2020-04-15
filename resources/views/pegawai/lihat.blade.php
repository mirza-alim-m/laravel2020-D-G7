@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-4">
            <h1 class="mt-3">Detail Pegawai</h1>

            <div class="card">
                <div class="card-body">
                <h3 class="card-title"><b>{{$pegawai->nama}}</b></h3>
                <h5 class="card-title">{{$pegawai->jabatan}}</h5>
                <h6 class="card-subtitle mb-2 text-muted"><u>{{$pegawai->alamat}}</u></h6>
                <p class="card-text"><b>Email </b><i>{{$pegawai->email}}</i></p>
                <p class="card-text"><b>No HP </b>{{$pegawai->no_hp}}</p>
                <a href="/pegawai/index" class="card-link">Kembali</a>
             
                </div>
            </div>

        </div>
    </div>
</div>
@endsection 