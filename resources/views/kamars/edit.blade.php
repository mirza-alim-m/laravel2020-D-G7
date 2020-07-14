@extends('layouts.master')

@section('content')

<div class="container">
    <div class="row">
        <div class="col-6">
            <h1 class="mt-3">Ubah Data Kamar</h1>
    <form method="post" action="/kamars/{{ $kamar->id}}" enctype="multipart/form-data">
        @method('patch')
        @csrf
        <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{ $kamar->nama }}">
            @error('nama')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="ruangan">Ruangan</label>
            <input type="text" class="form-control @error('ruangan') is-invalid @enderror" id="ruangan" name="ruangan" value="{{ $kamar->ruangan }}">
            @error('ruangan')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="kelas">Kelas</label>
            <input type="text" class="form-control @error('kelas') is-invalid @enderror" id="kelas" name="kelas" value="{{ $kamar->kelas }}">
            @error('kelas')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label>Ubah PDF
                @if($kamar->pdf)
                <a href="{{ asset('/storage/' . $kamar->pdf) }}" target="_blank">Download PDF</a>
                @else
                <a>Pdf Not Found )</a>
                @endif

            </label>
            <input type="file" name="file" class="form-control-file @error('file') is-invalid @enderror" autocomplete="off">
            @error('file')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>
        <div class="form-group">
            <label>Ubah Gambar :</label>
            <a href="{{ asset('/storage/' . $kamar->gambar) }}" target="_blank"><img width="100% " src="{{asset('/storage/'.$kamar->gambar)}}"></a>
            <input type="file" name="gambar" class="form-control-file @error('gambar') is-invalid @enderror" autocomplete="off">
            @error('gambar')
                <span class="invalid-feedback" role="alert">
                    <strong>{{ $message }}</strong>
                </span>
            @enderror
        </div>


<button type="submit" class="btn btn-success">Ubah</button>
    </form>

        </div>
    </div>
</div>
@endsection 