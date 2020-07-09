@extends('layouts.master')
@section('content')
@if (session('status'))
<div class="alert alert-success">
    {{session ('status')}}
</div>
@endif
<div class="container">
    <h1 class="mt-3">Daftar Pasien</h1>
    <div class="float-right">
        <form action="{{ url('/pasien/index') }}" method="get">
            <table>
                <tr>
                    <td><a href="/pasien/create" class="btn btn-primary mr-20">tambah data</a></td>
                    <td><input type="text" name="cari" placeholder="Cari data" class="form-control"></td>
                    <td><button type="submit" class="btn btn-primary">Cari</button></td>
                </tr>
            </table>
    </div>
    </form>
    <hr>
    <div class="table-responsive">
        <table class="table text-center">
            <thead class="thead-dark">
                <tr>
                    <th scope="col">No</th>
                    <th>@sortablelink('nama')</th>
                    <th>@sortablelink('alamat')</th>
                    <th>@sortablelink('foto')</th>
                    <th>@sortablelink('pdf')</th>
                    <th>Aksii</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($pasien as $pel)
                <tr>
                    <th scope="row">{{ $loop->iteration}}</th>
                    <td>{{$pel->nama}}</td>
                    <td>{{$pel->alamat}}</td>
                    <td>
                        @if($pel->foto != NULL)
                        <img src="{{ asset('storage/'.$pel->foto) }}" class="mask waves-effect waves-light rgba-white-slight" height="85px" width="auto">
                        @else
                        <h5 style="color:red">Tidak ada Gambar</h5>
                        @endif
                    </td>
                    <td>
                    @if($pel->pdf!= NULL)
                           <a href="{{ asset('storage/'.$pel->pdf) }}" target="_blank" class="btn bg-grey waves-effect m-r-20">Download Pdf</a>
                        @else
                            <h5 style="color:red">Tidak ada file PDF</h5>
                        @endif 
                    </td>
                    <td>
                        <a href="{{$pel->id}}/edit" class="btn btn-success">Ubah</a>
                        <form action="/pasien/{{ $pel->id }}" method="post" class="d-inline">
                            @method('delete')
                            @csrf
                            <button type="submit" class="btn btn-danger"
                                onclick="return confirm('Yakin Data Akan dihapus ?')">Hapus</button>
                        </form>
                        <a href="/pasien/{{$pel->id}}" class="btn btn-info">Lihat</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{$pasien->links()}}
    </div>
</div>
@endsection
