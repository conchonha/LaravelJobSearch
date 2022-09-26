<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class career extends Model
{
    //Tạo liên kết tới bản quảng cáo
    protected $table="career";
    //tắt bật chế độ tự động quản lý 'created' và 'update at'
    public $timestamps=false;
}
