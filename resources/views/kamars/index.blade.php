@extends('layout/main')
@section('content')
@if (session('status'))
<div class="alert alert-success">
    {{session ('status')}}
</div>
@endif
<div class="container">
    <h1 class="mt-3">Daftar Kamar</h1>
    <div class="float-right">
        <form action="{{ url('/kamars/index') }}" method="get">
            <table>
                <tr>
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
                    <th>@sortablelink('kelas')</th>
                    <th>Aksi</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($kamar as $mtr)
                <tr>
                    <th scope="row">{{ $loop->iteration}}</th>
                    <td>{{$mtr->nama}}</td>
                    <td>{{$mtr->kelas}}</td>
                    <td>
                        <a href="{{$mtr->id}}/edit" class="btn btn-success">Ubah</a>
                        <form action="/kamars/{{ $mtr->id }}" method="post" class="d-inline">
                            @method('delete')
                            @csrf
                            <button type="submit" class="btn btn-danger"
                                onclick="return confirm('Yakin Data Akan dihapus ?')">Hapus</button>
                        </form>
                        <a href="/kamars/{{ $mtr->id}}" class="btn btn-info">Lihat</a>
                    </td>
                </tr>
                @endforeach
            </tbody>
        </table>
        {{$kamar->links()}}
    </div>
</div>
@endsection
