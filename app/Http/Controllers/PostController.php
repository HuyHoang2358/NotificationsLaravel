<?php

namespace App\Http\Controllers;

use App\Events\PostViewedEvent;
use App\Models\Post;
use Illuminate\Http\Request;

class PostController extends Controller
{
    public function __construct()
    {
        // Apply the 'auth' middleware to all methods except the 'index' method
        $this->middleware('auth:web')->except('index');
    }

    public function index(): \Illuminate\Contracts\View\View|\Illuminate\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Contracts\Foundation\Application
    {
        $posts = Post::all();
        return view('posts.index', ['posts' => $posts]);
    }

    public function show($postId): \Illuminate\Contracts\View\View|\Illuminate\Foundation\Application|\Illuminate\Contracts\View\Factory|\Illuminate\Http\RedirectResponse|\Illuminate\Contracts\Foundation\Application
    {
        $post = Post::find($postId);
        if ($post) {
            PostViewedEvent::dispatch(auth()->user(), $post);
            return view('posts.show', ['post' => $post]);
        }
        return redirect()->back();
    }
}
