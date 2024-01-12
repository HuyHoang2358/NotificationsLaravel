<!-- resources/views/posts/show.blade.php -->

@extends('layouts.app')

@section('content')
    <h1>Posts Detail</h1>
    <div class="container">
        <h1>{{ $post->name }}</h1>
        <p>{{ $post->content }}</p>
    </div>
@endsection
