<?php

namespace App\Http\Controllers\Admin;

use App\Bus;
use App\Http\Controllers\Controller;
use App\Route;
use App\Schedule;
use Illuminate\Http\Request;

class ScheduleController extends Controller
{
    public function schedule(){
        return view('frontend.schedule');
    }

    public function index()
    {
        $data['schedules'] = Schedule::all();
        return view('admin.schedule.index', $data);
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $data['buses'] = Bus::where('status', 1)->orderBy('name')->get();
        $data['routes'] =Route::where('status', 1)->orderBy('route_name')->get();

        //dd($data['routes']);


        return view('admin.schedule.create', $data);
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //return $request;
        $request->validate([
            'bus_id' => 'required',
            'route_id' => 'required',
            'price' => 'required',
            'total_seat' => 'required',
            'departure_time' => 'required',
            'date' => 'required',
            'status' => 'required'
        ]);
        //return $request;
        $data['bus_id'] = $request->bus_id;
        $data['route_id'] = $request->route_id;
        $data['price'] = $request->price;
        $data['total_seat'] = $request->total_seat;
        $data['left_seat'] =  $request->total_seat;
        $data['departure_time'] = $request->departure_time;
        $data['date'] = $request->date;
        $data['status'] = $request->status;

        //return $data;
        Schedule::create($data);
        session()->flash('success', 'Schedule Create Successfully');
        return redirect()->route('schedules.index');
    }

    /**
     * Display the specified resource.
     *
     * @param  \App\schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function show(schedule $schedule)
    {
        //
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  \App\schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function edit(schedule $schedule)
    {
        $data['schedule']=$schedule;
        $data['buses'] = Bus::where('status', 1)->orderBy('name')->get();
        $data['routes'] =Route::where('status', 1)->orderBy('route_name')->get();
        return view('admin.schedule.edit', $data);
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \App\schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, schedule $schedule)
    {
        $request->validate([
            'bus_id' => 'required',
            'route_id' => 'required',
            'price' => 'required',
            'total_seat' => 'required',
            'departure_time' => 'required',
            'date' => 'required',
            'status' => 'required'
        ]);


        $data['bus_id'] = $request->bus_id;
        $data['route_id'] = $request->route_id;
        $data['price'] = $request->price;
        $data['total_seat'] = $request->total_seat;
        $data['left_seat'] =  $request->total_seat;
        $data['departure_time'] = $request->departure_time;
        $data['date'] = $request->date;
        $data['status'] = $request->status;

        $schedule->update($data);
        session()->flash('success', 'Schedule Update Successfully');
        return redirect()->route('schedules.index');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  \App\schedule  $schedule
     * @return \Illuminate\Http\Response
     */
    public function destroy(Schedule $schedule)
    {
        $schedule->delete();
        session()->flash('success', 'Schedule Deleted Successfully');
        return redirect()->route('schedules.index');
    }
}
