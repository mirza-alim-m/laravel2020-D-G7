@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-4">
            <h1 class="mt-3">Detail Pegawai</h1>

            <div class="card">
                <div class="card-body">
                <p class="card-text"><b>Nama</b><br>{{$pegawai->nama}}</p>
                <p class="card-text"><b>Jabatan</b><br>{{$pegawai->jabatan}}</p>
                <p class="card-text"><b>Alamat</b><br>{{$pegawai->alamat}}</p>
                <p class="card-text"><b>Email</b><br><i>{{$pegawai->email}}</i></p>
                <p class="card-text"><b>No. Handphone</b><br>{{$pegawai->no_hp}}</p>
                <p class="card-text"><b>Foto</b><br><img src="{{ asset('storage/'.$pegawai->foto) }}" alt="" srcset="" width="200"></p>
                <p class="card-text"><b>PDF</b><br><a href="{{ asset('storage/'.$pegawai->pdf) }}" target="_blank"> Download PDF</a></p>
                <div>
                <a href="/pegawai/index" class="card-link btn btn-primary">Kembali</a>
             
                </div>
            </div>

        </div>
    </div>
</div>
@endsection 