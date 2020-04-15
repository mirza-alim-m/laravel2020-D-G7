<?php

namespace App\Http\Controllers;

use App\Pasien;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class PasienController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $pasien = pasien::when($request->cari, function($query) use($request){
            $query->where('nama', 'LIKE', "%{$request->cari}%");
        })->sortable()->paginate(10);
        return view('pasien.index', compact('pasien'));
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pasien.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
            'kecamatan' => 'required',
            'no_hp' => 'required|size:12',
           // 'jenis' => 'required'


        ]);

        //menggunakn fillabel di model
        Pasien::create($request->all());
        return redirect('/pasien/index')->with('status', 'Data Berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Pasien  $supplier
     * @return \Illuminate\Http\Response
     */
    public function show(Pasien $pasien)
    {
        return view('pasien/lihat', compact('pasien'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Pasien  $supplier
     * @return \Illuminate\Http\Response
     */
    public function edit(Pasien $pasien)
    {
        return view('pasien/edit', compact('pasien'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Supplier  $supplier
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Pasien $pasien)
    {
        $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
            'kecamatan' => 'required',
            'no_hp' => 'required|size:12',
            'jenis' => 'required'

        ]);
        Pasien::where('id',$pasien->id)
            ->update([
                'nama' => $request->nama,
                'alamat' => $request->alamat,
                'kecamatan' => $request->kecamatan,
                'no_hp'=> $request->no_hp,
                'jenis'=> $request->jenis
            ]);
            return redirect('/pasien/index')->with('status', 'Data Berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pasien  $pasien
     * @return \Illuminate\Http\Response
     */
    public function destroy(Pasien $pasien)
    {
        Pasien::destroy($pasien->id);
        return redirect('/pasien/index')->with('status', 'Data Berhasil dihapus'); 
    }
}
