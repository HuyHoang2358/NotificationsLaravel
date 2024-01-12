<?php

namespace App\Events;

use Illuminate\Broadcasting\Channel;
use Illuminate\Broadcasting\InteractsWithSockets;
use Illuminate\Broadcasting\PresenceChannel;
use Illuminate\Broadcasting\PrivateChannel;
use Illuminate\Contracts\Broadcasting\ShouldBroadcast;
use Illuminate\Foundation\Events\Dispatchable;
use Illuminate\Queue\SerializesModels;


/**
 * @property $postId
 */
class PostViewedEvent
{
    use Dispatchable, InteractsWithSockets, SerializesModels;


    public $viewer;
    public $post;
    /**
     * Create a new event instance.
     */
    public function __construct($viewer, $post)
    {
        $this->post = $post;
        $this->viewer = $viewer;
    }

}
