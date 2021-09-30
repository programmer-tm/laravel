<?php

namespace App\Jobs;

//use App\Contract\Parser;
use App\Services\ParserService;
use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldBeUnique;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Foundation\Bus\Dispatchable;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

class NewsParsing implements ShouldQueue
{
    use Dispatchable, InteractsWithQueue, Queueable, SerializesModels;

    private $rsslink;
    /**
     * Create a new job instance.
     *
     * @return void
     */
    public function __construct($rsslink)
    {
        $this->rsslink = $rsslink;
    }

    /**
     * Execute the job.
     *
     * @return void
     */
    public function handle(ParserService $service)
    {
        $service->parse($this->rsslink);
    }
}
