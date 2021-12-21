<?php

namespace App\Http\Controllers\API;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Familys;
use App\Models\Groups;

class FamilysController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $familys = Familys::orderBy('id', 'desc')->paginate(1);

        return response()->json([
            'success' => true,
            'message' => 'Daftar Nama Keluarga',
            'data' => $familys
        ], 200);
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
            'first_name' => 'required|max:255|',
            'last_name' => 'required|unique:familys|max:255|',
            'number_phone' => 'required|numeric',
            'address' => 'required',
            'email' => 'required'
        ]);

        $familys = Familys::create([
            'groups_id' => $request->groups_id,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'number_phone' => $request->number_phone,
            'address' => $request->address,
            'email' => $request->email
        ]);

        if($familys) {
            return response()->json([
                'success' => true,
                'message' => 'Keluarga Berhasil di Tambahkan',
                'data' => $familys
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Keluarga Gagal di Tambahkan',
                'data' => $familys
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
        $familys = Familys::where('id', $id)->first();

        return response()->json([
            'success' => true,
            'message' => 'Detail Keluarga',
            'data' => $familys
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
        $familys = Familys::find($id)
        ->update([
            'groups_id' => $request->groups_id,
            'first_name' => $request->first_name,
            'last_name' => $request->last_name,
            'number_phone' => $request->number_phone,
            'address' => $request->address,
            'email' => $request->email
        ]);
        return response()->json([
            'success' => true,
            'message' => 'Data Keluarga Berhasil di Perbaharui',
            'data' => $familys
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
        $familys = Familys::find($id)->delete();
        return response()->json([
            'success' => true,
            'message' => 'Data Keluarga Berhasil di Hapus',
            'data' => $familys
        ], 200);
    }
}
