@extends('layouts.admin.master')
@section('title', 'Update Route')
@section('content')
    <!-- Page-Title -->
    <div class="row">
        <div class="col-sm-12">
            <div class="page-header-title">
                <h4 class="pull-left page-title">Update Route</h4>
                <ol class="breadcrumb pull-right">
                    <li><a href="{{route('admin.dashboard')}}">Dashboard</a></li>
                    <li class="active">Update Route</li>
                </ol>
                <div class="clearfix"></div>
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-sm-12">
            <div class="panel panel-primary">
                <div class="panel-heading"><h3 class="panel-title">Schedule </h3></div>
                <div class="panel-body">
                    <form class="form-horizontal" action="{{route('schedules.update', $schedule->id)}}" method="post" enctype="multipart/form-data">
                        @csrf
                        @method('put')
                        <div class="form-group">
                            <label class="col-sm-2 control-label">Bus Name</label>
                            <div class="col-sm-10">
                                <select for="bus_id" name="bus_id" id="bus_id" class="form-control">
                                    @foreach($buses as $bus)
                                        <option @if($schedule->bus_id == $bus->id) selected @endif value="{{ $bus->id }}"> {{ $bus->name }} </option>
                                    @endforeach
                                </select>
                                @error('bus_id')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-sm-2 control-label">Route Name</label>
                            <div class="col-sm-10">
                                <select name="route_id" for="rote_id" id="rote_id" class="form-control">
                                    @foreach($routes as $rote)
                                        <option @if($schedule->route_id == $rote->id) selected @endif value="{{ $rote->id }}"> {{ $rote->route_name }} </option>
                                    @endforeach
                                </select>
                                @error('route_id')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>


                        <div class="form-group">
                            <label for="price" class="col-md-2 control-label">Price</label>
                            <div class="col-md-10">
                                <input value="{{$schedule->price}}" name="price" type="text" id="price" class="form-control @error('price') is-invalid @enderror" placeholder="Price per seat">
                                @error('price')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group">
                            <label for="total_seat" class="col-md-2 control-label">Total seat</label>
                            <div class="col-md-10">
                                <input value="{{$schedule->total_seat}}" name="total_seat" type="number" max="40" min="1" id="total_seat" class="form-control @error('total_seat') is-invalid @enderror" placeholder="Enter total seat">
                                @error('total_seat')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">Depart Time</label>
                            <div class="col-md-10">
                                <input value="{{$schedule->departure_time}}" type="time"  min="07:00" max="19:00" name="departure_time" id="departure_time" class="form-control @error('departure_time') is-invalid @enderror">
                                @error('departure_time')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">Date</label>
                            <div class="col-md-10">
                                <input value="{{$schedule->date}}" type="date"  name="date" id="date" min="<?php echo date("Y/m/d")?>" class="form-control @error('date') is-invalid @enderror">
                                @error('date')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>

                        <div class="form-group">
                            <label class="col-md-2 control-label">Status</label>
                            <div class="col-md-10">
                                <div class="radio radio-info radio-inline">
                                    <input @if($schedule->status == '1') checked @endif type="radio" id="active" value="1" name="status">
                                    <label for="active"> Active </label>
                                </div>
                                <div class="radio radio-inline">
                                    <input @if($schedule->status == '0') checked @endif type="radio" id="inactive" value="0" name="status">
                                    <label for="inactive"> Inactive </label>
                                </div>
                                @error('status')
                                <div class="text-danger">{{ $message }}</div>
                                @enderror
                            </div>
                        </div>
                        <div class="pull-right">
                            <button type="submit" class="btn btn-info waves-effect waves-light">Update</button>
                        </div>
                    </form>
                </div> <!-- panel-body -->
            </div> <!-- panel -->
        </div> <!-- col -->
    </div>
    <!-- End Row -->

@endsection
