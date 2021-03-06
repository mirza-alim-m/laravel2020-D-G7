@extends('layouts.master')

@section('content')
@if (session('status'))
<div class="alert alert-success">
    {{session ('status')}}
</div>
@endif
<div class="container">
    <h1 class="mt-3">Daftar Pegawai</h1>
    <div class="float-right">
    <form action="{{ url('/pegawai/index') }}" method="get">
    <table>
        <tr>
        <td><a href="/pegawai/create" class="btn btn-primary mr-20">tambah data</a></td>    
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
                <th>No</th>
                <th>@sortablelink('nama')</th>
                <th>@sortablelink('jabatan')</th>
                <th>@sortablelink('foto')</th>
                <th>@sortablelink('pdf')</th>
                <th>Aksi</th>
            </tr>
        </thead>
        <tbody>
            @foreach ($pegawai as $peg)
            <tr>
                <th scope="row">{{ $loop->iteration}}</th>
                <td>{{$peg->nama}}</td>
                <td>{{$peg->jabatan}}</td>
                <td>
                    @if($peg->foto != NULL)
                    <img src="{{ asset('storage/'.$peg->foto) }}" class="mask waves-effect waves-light rgba-white-slight" height="85px" width="auto">
                    @else
                    <h5 style="color:red">Tidak ada Gambar</h5>
                    @endif
                </td>
                <td>
                @if($peg->pdf!= NULL)
                       <a href="{{ asset('storage/'.$peg->pdf) }}" target="_blank" class="btn bg-grey waves-effect m-r-20">Download PDF</a>
                    @else
                        <h5 style="color:red">Tidak ada file PDF</h5>
                    @endif 
                </td>
                <td>
                    <a href="{{$peg->id}}/edit" class="btn btn-success btn-sm">Ubah</a>
                    <form action="/pegawai/{{ $peg->id }}" method="post" class="d-inline">
                        @method('delete')
                        @csrf
                        <button type="submit" class="btn btn-danger btn-sm"
                            onclick="return confirm('Yakin Data Akan dihapus ?')">Hapus</button>
                    </form>
                    <a href="/pegawai/{{$peg->id}}" class="btn btn-info btn-sm">Lihat</a>
                </td>
            </tr>
            @endforeach
        </tbody>
    </table>
    {{$pegawai->links()}}
   </div>
</div>
@endsection
