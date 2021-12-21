<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Friends;
use App\Models\Groups;

class CobaController extends Controller
{
    public function home()
    {
        return view('coba');
        // sesuaikan dengan view yang ingin ditampilkan
    }

    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // memanggil model firends
        $friends = Friends::orderBy('id', 'desc')->paginate(1);

        return response()->json([
            'success' => true,
            'message' => 'Daftar Nama Teman',
            'data' => $friends
        ], 200);
        // memakai compact karena memiliki banyak data array. di isi dengan nama variabel yang akan dipanggil
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
            'nama' => 'required|unique:friends|max:255|',
            'no_telp' => 'required|numeric',
            'alamat' => 'required'
        ]);

        $friends = Friends::create([
            'nama' => $request->nama,
            'no_telp' => $request->no_telp,
            'alamat' => $request->alamat
        ]);

        if($friends) {
            return response()->json([
                'success' => true,
                'message' => 'Teman Berhasil di Tambahkan',
                'data' => $friends
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Teman Gagal di Tambahkan',
                'data' => $friends
            ], 409);
        }
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($id)
    {
        $friends = Friends::where('id', $id)->first();

        return response()->json([
            'success' => true,
            'message' => 'Detail Teman',
            'data' => $friends
        ], 200);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        $friends = Friends::find($id)
        ->update([
            'nama' => $request->nama,
            'no_telp' => $request->no_telp,
            'alamat' => $request->alamat
        ]);
        return response()->json([
            'success' => true,
            'message' => 'Data Teman Berhasil di Perbaharui',
            'data' => $friends
        ], 200);
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        $friends = Friends::find($id)->delete();
        return response()->json([
            'success' => true,
            'message' => 'Data Teman Berhasil di Hapus',
            'data' => $friends
        ], 200);
    }
}
