@extends('layouts.app')

@section('title', 'Groups')
<!-- section key, value karena section ini bukan diambil dari file tetapi dari key-->

@section('content')
    <a href="/groups/create"><button class="card-link btn-primary">Add Groups</button></a>
<!-- karena angka yang kita gunakan adalah array dalam array sehingga memerlukan perulangan berupa foreach -->
@foreach ($groups as $group)
    <div class="card border-dark mb-3" style="max-width: 20rem;">
        <div class="card-header bg-dark text-light">
                <b>MY GROUP</b>
            </div>
        <div class="card-body bg-dark p-2 text-dark bg-opacity-10">
            <a href="/groups/{{$group['id']}}" class="card-title">Name : {{ $group['name'] }} <br/></a>
        </div>
        <ul class="list-group list-group-flush">
            <h5>Description : {{ $group['description'] }}</h5>
            <a href="/groups/addmembers/{{$group['id']}}"><button class="card-link btn-primary">Add Groups Members</button></a>
            <ul class="list-group">
                @foreach ($group->friends as $friends)
                <li class="list-group-item d-flex justify-content-between align-items-center"> {{$friends->nama}}
                <form action="/groups/deleteaddmembers/{{ $friends->id }}" method="POST">
                    @csrf
                    @method('PUT')
                    <button type="submit" class="bedge card-link btn-danger">X</button>
                </form>
                </li>
                @endforeach
            </ul>
        </ul>
        <div class="card-body">
            <a href="/groups/{{$group['id']}}/edit"><button class="card-link btn-warning">Edit Groups</button></a>
            <form action="/groups/{{$group['id']}}" method="POST">
            @csrf
            @method('DELETE')
            <button class="card-link btn-danger">Delete Groups</button>
            </form>
        </div>
    </div>
@endforeach
    <div>
    {{ $groups->links() }}
    </div>
@endsection
<!-- end section hanya ditulis sekali aja di paling akhir -->
