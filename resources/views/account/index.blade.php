@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">{{ __('Панель пользователя') }}</div>

                <div class="card-body">
                <h3>Привет, {{ auth()->user()->name }}</h3>
                @if(Auth::user()->avatar)
                    <img style="width:33px; height:33px; border-radius: 50%;" src=/storage/{{ auth()->user()->avatar }}>
                    <br>
                @else
                    <p>аватара нет</p>
                @endif
                    @if (session('status'))
                        <div class="alert alert-success" role="alert">
                            {{ session('status') }}
                        </div>
                    @endif
                    @if(Auth::user()->is_admin)
                        <a href="{{ route('admin.index') }}" style="color: red;">В админку!</a>
                    @endif
                    <br>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
