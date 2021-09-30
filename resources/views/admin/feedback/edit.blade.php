@extends('layouts.admin')
@section('title') Изменить отзыв - @parent @stop

@section('content')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Изменить отзыв</h1>

    </div>
    <div class="row">
        <div class="col-md-12">
            <form method="post" action="{{ route('admin.feedback.update', ['feedback' => $feedback]) }}">
                @csrf
                @method('put')
                <div class="form-group">
                    <label for="news_id">Новость</label>
                    <select class="form-control" name="news_id">
                        @foreach($NewsList as $News)
                            <option value="{{ $News->id }}"
                            @if(old('news_id') === $News->id) selected @endif>{{ $News->title }}</option>
                        @endforeach
                    </select>
                </div>
                <div class="form-group">
                    <label for="name">Имя</label>
                    <input type="text" class="form-control" name="name" id="name" value="{{ $feedback->name }}">
                    @error('name')<div style="color:red;">{{$message}}</div>@enderror
                </div>
                <div class="form-group">
                    <label for="email">E-mail</label>
                    <input type="text" class="form-control" name="email" id="email" value="{{ $feedback->email }}">
                    @error('email')<div style="color:red;">{{$message}}</div>@enderror
                </div>

                <div class="form-group">
                    <label for="feedback">Отзыв</label>
                    <textarea class="form-control" name="feedback" id="feedback">{!! $feedback->feedback !!}</textarea>
                    @error('feedback')<div style="color:red;">{{$message}}</div>@enderror
                </div>
                <br>
                <button type="submit" class="btn btn-success">Сохранить</button>
            </form>
        </div>
    </div>

@endsection
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