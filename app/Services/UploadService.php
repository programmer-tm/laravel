<?php declare(strict_types=1);

namespace App\Services;
use Illuminate\Http\UploadedFile;

class UploadService
{
   public function upload(UploadedFile $file): string
   {
    $fileType = $file->getClientOriginalExtension();
    $fileName = uniqid('img_') . "." . $fileType;
    if($filePath = $file->storeAs('img', $fileName, 'public')){
        return $filePath;
    }
   }
}