<?php

namespace App\Http\Controllers;
use Illuminate\Http\Request;
use App\profile_information;
use Validator;

class ProfileInformationController extends Controller
{
	public function register(Request $request)
    {
    	$validator = Validator::make($request->all(),[
            'uuid' => ['required','max:255'],
            'careerAspirations' => 'required',
            'areaId' => 'required'
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();
            return $this->errorWithJson($error,'Value Invalid');
         }

         $profile = new profile_information();
         $profile->height = $request->height;
         $profile->weight = $request->weight;
         $profile->Experience = $request->experience;
         $profile->SchoolsName = $request->schoolsName;
		 $profile->ProofLetter = $request->proofLetter;
		 $profile->Interests = $request->interests;
		 $profile->HomeTown = $request->homeTown;
		 $profile->EducationLevel = $request->educationLevel;
		 $profile->CareerAspirations = $request->careerAspirations;
		 $profile->SpecialConditions = $request->specialConditions;
		 $profile->Salary = $request->Salary;
		 $profile->JobInformation = $request->jobInformation;
		 $profile->uuid = $request->uuid;
         $profile->areaId = $request->areaId;
         $profile->save();

         if($profile){
            return $this->respondWithJson($profile,$profile->count());
         }

         return $this->errorWithJson($error,'Server error insert Profile faild');
    }

    public function getData(){
        $table = profile_information::all();
        return $this->respondWithJson($table,$table->count());
    }

    public function respondWithJson($data,$total)
    {
        return response()->json([
            'message' => 'Successfully',
            'statuscode' => '200',
            'total' => $total,
            'data' => $data,
        ]);
    }

    public function errorWithJson($error,$message)
    {
        return response()->json([
            'message' => $message,
            'statuscode' => '100',
            'error' => $error
        ]);
    }
    
}
