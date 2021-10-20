<?php

namespace App\Http\Controllers;
use App\Models\fetch_model;
use Illuminate\Http\Request;

class fetch_controller extends Controller
{
    public function user_details(){

        $data=with(new fetch_model)->getUserDetails();
        
        return \View::make("task1")->with("data", $data);
        

    }
}
