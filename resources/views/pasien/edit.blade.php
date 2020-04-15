@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-6">
            <h1 class="mt-3">Ubah Data Pasien</h1>
    <form method="post" action="/pasien/{{ $pasien->id}}">
        @method('patch')
        @csrf
        <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{ $pasien->nama }}">
            @error('nama')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="alamat">alamat</label>
            <input type="text" class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" value="{{ $pasien->alamat }}">
            @error('alamat')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="kecamatan">kecamatan</label>
            <input type="text" class="form-control @error('kecamatan') is-invalid @enderror" id="kecamatan" name="kecamatan" value="{{ $pasien->kecamatan }}">
            @error('kecamatan')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="no_hp">no_hp</label>
            <input type="text" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp" value="{{ $pasien->no_hp }}">
            @error('no_hp')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>

<button type="submit" class="btn btn-primary">Ubah</button>
    </form>

        </div>
    </div>
</div>
@endsection 