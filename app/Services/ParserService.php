<?php declare(strict_types=1);

namespace App\Services;
use Orchestra\Parser\Xml\Facade as XmlParser;
use App\Contract\Parser;
use App\Models\News;
use Illuminate\Support\Facades\Storage;

class ParserService implements Parser
{
   public function parse(string $link): void
   {
	   $xml = XmlParser::load($link);
	   $data = $xml->parse([
		   'title' => [
			   'uses' => 'channel.title'
		   ],
		   'link' => [
			   'uses' => 'channel.link'
		   ],
		   'description' => [
			   'uses' => 'channel.description'
		   ],
		   'image' => [
			   'uses' => 'channel.image.url'
		   ],
		   'news' => [
			   'uses' => 'channel.item[title,link,guid,description,pubDate]'
		   ]
	   ]);
		//Storage::disk('public')->append('news', json_encode($data));
		foreach ($data['news'] as $news){
			$category_id=2;
			$title=$news['title'];
			$author=$data['title'];
			$description=$news['description'];

			$News = News::create([
				'category_id' => $category_id, 'title' => $title, 'author' => $author, 'description' => $description
			]);
		};
   }
}