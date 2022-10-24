<?php

namespace App\Http\Controllers;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\Hash;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use App\user;
use Validator;

class UserController extends Controller
{
    public function getUserByUserName(Request $request){
        $table = user::where("Name",$request["name"])->get();
        return $this->respondWithJson($table[0],$table->count());
    }

    public function findUser(Request $request){
        $strSearch=$request->strSearch;
        $id = $request->id;
        $table=user::where('Name','like','%'.$strSearch.'%')->get();
        return $this->respondWithJson($table,$table->count());
    }


    public function register(Request $request)
    {
    	$validator = Validator::make($request->all(),[
            'uuid' => ['required','max:255'],
            'Name' => ['required','max:50'],
            'Email' => ['required','max:50'],
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();
            return $this->errorWithJson($error,'Value Invalid');
         }

         $user = new user();
         $user->uuid = $request->uuid;
         $user->Name = $request->Name;
         $user->Email = $request->Email;
         $user->Age = $request->Age;
         $user->YearOfBirth = $request->YearOfBirth;
         $user->Gender = $request->Gender;
         $user->save();

         if($user){
            return $this->respondWithJson($user,$user->count());
         }

         return $this->errorWithJson($error,'sever error register faild');
    }

    public function getData(){
        $table = user::all();
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
