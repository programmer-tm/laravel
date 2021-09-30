<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Jobs\NewsParsing;
use App\Services\ParserService;

class ParserController extends Controller
{
    /**
     * Handle the incoming request.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function __invoke(Request $request, ParserService $service)
    {
        $rsslinks = [
            'https://news.yandex.ru/auto.rss',
            //'https://news.yandex.ru/auto_racing.rss',
            //'https://news.yandex.ru/army.rss',
            //'https://news.yandex.ru/gadgets.rss',
            //'https://news.yandex.ru/index.rss',
            //'https://news.yandex.ru/martial_arts.rss',
            //'https://news.yandex.ru/communal.rss',
            //'https://news.yandex.ru/health.rss',
            //'https://news.yandex.ru/games.rss',
            //'https://news.yandex.ru/internet.rss',
            //'https://news.yandex.ru/cyber_sport.rss',
            //'https://news.yandex.ru/movies.rss',
            //'https://news.yandex.ru/cosmos.rss',
            //'https://news.yandex.ru/culture.rss'
        ];
        foreach ($rsslinks as $rsslink){
            //$service()->parse($rsslink);
            dispatch(new NewsParsing($rsslink));
        }
        return back()->with('success', 'В очередь добавили!');
    }
}
