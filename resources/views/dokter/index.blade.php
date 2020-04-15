@extends('layout/main')
@section('content')
@if (session('status'))
<div class="alert alert-success">
    {{session ('status')}}
</div>
@endif
<div class="container">
    <h1 class="mt-3">Daftar Dokter</h1>
    <div class="float-right">
        <form action="{{ url('/dokter/index') }}" method="get">
            <table>
                <tr>
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
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($dokter as $sup)
                <tr>
                    <th scope="row">{{ $loop->iteration}}</th>
                    <td>{{$sup->nama}}</td>
                    <td>{{$sup->alamat}}</td>
                    <td>
                        <a href="{{$sup->id}}/edit" class="btn btn-success">Ubah</a>
                        <form action="/dokter/{{ $sup->id }}" method="post" class="d-inline">
                            @method('delete')
                            @csrf
                            <button type="submit" class="btn btn-danger"
                                onclick="return confirm('Yakin Data Akan dihapus ?')">Hapus</button>
                        </form>
                        <a href="/dokter/{{$sup->id}}" class="btn btn-info">Lihat</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{$dokter->links()}}
    </div>
</div>
@endsection
