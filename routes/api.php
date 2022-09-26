<?php

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Route;

//-----------------------------USER------------------------

Route::group(['prefix'=>'User'],function(){

	Route::get('getData','UserController@getData');

	Route::post('register','UserController@register');

	Route::get('findUser','UserController@findUser');

	Route::get('getUserByUserName','UserController@getUserByUserName');

});


//-----------------------------Profile Information------------------------

Route::group(['prefix'=>'Profile'],function(){

	Route::get('getData','ProfileInformationController@getData');

	Route::post('register','ProfileInformationController@register');

});


//-----------------------------Career and Job list------------------------

Route::group(['prefix'=>'Career'],function(){

	Route::get('getDataArea','CareerController@getDataArea');

	Route::get('getDataCarreer','CareerController@getDataCareer');

	Route::get('getDataEnglishLevel','CareerController@getDataEnglishLevel');

	Route::get('getDataCareerChild','CareerController@getDataCareerChild');

	Route::get('getCareerChildFromIdCareer','CareerController@getCareerChildFromIdCareer');

	Route::get('getListJobFromCarreId','CareerController@getListJobFromCarreId');

	Route::get('getListJobLess10tr','CareerController@getListJobLess10tr');

	Route::get('getListJobBetter10tr_20tr','CareerController@getListJobBetter10tr_20tr');

	Route::get('getListJobBigger20tr','CareerController@getListJobBigger20tr');

	Route::get('getListJobFromEnglishLevelId','CareerController@getListJobFromEnglishLevelId');

	Route::get('getListJobFromArea','CareerController@getListJobFromArea');
});