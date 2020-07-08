<?php

namespace App\Http\Controllers;

use App\Pasien;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Storage;

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
            'foto' => 'image|mimes:jpg,jpeg,png,gif|max:2048',
            'pdf' => 'mimes:pdf|max:2048'
        ]);

        
        $foto = $request->file('foto')->store('gambar_pasien');
        
        $pdf = $request->file('pdf')->store('pdf_pasien');

        Pasien::create(
            ['nama' => $request->nama,
            'alamat' => $request->alamat,
            'kecamatan' => $request->kecamatan,
            'no_hp' => $request->no_hp,
            'foto' => $foto,
            'pdf' => $pdf]
        );
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
    public function update(Request $request, $pasien)
    {
        $request->validate([
            'nama' => 'required',
            'alamat' => 'required',
            'kecamatan' => 'required',
            'no_hp' => 'required',
            'foto' => 'image|mimes:jpg,jpeg,png,gif|max:2048',
            'pdf' => 'mimes:pdf|max:2048'
        ]);


        $pasiens = Pasien::findOrFail($pasien);
            
        $foto = $pasiens->foto;
        $pdf = $pasiens->pdf;

        if($request->foto){
            $foto = $request->file('foto')->store('gambar_pasien');
            $foto_path = $pasiens->foto;
            if(Storage::exists($foto_path)){
                Storage::delete($foto_path);
            }
        }

        if($request->pdf){
            $pdf = $request->file('pdf')->store('pdf_pasien');
            $pdf_path = $pasiens->pdf;
            if(Storage::exists($pdf_path)){
                Storage::delete($pdf_path);
            }
        }
        $pasiens->update([
                'nama' => $request->nama,
                'alamat' => $request->alamat,
                'kecamatan' => $request->kecamatan,
                'no_hp'=> $request->no_hp,
                'foto' => $foto,
                'pdf' => $pdf
            ]);
        return redirect('/pasien/index')->with('status', 'Data Berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pasien  $pasien
     * @return \Illuminate\Http\Response
     */
    public function destroy($pasien)
    {
        $pasiens = Pasien::findOrFail($pasien);
        $foto = $pasiens->foto;
        $pdf = $pasiens->pdf;

        if(Storage::exists($foto)){
            Storage::delete($foto);
        }

        if(Storage::exists($pdf)){
            Storage::delete($pdf);
        }

        $pasiens->delete();

        return redirect('/pasien/index')->with('status', 'Data Berhasil dihapus'); 
    }
}
