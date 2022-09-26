<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class english_level extends Model
{
    //Tạo liên kết tới bản quảng cáo
    protected $table="EnglishLevel";
    //tắt bật chế độ tự động quản lý 'created' và 'update at'
    public $timestamps=false;
}
