<?php

namespace App\Http\Controllers;

use App\Models\fetch_model;
use RealRashid\SweetAlert\Facades\Alert;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\DB;

class update_pro_name_controller extends Controller
{
    public function update_pro_name(Request $request) {
        // dd($request->all());
        $p_id = $request->p_id;
        $p_name = $request->p_name;
        // dd($request);

        // $check_data = DB::select('select * from posts where product=?' , [$p_name] );
        $check_data = fetch_model::where('product', $p_name)->first();

        if ($check_data) {
            
            return response()->json(['status' => 'success','msg'=>'Record already exists, Please enter new record']);

        }else{

            // DB::select( 'update posts set product = ? where id = ?' , [$p_name,$p_id] );
            fetch_model::where('id', $p_id)->update([ 'product' => $p_name ]);
            return response()->json(['status' => 'success','msg'=>'Record updated successfully']);

        }
    }
}
