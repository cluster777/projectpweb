<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\donasi;


class DonasiController extends Controller
{
    //
    public function add(Request $r)
    {
    	$don=new donasi();
    	$don->name=$r->name;
    	$don->email=$r->email;
    	$don->hp=$r->phone;
    	$don->caradonasi=$r->bank;
    	$don->donasi=$r->donasi;

    	$number=rand(1,99999);
    	if($r->paket=='basic')
    	{
    		$nominal=1000000;
    	}
    	elseif($r->paket=='standard')
    	{
    		$nominal=1300000;
    	}
    	else
    	{
    		$nominal=5000000;
    	}

	    $coba=$nominal+$number;
	    while (True) 
	    {
	    	$donn=donasi::where('status',0)->where('kode_transfer',$coba)->first();
	    	if($donn==null)
	        {
	        	$don->kode_transfer=$coba;
		    	$don->status=0;
		    	$don->save();
		    	$angka=$coba;
		    	$r='iya';
		    	return view('test',compact('angka','r'));
	        }
	        $number=rand(1,99999);
	        $coba=$nominal+$number;
	    }
    	
    }

    public function hapus($id)
    {
    	donasi::where('id',$id)->delete();
    	return redirect('/home');
    }

    public function ubah($id)
    {
    	$don=donasi::where('id',$id)->first();
    	if($don!=null)
    	{
    		if($don->status==0)
    		{
    			$don->status=1;
    		}
    		else
    		{
    			$don->status=0;
    		}
    		$don->save();
    	}
    	return redirect('/home');
    }
}
