@extends('layout/main')
@section('content')

<div class="container">
    <div class="row">
        <div class="col-6">
            <h1 class="mt-3">Ubah Data Pegawai</h1>
            <form method="post" action="/pegawai/{{ $pegawai->id}}" enctype="multipart/form-data">
                @method('patch')
                @csrf
                <div class="form-group">
                    <label for="nama">Nama</label>
                    <input type="text" class="form-control @error('nama') is-invalid @enderror" id="nama" name="nama"
                        value="{{ $pegawai->nama }}">
                    @error('nama')<div class="invalid-feedback">{{ $message }}</div>@enderror
                </div>
                <div class="form-group">
                    <label for="jabatan">Jabatan</label>
                    <input type="text" class="form-control @error('jabatan') is-invalid @enderror" id="jabatan"
                        name="jabatan" value="{{ $pegawai->jabatan }}">
                    @error('jabatan')<div class="invalid-feedback">{{ $message }}</div>@enderror
                </div>
                <div class="form-group">
                    <label for="alamat">Alamat</label>
                    <input type="text" class="form-control @error('alamat') is-invalid @enderror" id="alamat"
                        name="alamat" value="{{ $pegawai->alamat }}">
                    @error('alamat')<div class="invalid-feedback">{{ $message }}</div>@enderror
                </div>
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="text" class="form-control @error('email') is-invalid @enderror" id="email" name="email"
                        value="{{ $pegawai->email }}">
                    @error('email')<div class="invalid-feedback">{{ $message }}</div>@enderror
                </div>
                <div class="form-group">
                    <label for="no_hp">No. Handphone</label>
                    <input type="text" class="form-control @error('no_hp') is-invalid @enderror" id="no_hp" name="no_hp"
                        value="{{ $pegawai->no_hp }}">
                    @error('no_hp')<div class="invalid-feedback">{{ $message }}</div>@enderror
                </div>
                <div class="form-group">
                    <label for="foto">Foto</label>
                    <input type="file" class="form-control @error('foto') is-invalid @enderror" id="foto" name="foto">
                    @error('foto')<div class="invalid-feedback">{{ $message }}</div>@enderror
                    @if($pegawai->foto != NULL)
                    <div class="my-2">
                        <img src="{{ asset('storage/'.$pegawai->foto) }}" class="mask waves-effect waves-light rgba-white-slight" height="85px" width="auto">
                    </div>
                    @else
                        <h5 style="color:red">Tidak ada Gambar</h5>
                    @endif
                </div>
                <div class="form-group">
                    <label for="pdf">PDF</label>
                    <input type="file" class="form-control @error('pdf') is-invalid @enderror" id="pdf" name="pdf">
                    @error('pdf')
                    <div class="invalid-feedback">{{ $message }}</div>@enderror
                    @if($pegawai->pdf!= NULL)
                        <a href="{{ asset('storage/'.$pegawai->pdf) }}" target="_blank" class="btn bg-grey waves-effect m-r-20">Download Pdf</a>
                    @else
                        <h5 style="color:red">Tidak ada file PDF</h5>
                    @endif 
                </div>
            <button type="submit" class="btn btn-success">Ubah</button>
        </form>
    </div>
</div>
@endsection
