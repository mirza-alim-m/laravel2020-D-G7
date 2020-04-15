@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-4">
            <h1 class="mt-3">Detail Dokter</h1>

            <div class="card">
                <div class="card-body">
                <h4 class="card-title"><b>{{$dokter->nama}}</b></h5>
                <h6 class="card-subtitle mb-4 text-muted"><u>{{$dokter->alamat}}</u></h6>
                <p class="card-text"><b>Email </b><i>{{$dokter->email}}</i></p>
                <p class="card-text"><b>No HP </b>{{$dokter->no_hp}}</p>
                <p class="card-text"><b>Nip </b>{{$dokter->nip}}</p>
                <a href="/dokter/index" class="card-link">Kembali</a>
             
                </div>
            </div>

        </div>
    </div>
</div>
@endsection 