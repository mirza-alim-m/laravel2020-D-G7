<?php

namespace App\Http\Controllers;

use App\Pegawai;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Storage;

class PegawaiController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $pegawai = Pegawai::when($request->cari, function($query) use($request){
            $query->where('nama', 'LIKE', "%{$request->cari}%");
        })->sortable()->paginate(10);
        return view('pegawai.index', compact('pegawai'));
    }


    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('pegawai.create');
    
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $request->validate([
        //     'nama' => 'required',
        //     'jabatan' => 'required',
        //     'alamat' => 'required',
        //     'email' => 'required',
        //     'no_hp' => 'required|size:12'

        // ]);

        // //menggunakn fillabel di model
        // Pegawai::create($request->all());

        $request->validate([
            'nama' => 'required',
            'jabatan' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'no_hp' => 'required|size:12',
            'foto' => 'image|mimes:jpg,jpeg,png,gif|max:2048',
            'pdf' => 'mimes:pdf|max:2048'
        ]);

        
        $foto = $request->file('foto')->store('gambar_pegawai');
        
        $pdf = $request->file('pdf')->store('pdf_pegawai');

        Pegawai::create([
            'nama' => $request->nama,
            'jabatan' => $request->jabatan,
            'alamat' => $request->alamat,
            'email' => $request->email,
            'no_hp' => $request->no_hp,
            'foto' => $foto,
            'pdf' => $pdf
        ]);

        return redirect('/pegawai/index')->with('status', 'Data Berhasil ditambahkan');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\Pegawai  $pegawai
     * @return \Illuminate\Http\Response
     */
    public function show(Pegawai $pegawai)
    {
        return view('pegawai/lihat', compact('pegawai'));

    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\Pegawai  $pegawai
     * @return \Illuminate\Http\Response
     */
    public function edit(Pegawai $pegawai)
    {
        return view('pegawai/edit', compact('pegawai'));

    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\Pegawai  $pegawai
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $pegawai)
    {
        // $request->validate([
        //     'nama' => 'required',
        //     'jabatan' => 'required',
        //     'alamat' => 'required',
        //     'email' => 'required',
        //     'no_hp' => 'required|size:12'

        // ]);
        
        // Pegawai::where('id',$pegawai->id)
        //     ->update([
        //         'nama' => $request->nama,
        //         'jabatan' => $request->jabatan,
        //         'alamat' => $request->alamat,
        //         'email' => $request->email,
        //         'no_hp'=> $request->no_hp
        // ]);

        $request->validate([
            'nama' => 'required',
            'jabatan' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'no_hp' => 'required|size:12',
            'foto' => 'image|mimes:jpg,jpeg,png,gif|max:2048',
            'pdf' => 'mimes:pdf|max:2048'
        ]);


        $pegawais = Pegawai::findOrFail($pegawai);
            
        $foto = $pegawais->foto;
        $pdf = $pegawais->pdf;

        if($request->foto){
            $foto = $request->file('foto')->store('gambar_pegawai');
            $foto_path = $pegawais->foto;
            if(Storage::exists($foto_path)){
                Storage::delete($foto_path);
            }
        }

        if($request->pdf){
            $pdf = $request->file('pdf')->store('pdf_pegawai');
            $pdf_path = $pegawais->pdf;
            if(Storage::exists($pdf_path)){
                Storage::delete($pdf_path);
            }
        }
        
        $pegawais->update([
            'nama' => $request->nama,
            'jabatan' => $request->jabatan,
            'alamat' => $request->alamat,
            'email' => $request->email,
            'no_hp' => $request->no_hp,
            'foto' => $foto,
            'pdf' => $pdf
        ]);
        
        return redirect('/pegawai/index')->with('status', 'Data Berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Pegawai  $pegawai
     * @return \Illuminate\Http\Response
     */
    public function destroy($pegawai)
    {
        // pegawai::destroy($pegawai->id);
            
        $pegawais = Pegawai::findOrFail($pegawai);

        $foto = $pegawais->foto;
        $pdf = $pegawais->pdf;

        if(Storage::exists($foto)){
            Storage::delete($foto);
        }

        if(Storage::exists($pdf)){
            Storage::delete($pdf);
        }

        $pegawais->delete();

        return redirect('/pegawai/index')->with('status', 'Data Berhasil dihapus'); 
    }
}
