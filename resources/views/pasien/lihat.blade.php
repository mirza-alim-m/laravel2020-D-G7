@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-4">
            <h1 class="mt-3">Detail Pasien</h1>

            <div class="card">
                <div class="card-body">
                <h4 class="card-title"><b>{{$pasien->nama}}</b></h4>
                <h6 class="card-subtitle mb-4 text-muted"><u>{{$pasien->alamat}}</u></h6>
                <p class="card-text"><b>kecamatan </b><i>{{$pasien->kecamatan}}</i></p>
                <p class="card-text"><b>No HP </b>{{$pasien->no_hp}}</p>
                <a href="/pelanggan/index" class="card-link">Kembali</a>
             
                </div>
            </div>

        </div>
    </div>
</div>
@endsection 