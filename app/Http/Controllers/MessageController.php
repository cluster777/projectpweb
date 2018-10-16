<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\message;


class MessageController extends Controller
{
    //
    public function add(Request $r)
    {
    	$msg=new message();
    	$msg->name=$r->name;
    	$msg->email=$r->email;
    	$msg->subject=$r->subject;
    	$msg->isi=$r->message;
    	$msg->save();
    	$r='tidak';
    	return view('test',compact('r'));
    }
}
