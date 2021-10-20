<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Support\Facades\DB;

class fetch_model extends Model
{
    protected $table = "posts";

    public function getUserDetails() {
        // $data=DB::table('posts')->get();
        $data = self::all();
        return $data;
    }
}
