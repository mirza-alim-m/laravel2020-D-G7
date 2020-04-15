@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-6">
            <h1 class="mt-3">Ubah Data Pegawai</h1>
    <form method="post" action="/pegawai/{{ $pegawai->id}}">
        @method('patch')
        @csrf
        <div class="form-group">
            <label for="nama">Nama</label>
            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{ $pegawai->nama }}">
            @error('nama')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="jabatan">Nama</label>
            <input type="text" class="form-control @error('jabatan') is-invalid @enderror" id="jabatan" name="jabatan" value="{{ $pegawai->jabatan }}">
            @error('jabatan')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="alamat">alamat</label>
            <input type="text" class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" value="{{ $pegawai->alamat }}">
            @error('alamat')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="email">email</label>
            <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{ $pegawai->email }}">
            @error('email')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="no_hp">no_hp</label>
            <input type="text" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp" value="{{ $pegawai->no_hp }}">
            @error('no_hp')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>

<button type="submit" class="btn btn-success">Ubah</button>
    </form>

        </div>
    </div>
</div>
@endsection 