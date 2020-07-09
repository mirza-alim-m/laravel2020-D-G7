@extends('layouts.master')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-4">
            <h1 class="mt-3">Detail Pasien</h1>

            <div class="card">
                <div class="card-body">
                <img src="{{ asset('storage/'.$pasien->foto) }}" alt="" srcset="" width="200"><br>
                <a href="{{ asset('storage/'.$pasien->pdf) }}" target="_blank"> Download PDF</a>
                <h4 class="card-title"><b>{{$pasien->nama}}</b></h4>
                <h6 class="card-subtitle mb-4 text-muted"><u>{{$pasien->alamat}}</u></h6>
                <p class="card-text"><b>kecamatan </b><i>{{$pasien->kecamatan}}</i></p>
                <p class="card-text"><b>No HP </b>{{$pasien->no_hp}}</p>
                <a href="/pasien/index" class="card-link">Kembali</a>
             
                </div>
            </div>

        </div>
    </div>
</div>
@endsection 