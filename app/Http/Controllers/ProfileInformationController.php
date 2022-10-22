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
            'CareerAspirations' => 'required',
            'areaId' => 'required'
        ]);

        if ($validator->fails()) {
            $error = $validator->errors()->first();
            return $this->errorWithJson($error,'Value Invalid');
         }

         $table = profile_information::where('uuid',$request->uuid)->get();
         if($table->count() > 0){
            $table = profile_information::where('uuid',$request->uuid)->update([
                'height' => $request->height,
                'weight' => $request->weight,
                'Experience' => $request->Experience,
                'SchoolsName' => $request->SchoolsName,
                'ProofLetter' => $request->ProofLetter,
                'Interests' => $request->Interests,
                'HomeTown' => $request->HomeTown,
                'EducationLevel' => $request->EducationLevel,
                'CareerAspirations' =>$request->CareerAspirations,
                'SpecialConditions' => $request->SpecialConditions,
                'Salary' => $request->Salary,
                'JobInformation' =>  $request->JobInformation,
                'areaId' => $request->areaId
            ]);
        
            $table = profile_information::where('uuid',$request->uuid)->get();
            return $this->respondWithJson($table,$table->count());
            
         }

         $profile = new profile_information();
         $profile->height = $request->height;
         $profile->weight = $request->weight;
         $profile->Experience = $request->Experience;
         $profile->SchoolsName = $request->SchoolsName;
		 $profile->ProofLetter = $request->ProofLetter;
		 $profile->Interests = $request->Interests;
		 $profile->HomeTown = $request->HomeTown;
		 $profile->EducationLevel = $request->EducationLevel;
		 $profile->CareerAspirations = $request->CareerAspirations;
		 $profile->SpecialConditions = $request->SpecialConditions;
		 $profile->Salary = $request->Salary;
		 $profile->JobInformation = $request->JobInformation;
		 $profile->uuid = $request->uuid;
         $profile->areaId = $request->areaId;
         $profile->save();

         if($profile){
            return $this->respondWithJson([$profile],$profile->count());
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
