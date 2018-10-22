<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\donasi;
use App\message;
class HomeController extends Controller
{
    /**
     * Create a new controller instance.
     *
     * @return void
     */
    public function __construct()
    {
        $this->middleware('auth');
    }

    /**
     * Show the application dashboard.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $don=donasi::orderBy('status','asc')->get();
        $msg=message::orderBy('id','desc')->get();
        return view('home',compact('don','msg'));
    }
}
