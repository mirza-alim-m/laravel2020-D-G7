@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-6">
            <h1 class="mt-3">Ubah Data Dokter</h1>
    <form method="post" action="/dokter/{{ $dokter->id}}">
        @method('patch')
        @csrf
        <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{ $dokter->nama }}">
            @error('nama')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="alamat">alamat</label>
            <input type="text" class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" value="{{ $dokter->alamat }}">
            @error('alamat')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="email">email</label>
            <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ $dokter->email }}">
            @error('email')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="no_hp">no_hp</label>
            <input type="text" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp" value="{{ $dokter  ->no_hp }}">
            @error('no_hp')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="nip">nip</label>
            <input type="text" class="form-control @error('nip') is-invalid @enderror" id="nip" name="nip" value="{{ $dokter->nip }}">
            @error('nip')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>

<button type="submit" class="btn btn-success">Ubah</button>
    </form>

        </div>
    </div>
</div>
@endsection 