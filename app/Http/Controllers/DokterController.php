<?php

namespace App\Http\Controllers;

use App\Dokter;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
class DokterController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $dokter = dokter::when($request->cari, function($query) use($request){
            $query->where('nama', 'LIKE', "%{$request->cari}%");
        })->sortable()->paginate(10);
        return view('dokter.index', compact('dokter'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('dokter.create');

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
            'email' => 'required',
            'nip' => 'required|size:12'

        ]);

        //menggunakn fillabel di model
        Dokter::create($request->all());
        return redirect('/dokter/index')->with('status', 'Data Berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Dokter  $dokter
     * @return \Illuminate\Http\Response
     */
    public function show(Dokter $dokter)
    {
        return view('dokter/lihat', compact('dokter'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Dokter  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function edit(Dokter $dokter)
    {
        return view('dokter/edit', compact('dokter'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Pelanggan  $pelanggan
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Dokter $dokter)
    {
        $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'no_hp' => 'required',
            'nip' => 'required|size:12'

        ]);
        Dokter::where('id',$dokter->id)
            ->update([
                'nama' => $request->nama,
                'alamat' => $request->alamat,
                'email' => $request->email,
                'no_hp'=> $request->no_hp,
                'nip' => $request->nip,
            ]);
            return redirect('/dokter/index')->with('status', 'Data Berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Dokter  $dokter
     * @return \Illuminate\Http\Response
     */
    public function destroy(Dokter $dokter)
    {
        Dokter::destroy($dokter->id);
        return redirect('/dokter/index')->with('status', 'Data Berhasil dihapus'); 
    }
}
