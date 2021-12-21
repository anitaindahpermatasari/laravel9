<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Http\Response;
use App\Models\Groups;
use App\Models\Friends;
use App\Models\Familys;
use App\Models\Riwayats;

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

        return view('groups.index', compact('groups'));
        // memakai compact karena memiliki banyak data array. di isi dengan nama variabel yang akan dipanggil
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('groups.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
         // Validate the request...
        $request->validate([
            'name' => 'required|unique:groups|max:255|',
            'description' => 'required'
        ]);

        $groups = new Groups;

        $groups->name = $request->name;
        $groups->description = $request->description;

        $groups->save();

        return redirect('/groups');
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
        // dd($groups);
        return view('groups.show', ['groups' => $groups]);
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit($id)
    {
        $groups = Groups::where('id', $id)->first();
        // dd($groups);
        return view('groups.edit', ['groups' => $groups]);
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
        $request->validate([
            'name' => 'required|unique:groups|max:255|',
            'description' => 'required',
        ]);

        Groups::find($id)->update([
            'name' => $request->name,
            'description' => $request->description
        ]);

        return redirect('/groups');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        Groups::find($id)->delete();
        return redirect('/groups');
    }

    public function addmembers($id)
    {
        $friends = Friends::where('groups_id', '=', 0)->get();
        $group = Groups::where('id', $id)->first();
        return view('groups.addmembers', ['group' => $group, 'friends' => $friends]);
    }
    public function updateaddmembers(Request $request, $id)
    {
        $friends = Friends::where('id', $request->friends_id)->first();
        Friends::find($friends->id)->update([
            'groups_id' => $id
        ]);

        Riwayats::create([
            'friends_id'=>$request->friends_id,
            'familys_id'=>$request->familys_id,
            'groups_id'=>$id
        ]);

        return redirect('/groups/addmembers/'. $id);
    }

    public function deleteaddmembers(Request $request, $id)
    {
        //dd($id);
        Friends::find($id)->update([
            'groups_id' => 0
        ]);

        Riwayats::where('friends_id', $id)->where('groups_id', $request->groups_id)->where('status', 'active')->update([
            'status'=>'inactive'
        ]);

        return redirect('/groups');
    }
}
