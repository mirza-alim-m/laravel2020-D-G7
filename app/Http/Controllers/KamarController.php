<?php

namespace App\Http\Controllers;

use App\Kamar;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;
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
            'kelas' => 'required'

        ]);

        //menggunakn fillabel di model
        Kamar::create($request->all());
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
            'kelas' => 'required'

        ]);
        Kamar::where('id',$kamar->id)
            ->update([
                'nama' => $request->nama,
                'ruangan' => $request->ruangan,
                'kelas' => $request->kelas,
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
        Kamar::destroy($kamar->id);
        return redirect('/kamars/index'); 
    }
}
