<?php

namespace App\Http\Controllers;

use App\Kamar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
use Storage;
class KamarController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(Request $request)
    {
        $kamar = kamar::when($request->cari, function($query) use($request){
            $query->where('nama', 'LIKE', "%{$request->cari}%");
        })->sortable()->paginate(10);
        return view('kamars.index', compact('kamar'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('kamars.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        // $kamar = new Kamar;
        // $kamar->nama = $request->nama;
        // $kamar->kode = $request->ruangan;
        // $kamar->kelas = $request->kelas;
        // $kamar->save();

        //valdasi
        $request->validate([
            'nama' => 'required',
            'ruangan' => 'required|size:4',
            'kelas' => 'required',
                'gambar' => 'required|image|mimes:jpeg,jpg,png,gif',
                'file' => 'required|mimes:pdf'
            ]);
            $gambar = $request->file('gambar')->getClientOriginalName();
            $foto = $request->file('gambar')->storeAs('kamar',$gambar);
            $file = $request->file('file')->getClientOriginalName();
            $pdf = $request->file('file')->storeAs('kamar',$file);
            //menggunakn fillabel di model
        Kamar::create([
            'nama'=>$request->nama,
            'ruang'=>$request->ruang,
            'gambar'=>$foto,
            'pdf'=>$pdf
        ]);
        return redirect('/kamars/index');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Kamar $kamar)
    {
        return view('kamars/lihat', compact('kamar'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Kamar $kamar)
    {
        return view('kamars/edit', compact('kamar'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Kamar $kamar)
    {
        $request->validate([
            'nama' => 'required',
            'ruangan' => 'required|size:4',
            'kelas' => 'required',
                'gambar' => 'image|mimes:jpeg,jpg,png,gif',
                'file' => 'mimes:pdf'
    
            ]);
            //ambi data foto lama
            $lama = Kamar::findOrfail($kamar->id);
            $fotolama =$lama->gambar;
            $pdflama =$lama->pdf;
            $foto=$fotolama;
            $pdf=$pdflama;
            //cek ada update gambar atu tidak
            if ($request->gambar) {
                //hapus fto lama
                Storage::delete($fotolama);
                //simpan gambar baruige:
                $gambar = $request->file('gambar')->getClientOriginalName();
                $foto = $request->file('gambar')->storeAs('kamar',$gambar);
             }
             if ($request->file) {
                //hapus fto lama
                Storage::delete($pdflama);
                //simpan gambar baruige:
                $file = $request->file('file')->getClientOriginalName();
                $pdf = $request->file('file')->storeAs('kamar',$file);
             }
        Kamar::where('id',$kamar->id)
        ->update([
                'nama' => $request->nama,
                'ruangan' => $request->ruangan,
                'kelas' => $request->kelas,
                'gambar'=>$foto,
                'pdf'=>$pdf
            ]);
            return redirect('/kamars/index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy(Kamar $kamar)
    {     
        $s = Kamar::findOrfail($kamar->id);
        Storage::delete($s->gambar);
        Storage::delete($s->pdf);

        Kamar::destroy($kamar->id);
        return redirect('/kamars/index'); 
    }
}
