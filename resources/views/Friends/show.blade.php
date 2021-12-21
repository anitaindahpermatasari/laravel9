@extends('layouts.app')

@section('title', 'Friends')
<!-- section key, value karena section ini bukan diambil dari file tetapi dari key-->

@section('content')
<!-- karena angka yang kita gunakan adalah array dalam array sehingga memerlukan perulangan berupa foreach -->
    <div class="card border-dark mb-3" style="max-width: 30rem;">
            <div class="card-header bg-dark text-light">
                <b>Friend Card</b>
            </div>
                <div class="card-body bg-dark p-2 text-dark bg-opacity-10">
                    <h5 class="card-title">Nama : {{ $friends['nama'] }}</h5>
                    <ul class="list-group list-group-flush">
                        <li class="list-group-item">Nomor Telepon : {{ $friends['no_telp'] }}</li>
                        <li class="list-group-item">Alamat : {{ $friends['alamat'] }}</li>
                    </ul>
                </div>
            <div class="card-body bg-dark p-2 text-dark bg-opacity-10">
                    <h5 class="card-title">Group Saat Ini : @if($friends->groups_id != 0) {{ $friends->groups->name }}
                                                                @else Tidak Tergabung Dalam Groups Apapun Saat Ini
                                                            @endif</h5>
                <ul class="list-group list-group-flush">
                    <li class="list-group-item">Riwayat Group : </li>
                    @if($friends->groups_id != 0)
                        @foreach ($friends->riwayats as $riwayats)
                            <li class="list-group-item">{{$riwayats->groups->name}}</li>
                        @endforeach
                    @else
                            <li class="list-group-item">Tidak Ada Riwayat Group Yang Pernah Di Ikuti</li>
                    @endif
                </ul>
            </div>
    </div>
@endsection
<!-- end section hanya ditulis sekali aja di paling akhir -->
