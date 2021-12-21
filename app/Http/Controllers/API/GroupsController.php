<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Groups;
use App\Models\Friends;
use App\Models\Familys;

class GroupsController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        // memanggil model firends
       $groups = Groups::orderBy('id', 'desc')->paginate(1);

        return response()->json([
            'success' => true,
            'message' => 'Daftar Nama Grup',
            'data' => $groups
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
            'name' => 'required|unique:groups|max:255|',
            'description' => 'required'
        ]);

        $groups = Groups::create([
            'name' => $request->name,
            'description' => $request->description
        ]);

        if($groups) {
            return response()->json([
                'success' => true,
                'message' => 'Group Berhasil di Tambahkan',
                'data' => $groups
            ], 200);
        } else {
            return response()->json([
                'success' => false,
                'message' => 'Group Gagal di Tambahkan',
                'data' => $groups
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
        $groups = Groups::where('id', $id)->first();

        return response()->json([
            'success' => true,
            'message' => 'Detail Groups',
            'data' => $groups
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
        $groups = Groups::find($id)
        ->update([
            'name' => $request->name,
            'description' => $request->description
        ]);
        return response()->json([
            'success' => true,
            'message' => 'Data Group Berhasil di Perbaharui',
            'data' => $groups
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
        $groups = Groups::find($id)->delete();
        return response()->json([
            'success' => true,
            'message' => 'Data Group Berhasil di Hapus',
            'data' => $groups
        ], 200);
    }
}
