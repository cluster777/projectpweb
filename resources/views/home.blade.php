@extends('layouts.app')
@section('tambahlib')
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
@endsection
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Donasi</div>

                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>ID</th>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>HP</th>
                                <th>Paket</th>
                                <th>Kode Transfer</th>
                                <th>Status</th>
                                <th>Action</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($don as $x)
                                <tr>
                                    <td>{{$x->id}}</td>
                                    <td>{{$x->name}}</td>
                                    <td>{{$x->email}}</td>
                                    <td>{{$x->hp}}</td>
                                    <td>{{$x->pilihan_paket}}</td>
                                    <td>Rp. {{strrev(implode('.',str_split(strrev(strval($x->kode_transfer)),3)))}}</td>
                                    <td>
                                        @if($x->status==1)
                                            <span class="btn btn-success">Sudah Membayar</span>
                                        @else
                                            <span class="btn btn-warning">Belum Membayar</span>
                                        @endif
                                    </td>
                                    <td>
                                        @if($x->status==0)
                                            <a href="{{url('/ubah/'.$x->id)}}"><span class="btn btn-info">Ubah Status</span></a>
                                            <br><br>
                                            <a href="{{url('/hapus/'.$x->id)}}"><span class="btn btn-danger">Hapus Donasi</span></a>
                                        @else
                                            <a href="{{url('/ubah/'.$x->id)}}"><span class="btn btn-danger">Ubah Status</span></a>
                                        @endif
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <br>
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Message</div>
                <div class="card-body">
                    <table class="table">
                        <thead>
                            <tr>
                                <th>Nama</th>
                                <th>Email</th>
                                <th>Subject</th>
                                <th>Pesan</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($msg as $x)
                                <tr>
                                    <td>{{$x->name}}</td>
                                    <td>{{$x->email}}</td>
                                    <td>{{$x->subject}}</td>
                                    <td>{{$x->isi}}</td>
                                </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
