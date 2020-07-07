@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-6">
            <h1 class="mt-3">Tambah Data Dokter</h1>
    <form method="post" action=" {{ route('dokters.store') }} " enctype="multipart/form-data">
        @csrf
        <div class="form-group">
            <label for="nama">Nama Dokter</label>
            <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama" value="{{old('nama')}}">
            @error('nama')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="alamat">Alamat </label>
            <input type="text" class="form-control @error('alamat') is-invalid @enderror" id="alamat" name="alamat" value="{{old('alamat')}}">
            @error('alamat')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="email">Email</label>
            <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" name="email" value="{{old('email')}}">
            @error('email')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="no_hp">No_hp</label>
            <input type="text" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp" value="{{old('no_hp')}}">
            @error('no_hp')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <label for="nip">Nip</label>
            <input type="text" class="form-control @error('nip') is-invalid @enderror" id="nip" name="nip" value="{{old('nip')}}">
            @error('nip')<div class="invalid-feedback">{{ $message }}</div>@enderror
        </div>
        <div class="form-group">
            <div class="form-line">
                <div class="fallback">
                    <label>UNGGAH GAMBAR</label>
                    <input name="image" type="file" multiple required />
                </div>
            </div>
        </div>
        <div class="form-group">
            <div class="form-line">
                <div class="fallback">
                    <label>UNGGAH DOKUMEN</label>
                    <input name="doc_pdf" type="file" multiple required />
                </div>
            </div>
        </div>

<button type="submit" class="btn btn-primary">Tambah</button>
    </form>

        </div>
    </div>
</div>
@endsection 