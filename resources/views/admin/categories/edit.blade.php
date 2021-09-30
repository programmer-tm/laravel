@extends('layouts.admin')
@section('title') Изменить категорию - @parent @stop

@section('content')
    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Изменить категорию</h1>

    </div>
    <div class="row">
        <div class="col-md-12">
            <form method="post" action="{{ route('admin.categories.update', ['category' => $category]) }}" enctype="multipart/form-data">
                @csrf
                @method('put')
                <div class="form-group">
                    <label for="title">Название категории</label>
                    <input type="text" class="form-control" name="title" id="title" value="{{ $category->title }}">
                    @error('title')<div style="color:red;">{{$message}}</div>@enderror
                </div>
                <div class="form-group">
                    <label for="description">Описание категории</label>
                    <textarea class="form-control" name="description" id="description">{!! $category->description !!}</textarea>
                </div>
                <div class="form-group">
                    <label for="image">Изображение</label>
                    <input class="form-control" name="image" id="image" type="file">
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
    .create( document.querySelector( '#description' ) )
    .then( editor => {
        console.log( editor );
    } )
    .catch( error => {
        console.error( error );
    } );
</script>
@endpush