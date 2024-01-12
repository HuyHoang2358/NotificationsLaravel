<?php

namespace App\Listeners;

use App\Events\PostViewedEvent;
use App\Models\User;
use App\Notifications\PostViewedNotification;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Support\Facades\Auth;

class ViewedPostListener implements ShouldQueue
{
    use InteractsWithQueue;

    public function handle(PostViewedEvent  $event): void
    {
        $postAuthor =User::find($event->post->user_id);
        if($postAuthor->id !== Auth::id()){
            $postAuthor->notify(new PostViewedNotification($event->viewer, $event->post));
        }
    }
}
