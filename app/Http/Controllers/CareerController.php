<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\career;
use App\career_child;
use App\list_job;
use App\english_level;
use App\area;

class CareerController extends Controller
{
    public function getDataCareer(){
        $table = career::all();
        return $this->respondWithJson($table,$table->count());
    }

    public function getDataArea(){
        $table = area::all();
        return $this->respondWithJson($table,$table->count());
    }

    public function getDataCareerChild(){
        $table = career_child::all();
        return $this->respondWithJson($table,$table->count());
    }

    public function getDataEnglishLevel(){
        $table = english_level::all();
        return $this->respondWithJson($table,$table->count());
    }

    public function getCareerChildFromIdCareer(Request $request){
        $table = career_child::where('career_child.CareerId',$request->careerId)->get();
        return $this->respondWithJson($table,$table->count());
    }

    public function getListJobFromCarreId(Request $request){
        $table = list_job::where('list_job.CareerId',$request->careerId)->get();
        return $this->respondWithJson($table,$table->count());
    }

    public function getListJobFromEnglishLevelId(Request $request){
        $table = list_job::where('list_job.EnglishLevel',$request->englishLevel)->get();
        return $this->respondWithJson($table,$table->count());
    }

    public function getListJobLess10tr(){
        $table = list_job::where('list_job.BaseSalary','<=',10000000)->get();
        return $this->respondWithJson($table,$table->count());
    }

    public function getListJobBetter10tr_20tr(){
        $table = list_job::where([['list_job.BaseSalary','>=',10000000],['list_job.BaseSalary','<=',20000000]])->get();
        return $this->respondWithJson($table,$table->count());
    }

    public function getListJobBigger20tr(){
        $table = list_job::where('list_job.BaseSalary','>=',20000000)->get();
        return $this->respondWithJson($table,$table->count());
    }

    public function getListJobFromArea(Request $request){
        $table = list_job::where('list_job.areaId',$request->areaId)->get();
        return $this->respondWithJson($table,$table->count());
    }

    public function respondWithJson($data,$total)
    {
        return response()->json([
            'message' => 'Successfully',
            'statuscode' => 200,
            'total' => $total,
            'data' => $data,
        ]);
    }

    public function errorWithJson($error,$message)
    {
        return response()->json([
            'message' => $message,
            'statuscode' => 100,
            'error' => $error
        ]);
    }
    
}
