<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <title>Seat :: DIU_Transport_System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/magnific-popup.js/1.1.0/magnific-popup.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.13.1/css/all.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">

    <link rel="shortcut icon" href="{{asset('assets/frontend/icons/fav-icon.png')}}" />

    <link rel="stylesheet" href="{{asset('assets/frontend/style/sup.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/co-sup.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/teams.css')}}">
    <link href="{{asset('assets/frontend/style/bootstrap.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/bus.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/buyticket.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/contact.css')}}" rel="stylesheet">
    <link id="theme-color-file" href="{{asset('assets/frontend/style/footer.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/main.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/nav.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/responsive.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/user.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/gallery.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/most_post.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/drop.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/about.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/locate.css')}}">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/select-seat.css')}}">

</head>

<body class="home page-template-default page page-id-122228 " style="  background-color: rgb(231, 231, 231);">

<div class="mobile-fixed-toolbar">
    <ul class="top-nav-mobile-left">
        <li style="width:36%;">
            <a href="{{route('user.home')}}"><img style="width:120px;" src="{{asset('assets/frontend/images/logo.png')}}"></a>
        </li>
    </ul>
    <ul class="top-nav-mobile">
        <li><a href="{{route('seat', $bus->id)}}" id="pull" class="toggle-mobile-menu"><i class="fa fa-bars" aria-hidden="true"></i></a></li>
    </ul>
</div>

<nav id="navigation" class="primary-navigation mobile-menu-wrapper" role="navigation">
    @include('layouts.frontend._topNav')
</nav>
<div style="width: 100%;height:50px ; background: rgb(6, 100, 121)">
</div>
<br><br>
<div>
    <h1 class="section-headingq ">Book Your Seat</h1>
</div>
<br><br>
<div class="auto-container">

    <div class="row clearfix">

        <div class="sidebar-side col-lg-5 col-md-12 col-sm-12">
            <div class="dx">
                <table>
                    <tr>
                        <td><button class="bit" id=""></button></td>
                        <td style="font-size: 13px;">Available Seat</td>

                    </tr>
                    <tr>
                        <td><button class="bit1" id=""></button></td>
                        <td style="font-size: 13px;">Sold Seat</td>

                    </tr>
                </table>
            </div>
            <div id="bus-seat">

                <div id="keyboard">

                    <table style="text-align: center; margin-top:-10px;" id="all_set">

                        <tr>
                            <td>

                            </td>

                            <td>

                            </td>

                            <td>

                            </td>

                            <td>
                                <button class="operator" style=" background-color: #fff;"><img src="{{asset('assets/frontend/icons/driver.png')}}" alt=""></button>
                            </td>

                        </tr>
                        @php
                            $j = floor(($bus->total_seat)/4);
                            $i = 0;
                        @endphp
                        @foreach(range('A', 'J') as $key=>$column)

                            <tr style="color: #fff">
                                @if($key == $j)
                                    @break;
                                @endif
                                @php
                                    $i = $i+1;
                                    $seat = $column.'1';
                                @endphp
                                    <td>
                                        <a @if(in_array($seat, $value)) href="#" style="background-color:red;" @else href="{{route('add-cart', $i)}}" @endif class="number py-3">{{$column}}1</a>
                                    </td>
                                @if($key == $j)
                                    @break;
                                @endif
                                    @php
                                        $i = $i+1;
                                        $seat = $column.'2';
                                    @endphp
                                <td>
                                    <a @if(in_array($seat, $value)) href="#" style="background-color:red;" @else href="{{route('add-cart', $i)}}" @endif class="number py-3">{{$column}}2</a>
                                </td>
                                @if($key == $j)
                                    @break;
                                @endif
                                    @php
                                        $i = $i+1;
                                        $seat = $column.'3';
                                    @endphp
                                <td>
                                    <a @if(in_array($seat, $value)) href="#" style="background-color:red; margin-left: 44px;" @else href="{{route('add-cart', $i)}}" @endif style="margin-left: 44px;" class="number py-3">{{$column}}3</a>
                                </td>
                                @if($key == $j)
                                    @break;
                                @endif
                                    @php
                                        $i = $i+1;
                                        $seat = $column.'4';
                                    @endphp
                                <td>
                                    <a @if(in_array($seat, $value)) href="#" style="background-color:red;" @else href="{{route('add-cart', $i)}}" @endif class="number py-3">{{$column}}4</a>
                                </td>
                            </tr>
                        @endforeach

                    </table>
                </div>
            </div>
        </div>
        <div class="content-side col-lg-7 col-md-12 col-sm-12">
            <div class="mt-0">
                @if(session('success'))
                    <div class="alert alert-success" style="padding: 15px 10px; font-size: 15px; font-weight: bold;">
                        {{session('success')}}
                    </div>
                @endif
                @if(session('Error'))
                    <div class="alert alert-danger" style="padding: 15px 10px; font-size: 15px; font-weight: bold;">
                        {{session('Error')}}
                    </div>
                @endif
            </div>
            <div class="tab mt-0">
                <b style="font-size: 18px; color: rgb(13, 24, 75);">Booking Details :</b>
                <table class="table " style="font-size: 15px;text-align: center;   background-color: rgb(48, 151, 182);color: #fff;">
                    <tr>
                        <td>
                            {{$bus->bus->name}}
                        </td>
                        <td>
                            @php
                                $dt = new DateTime('now', new DateTimezone('Asia/Dhaka'));
                            @endphp
                            {{$dt->format('h:i A')}}
                        </td>
                        <td>{{ Carbon\Carbon::createFromFormat('Y-m-d', $bus->date)->format('jS M y') }}</td>
                    </tr>
                </table>

                <table class="table table-bordered" id="content" style="font-size: 12px;text-align: center;   background-color: #fff;">
                    <tr style="background-color: rgb(83, 192, 219); color:#fff;">
                        <th style="font-size: 15px;">
                            Select Seat
                        </th>
                        <th style="font-size: 15px;">
                            Quantity
                        </th>
                        <th style="font-size: 15px;">
                            Fare ৳
                        </th>
                        <th style="font-size: 15px;">
                            Action
                        </th>
                    </tr>
                    @php
                        $total = 0;
                        $sub_total = 0;
                     @endphp
                    @if(session('cart'))
                        @foreach(session('cart') as $id => $product)
                            @php
                                $sub_total += ($bus->price) * ($product['quantity']);
                                $total += $product['quantity'];
                            @endphp
                            <tr>
                                <td style="font-size: 14px;">{{$product['seat_no']}}</td>
                                <td style="font-size: 14px;">{{$product['quantity']}}</td>
                                <td style="font-size: 14px;">{{$bus->price}}</td>
                                <td><a href="{{route('remove', [$id])}}"><i class="fa fa-times" aria-hidden="true"></i></a></td>
                            </tr>
                        @endforeach
                    @endif
                </table>
                <table class="table table-bordered" style="font-size: 12px;text-align: center;   background-color: #fff;">
                    <tr>
                        <th style="font-size: 15px;">
                            Total Seat : {{$total}}
                        </th>
                        <th colspan="2" style="font-size: 15px;">
                            Total Amount ৳ : {{$sub_total}}
                        </th>
                    </tr>
                </table>
                <p></p>
                <b style="color:rgb(34, 31, 31);font-size: 15px;">Choose Boarding Point :
                </b>
                <p></p>
                <form action="{{route('passanger_info')}}" method="post">
                    @csrf
                    {{--route details--}}
                    <input type="hidden" name="route_id" value="{{$bus->route_id}}">
                    <input type="hidden" name="bus_id" value="{{$bus->bus_id}}">
                    <input type="hidden" name="time" value="{{$bus->departure_time}}">
                    <input type="hidden" name="date" value="{{$bus->date}}">
                    <input type="hidden" name="schedule_id" value="{{$schedule_id}}">

                    {{--fare details--}}
                    <input type="hidden" name="price" value="{{$bus->price}}">
                    <input type="hidden" name="total_seat" value="{{$total}}">
                    <input type="hidden" name="amount" value="{{$sub_total}}">

                    <select required style="width: 180px; background-color: #fff;
                    border-radius: 4px;
                    border: none;
                    height: 30px;
                    -webkit-box-shadow: none;
                    box-shadow: none;
                    color: #3e485c;
                    font-size: 14px;" name="budding_point">
                        <option value="Dhanmondi">Dhanmondi</option>
                        <option value="Shymoli">Shymoli</option>
                        <option value="Tongi">Tongi</option>
                        <option value="Mirpur-1">Mirpur-1</option>
                        <option value="Saver">Saver</option>
                        <option value="Uattara">Uattara</option>
                    </select>
                    <span class="bokselect-arrow"></span><br><br>
                    <button class="amz" type="submit">Next</button>
                </form>
            </div>
        </div>
    </div>

</div>

<br><br>
<br><br>
<footer id="colophon" class="site-footer" style="background-color: black;" role="contentinfo">
    @include('layouts.frontend._footer')
</footer>

@include('layouts.frontend._script')


</body>

</html>

