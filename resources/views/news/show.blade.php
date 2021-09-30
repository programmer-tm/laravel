@extends('layouts.main')
@section('content')
<!-- Featured blog post-->
<div class="col-lg-8">
<div class="card mb-4">
    <div class="card-body">
    	@forelse($newsList as $news)
        <a href="#!">
            <img class="card-img-top" src=@if($news->image)/storage/{{ $news->image }} @else "https://dummyimage.com/700x350/dee2e6/6c757d.jpg" @endif alt="..." />
        </a>
        <div class="small text-muted">{{ $id }}</div>
        <h2 class="card-title">{{ $news->title}}</h2>
        <p>{{ $news->author}}</p>
        <p class="card-text">{{ $news->description}}</p>
        @empty
        	<h2>Запись потеряшка</h2>
        @endforelse
        @forelse($feedbackList as $feedback)
        <h4>Отзыв:</h4>
        <p>Автор отзыва: {{ $feedback->name }}</p>
        <p>{{ $feedback->feedback }}</p>
                @empty
                    <h2>Записей нет</h2>
                @endforelse
        <form method="post" action="{{ route('news.show', ['id' => $id, 'idCategory' => $idCategory]) }}">
                @csrf
                @method('get')
                <div class="form-group">
                    <label for="name">Ваше имя:</label>
                    <input type="text" class="form-control" name="name" id="name" value="{{ old('name') }}">
                    @error('name')<div style="color:red;">{{$message}}</div>@enderror
                </div>
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="text" class="form-control" name="email" id="email" value="{{ old('email') }}">
                    @error('email')<div style="color:red;">{{$message}}</div>@enderror
                </div>

                <div class="form-group">
                    <label for="feedback">Отзыв:</label>
                    <textarea class="form-control" name="feedback" id="feedback">{!! old('feedback') !!}</textarea>
                    @error('feedback')<div style="color:red;">{{$message}}</div>@enderror
                </div>
                <br>
                <button type="submit" class="btn btn-success">Отправить</button>
            </form>
            
        <!--<a class="btn btn-primary" href="#!">Read more →</a>-->
    </div>
</div>
</div>
@endsection
@push('js')
    <script>
        //alert("Hello!");
    </script>
@endpush
@push('js')
<script src="https://cdn.ckeditor.com/ckeditor5/29.2.0/classic/ckeditor.js"></script>
<script>
    ClassicEditor
    .create( document.querySelector( '#feedback' ) )
    .then( editor => {
        console.log( editor );
    } )
    .catch( error => {
        console.error( error );
    } );
</script>
@endpush