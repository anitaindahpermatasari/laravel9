@extends('layouts.app')

@section('title', 'Add Members')
<!-- section key, value karena section ini bukan diambil dari file tetapi dari key-->

@section('content')

    <form action="/groups/addmembers/{{$group->id}}" method="POST">
    @csrf
    @method('PUT')
    <div class="mb-3">
        <label for="exampleInputEmail1" class="form-label">Groups Members Name</label>
        <select class="form-select" aria-label="Members Name" name="friends_id">
            <option selected>Select Members To Join Groups</option>
            @foreach ($friends as $friends)
            <option value="{{$friends->id}}">{{$friends->nama}}</option>
            @endforeach
        </select>
    </div>

    <button type="submit" class="btn btn-primary">Add Members to Groups</button>
    </form>

@endsection
<!-- end section hanya ditulis sekali aja di paling akhir -->
