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
        request()->validate([
            'nama' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'no_hp' => 'required',
            'nip' => 'required|size:12',
            'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
            'doc_pdf' => 'required|mimes:pdf|max:2048',
        ]);

        if ($request->has('active')) {
            $active = 1;
        } else {
            $active = 0;
        }

        $fileNameImage = time().'.'.request()->image->getClientOriginalExtension();
        $fileNamePdf = time().'.'.request()->doc_pdf->getClientOriginalExtension();
        
            $dokter = new Dokter();
            $dokter->nama = $request->nama;
            $dokter->alamat = $request->alamat;
            $dokter->email = $request->email;
            $dokter->no_hp = $request->no_hp;
            $dokter->nip = $request->nip;
            $dokter->image = $request->image;
            $dokter->doc_pdf = $request->doc_pdf;
            
            if ($request->image->move(storage_path('app/public/dokter/gambar'), $fileNameImage)) {
                $dokter->image = "storage/dokter/gambar/".$fileNameImage;
            }
            if ($request->doc_pdf->move(storage_path('app/public/dokter/pdf'), $fileNamePdf)) {
                $dokter->doc_pdf = "storage/dokter/pdf/".$fileNamePdf;
            }
            
            $dokter->save();

        return redirect(route('dokters.index'))->with('success', 'Data Dokter baru berhasil ditambahkan');
        // return redirect('/dokter/index')->with('status', 'Data Berhasil ditambahkan');
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
    public function update(Request $request,  $id)
    {
        // $request->validate([
        //     'nama' => 'required',
        //     'alamat' => 'required',
        //     'email' => 'required',
        //     'no_hp' => 'required',
        //     'nip' => 'required|size:12'

        // ]);
        // Dokter::where('id',$dokter->id)
        //     ->update([
        //         'nama' => $request->nama,
        //         'alamat' => $request->alamat,
        //         'email' => $request->email,
        //         'no_hp'=> $request->no_hp,
        //         'nip' => $request->nip,
        //     ]);
        $dokterPict = Dokter::where("id","=",$id)->get()->first()->image;
        $dokterDoc = Dokter::where("id","=",$id)->get()->first()->doc_pdf;

        // return response()->json($pasienPict);

        if (!$request->image) {
            
            $request->validate([
                'nama' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'no_hp' => 'required',
            'nip' => 'required|size:12',
            'doc_pdf' => 'required|mimes:pdf|max:2048', 
            ]);
            $fileNamePdf = time().'.'.request()->doc_pdf->getClientOriginalExtension();
        } else if (!$request->doc_pdf) {
            $request->validate([
                'nama' => 'required',
            'alamat' => 'required',
            'email' => 'required',
            'no_hp' => 'required',
            'nip' => 'required|size:12',
            'doc_pdf' => 'required|mimes:pdf|max:2048', 
            ]);
            $fileNameImage = time().'.'.request()->image->getClientOriginalExtension();
        }else {
            $request->validate([
                'nama' => 'required',
                'alamat' => 'required',
                'email' => 'required',
                'no_hp' => 'required',
                'nip' => 'required|size:12',
                'image' => 'required|image|mimes:jpeg,png,jpg,gif|max:2048',
                'doc_pdf' => 'required|mimes:pdf|max:2048',
            ]);

            $fileNameImage = time().'.'.request()->image->getClientOriginalExtension();
            $fileNamePdf = time().'.'.request()->doc_pdf->getClientOriginalExtension();
        }
        
        // if ($request->has('active')) {
        //     $active = 1;
        // } else {
        //     $active = 0;
        // }
        

        $dokter =Dokter::findOrFail($id);
        $dokter->nama = $request->nama;
        $dokter->alamat = $request->alamat;
        $dokter->email = $request->email;
        $dokter->no_hp= $request->no_hp;
        $dokter->nip= $request->nip;
        $dokter->image = $request->image;
        $dokter->doc_pdf = $request->doc_pdf;

        $dokter->image = $request->image;
        if($request->hasFile('image')){
            if (is_file($dokter->image)){
                try{
                    unlink($pasienPict);
                } catch(\Exception $e){

                }
            }
            $request->image->move(storage_path('app/public/dokter/gambar'), $fileNameImage);
            $dokter->image = "storage/dokter/gambar/".$fileNameImage;
        } else {
            $dokter->image = $dokterPict;
        }

        $dokter->doc_pdf = $request->doc_pdf;
        if($request->hasFile('doc_pdf')){
            if (is_file($dokter->doc_pdf)){
                try{
                    unlink($dokterDoc);
                } catch(\Exception $e){

                }
            }
            $request->doc_pdf->move(storage_path('app/public/dokter/pdf'), $fileNamePdf);
            $dokter->doc_pdf = "storage/dokter/pdf/".$fileNamePdf;
        } else {
            $dokter->doc_pdf = $dokterDoc;
        }
        $dokter->save();
            return redirect('dokters')->with('status', 'Data Berhasil diubah');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\Dokter  $dokter
     * @return \Illuminate\Http\Response
     */
    public function destroy( $id)
    {
        $dokter = Dokter::find($id);
        if (is_file($dokter->image)) {
            unlink($dokter->image);
        }
        if (is_file($dokter->doc_pdf)) {
            unlink($dokter->doc_pdf);
        }
        $dokter->delete();
        return redirect('dokters')->with('status', 'Data Berhasil dihapus'); 
    }
}
