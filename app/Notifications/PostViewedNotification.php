<?php

namespace App\Notifications;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Notifications\Messages\MailMessage;
use Illuminate\Notifications\Notification;
use Illuminate\Queue\InteractsWithQueue;

class PostViewedNotification extends Notification
{
    public $post;
    public $viewer;

    public function __construct($viewer, $post)
    {
        $this->viewer = $viewer;
        $this->post = $post;
    }


    public function via(object $notifiable): array
    {
        return ['database'];
    }

    public function toDatabase(object $notifiable): array
    {
         return [
             'post_id' => $this->post->id,
             'post_name' => $this->post->name,
             'viewer_id' => $this->viewer->id,
         ];
    }
}
