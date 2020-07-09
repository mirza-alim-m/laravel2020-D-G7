@extends('layouts.master')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-4">
            <h1 class="mt-3">Detail Kamar</h1>

            <div class="card">
                <div class="card-body">
                <h3 class="card-title"><b>{{$kamar->nama}}</b></h3>
                <h6 class="card-subtitle mb-2 text-muted">ruangan : {{$kamar->ruangan}}</h6>
                <p class="card-text">{{$kamar->kelas}}</p>
                <a href="/kamars/index" class="card-link">Kembali</a>
             
                </div>
            </div>

        </div>
    </div>
</div>
@endsection 