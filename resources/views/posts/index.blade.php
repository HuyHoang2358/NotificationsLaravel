<!-- resources/views/posts/index.blade.php -->

@extends('layouts.app')

@section('content')
    <div class="container">
        <h1>All Posts</h1>
        @foreach ($posts as $post)
            <div style="border-bottom: 1px dashed gray; margin-top: 10px">
                <a style="font-weight: bold; font-size:24px" href="{{route('posts.show', $post->id)}}">{{ $post->name }}</a>
                <p>{{ $post->content }}</p>
            </div>
        @endforeach
    </div>
@endsection
