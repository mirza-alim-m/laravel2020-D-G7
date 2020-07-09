@extends('layouts.master')

@section('content')
@if (session('status'))
<div class="alert alert-success">
    {{session ('status')}}
</div>
@endif
<div class="container">
    <h1 class="mt-3">Daftar Dokter</h1>
    <div class="float-right">
        <form action="{{ route('dokters.index')}}">
            <table><br>
                <tr>
                    <td><a href="/dokters/create" class="btn btn-primary mr-20">tambah data</a></td>
                    <td><input type="text" name="cari" placeholder="Cari data" class="form-control"></td>
                    <td><button type="submit" class="btn btn-primary">Cari</button></td>
                </tr>
            </table>
        </form>
    </div>
    <hr>
    <div class="table-responsive">
        <table class="table text-center">
            <thead class="thead-dark">
                <tr>
                    <th>No</th>
                    <th>@sortablelink('nama')</th>
                    <th>@sortablelink('alamat')</th>
                    <th>@sortablelink('email')</th>
                    <th>@sortablelink('no_hp')</th>
                    <th>@sortablelink('nip')</th>
                    <th>@sortablelink('image')</th>
                    <th>@sortablelink('doc_pdf')</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($dokter as $sup)
                <tr>
                    <th scope="row">{{ $loop->iteration}}</th>
                    <td>{{$sup->nama}}</td>
                    <td>{{$sup->alamat}}</td>
                    <td>{{$sup->email}}</td>
                    <td>{{$sup->no_hp}}</td>
                    <td>{{$sup->nip}}</td>
                    <td>
                        @if($sup->image!= NULL)
                           <img src="{{ asset($sup->image) }}" class="mask waves-effect waves-light rgba-white-slight" height="85px" width="auto">
                        @else
                            <h5 style="color:red">Tidak ada Gambar</h5>
                        @endif 
                    </td>
                    <td>
                        @if($sup->doc_pdf!= NULL)
                           <a href="{{ asset($sup->doc_pdf) }}" class="btn bg-grey waves-effect m-r-20">Download Pdf</a>
                        @else
                            <h5 style="color:red">Tidak ada file PDF</h5>
                        @endif 
                    </td>
                    <td>
                        <a href="{{ route('dokters.edit', $sup->id) }}" class="btn btn-success">Ubah</a>
                        <form  action="{{ route('dokters.destroy', $sup->id) }}" method="post" class="d-inline">
                            @method('delete')
                            @csrf
                            <button type="submit" class="btn btn-danger"
                                onclick="return confirm('Yakin Data Akan dihapus ?')">Hapus</button>
                        </form>
                        <a href="/dokters/{{$sup->id}}" class="btn btn-info">Lihat</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{$dokter->links()}}
    </div>
</div>
@endsection
