<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class profile_information extends Model
{
    //Tạo liên kết tới bản quảng cáo
    protected $table="profile_information";
    //tắt bật chế độ tự động quản lý 'created' và 'update at'
    public $timestamps=false;
}
