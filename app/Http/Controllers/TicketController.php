<?php

namespace App\Http\Controllers;

use App\Order;
use App\Route;
use App\Schedule;
use Illuminate\Http\Request;

class TicketController extends Controller
{
   public function ticket(){
       $data['routes']=Route::where('status', 'active')->orderBy('route_name')->get();
       return view('frontend.online_ticket', $data);
   }

    public function availablebus(Request $request){
       $data['rout']=Route::where('id',$request->route)->first();

       //dd($data['rout']);

       $data['date']=$request->date;
        $data['buses']=Schedule::where('status', '1')
            ->where('route_id', $request->route)
            ->where('date', $request->date)
            ->orderBy('bus_id')->get();
        //dd($data['rout']);
        //return $data;
       return view('frontend.available_bus', $data);
    }

    public function buslocation(){

        return view('frontend.bus_location');

    }

    public function seat($id){
        $data['bus']=Schedule::where('id', $id)->first();
        $data['seats']=Order::where('date', $data['bus']->date)->get();
        $data['schedule_id'] = $id;

        if ($data['seats']->count()>0)
        {
            foreach ($data['seats'] as $key => $set) {
                $value[$key] = $set->seat_no;
            }
            $sets = implode('', $value);
            $value = explode(',', $sets);
            $data['value'] = $value;
        }else
        {
            $data['value']=[];
        }

        //$data = in_array( 'A2', $value) ? 'true': 'false';
        //dd($data);
        //dd(in_array($value, 'A2'););
        /*$sets = implode('', $value);
        dd($sets);*/
        //return $data['bus']->bus_id;
        return view('frontend.seat', $data);
    }

    public function passangerinfo(Request $request){

       //return $request;
        $cart =  session()->get('cart');

        if (!$cart){
            return redirect()->back()->with('Error', "Select Minimum one seat");
        }
        $data['passangeinfo']= $request;
        return view('frontend.passanger_info', $data);

    }
}
