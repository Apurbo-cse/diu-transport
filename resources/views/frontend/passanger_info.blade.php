<!DOCTYPE html>
<html lang="en">

<head>

    <title>Passenger Info :: DIU_Transport_System</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/footer.css')}}">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css">

    <link rel="stylesheet" href="{{asset('assets/frontend/style/contact.css')}}">
    <link href="{{asset('assets/frontend/style/nav.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/main.css')}}" rel="stylesheet">
    <link rel="stylesheet" href="{{asset('assets/frontend/style/drop.css')}}">
    <link href="{{asset('assets/frontend/style/bot.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/nk.css')}}" rel="stylesheet">
    <link href="{{asset('assets/frontend/style/ak.css')}}" rel="stylesheet">

    <link rel="shortcut icon" href="{{asset('assets/frontend/icons/fav-icon.png')}}" />


</head>

<body class="home page-template-default page page-id-122228 ">

    <div class="mobile-fixed-toolbar">
        <ul class="top-nav-mobile-left">
            <li style="width:36%;">
                <a href="{{route('user.home')}}"><img style="width:120px;" src="{{asset('assets/frontend/images/logo.png')}}"></a>
            </li>
        </ul>
        <ul class="top-nav-mobile">
            <li><a {{--href="{{route('passanger_info')}}" --}} id="pull" class="toggle-mobile-menu"><i class="fa fa-bars" aria-hidden="true"></i></a></li>
        </ul>
    </div>

    <nav id="navigation" class="primary-navigation mobile-menu-wrapper" role="navigation">
        @include('layouts.frontend._topNav')
    </nav>
    <div style="width: 100%;height:50px ; background: rgb(6, 100, 121)">
    </div>
    <br><br>

    <section id="content" class="container" style="margin-bottom: 30px;">
        <form method="post" id="booknow" name="booknow" action="{{route('pay')}}" onkeypress="return event.keyCode != 13;">
            <h1 class="ser-head">Passanger Info</h1>
            @csrf
            <input type="hidden" name="schedule_id" value="{{$passangeinfo->schedule_id}}">

            <!-- psngr_dtls starts -->
            <section id="psngr_dtls">

                <!-- psngr starts here -->
                <div id="psngr" class="col-md-8">

                    <!-- p_body starts here -->
                    <div class="p_body">
                        <ul class="list-inline clearfix">
                            <li class="srch_input_wd">
                                <div class="form-group">
                                    <label for="pname">Name<span>*</span></label>
                                    <input type="text" class="form-control pname" id="pname" name="name" value="{{\Illuminate\Support\Facades\Auth::user()->name}}" placeholder="Mizanur Rahaman" maxlength="25" onpaste="return false;">
                                </div>
                            </li>
                            <li class="srch_input_wd">
                                <div class="form-group">
                                    <label for="pname">ID<span>*</span></label>
                                    <input type="text" class="form-control pname" id="pname" name="user_id" value="{{\Illuminate\Support\Facades\Auth::user()->user_id}}" placeholder="171-15-1452" maxlength="25" onpaste="return false;">
                                </div>
                            </li>
                            <li class="srch_input_wd">
                                <div class="form-group">
                                    <label for="pname">Email<span>*</span></label>
                                    <input type="text" class="form-control pname jqchars" id="pname" name="email" value="{{\Illuminate\Support\Facades\Auth::user()->email}}" placeholder="mizahur15-1452@diu.edu.bd" maxlength="25" onpaste="return false;">
                                </div>
                            </li>
                            <li class="srch_input_wd">
                                <div class="form-group">
                                    <label for="pname">Department<span>*</span></label>
                                    <input type="text" class="form-control pname jqchars" id="pname" name="department" value="{{\Illuminate\Support\Facades\Auth::user()->department}}" placeholder="CSE" maxlength="25" onpaste="return false;">
                                </div>
                            </li>

                            <li class="srch_input_wd">
                                <div class="form-group">
                                    <label for="pname">Phone<span>*</span></label>
                                    <input type="text" class="form-control pname jqchars" id="pname" name="phone" value="{{\Illuminate\Support\Facades\Auth::user()->phone_no}}" placeholder="+88017xxxxxx" maxlength="25" onpaste="return false;">
                                </div>
                            </li>
                        </ul>

                    </div>

                </div>
                <!-- psngr ends here -->
                <!-- journey starts here -->
                <aside id="journey" class="col-md-4 paside" style=" height: 270px;">

                    <div class="page_title">
                        <h4 class="title_Ablack"><b>Route Details</b></h4>
                    </div>
                    <table class="table table-bordered" style="font-size: 14px;">
                        <tr>
                            <td>Route</td>
                            <td><input type="text" name="route_id" value="{{$passangeinfo->route_id}}" readonly></td>
                        </tr>

                        <tr>
                            <td>Coach No</td>
                            <td><input type="text" name="bus_id" value="{{$passangeinfo->bus_id}}" readonly></td>
                        </tr>
                        <tr>
                            <td>Select Seat (S)</td>
                            <td>

                                @if(session('cart')) @foreach(session('cart') as $id => $product)
                                <input class="d-inline" checked type="checkbox" name="seat_no[]" value="{{$product['seat_no']}}">{{$product['seat_no']}} @endforeach @endif
                            </td>
                        </tr>
                        <tr>
                            <td>Date</td>
                            <td><input type="text" name="date" value="{{$passangeinfo->date}}" readonly></td>
                        </tr>
                        <tr>
                            <td>Time</td>
                            <td><input type="text" name="time" value="{{$passangeinfo->time}}" readonly></td>
                        </tr>
                        <tr>
                            <td>Boarding Point</td>
                            <td><input type="text" name="boarding_point" value="{{$passangeinfo->budding_point}}" readonly></td>
                        </tr>
                    </table>

                </aside>

            </section>
            <!-- psngr_dtls ends -->

            <!-- payment_dtls starts -->
            <section id="payment_dtls">

                <!-- fare starts here -->
                <aside id="fare" class="col-md-4 paside col-md-push-8" oncontextmenu="return false;" style="margin-top: 30px;">

                    <div class="page_title">
                        <h4 class="title_Ablack"><b>Fare Details</b></h4>
                    </div>

                    <table class="table table-bordered" style="font-size: 14px;">
                        <tr>
                            <td>Ticket Price</td>
                            <td><input type="text" name="price" value="{{$passangeinfo->price}}" readonly></td>
                        </tr>

                        <tr>
                            <td>Processing Fee</td>
                            <td><span>0</span></td>
                        </tr>
                        <tr>
                            <td>Total seat</td>
                            <td><input type="text" name="totoal_seat" readonly value="{{$passangeinfo->total_seat}}"></td>
                        </tr>
                        <tr>
                            <td>Total Amount</td>
                            <td><input type="text" name="amount" value="{{$passangeinfo->amount}}" readonly></td>
                        </tr>
                        <tr>
                            <td>Time</td>
                            <td><input type="text" name="time" value="{{\Carbon\Carbon::createFromFormat('H:i:s',$passangeinfo->time)->format('h:i A')}}" readonly></td>
                        </tr>
                        <tr>
                            <td>Boarding Point</td>
                            <td><input type="text" name="boarding_point" value="{{$passangeinfo->budding_point}}" readonly></td>
                        </tr>
                        <tr>
                            <td colspan="2">
                                <div class="col-md-12 bg-warning" style="padding:5px 5px;margin-top:20px;border:1px solid #079d49;">
                                    <b style="color:#fc0202;">Please note:</b> <br>
                                    <ol style="background-color: transparent;padding-left:15px;">
                                        <li style="background-color: transparent;border-bottom: none;">Delivery Charge : <b style="color:#fc0202;">Free</b> per delivery.
                                        </li>
                                    </ol>

                                </div>
                            </td>
                        </tr>
                    </table>
                    {{--
                    <div class="col-md-12 bg-warning" style="padding:5px 5px;margin-top:20px;border:1px solid #079d49;">
                        <b style="color:#fc0202;">Please note:</b> <br>
                        <ol style="background-color: transparent;padding-left:15px;">
                            <li style="background-color: transparent;border-bottom: none;">Delivery Charge : <b style="color:#fc0202;">Free</b> per delivery.
                            </li>
                        </ol>

                    </div>--}}
                </aside>

                <!-- fare ends here -->

                <!-- psngr starts here -->
                <div id="payment" class="col-md-8 col-md-pull-4" style="margin-top: -15px;">

                    <div class="p_head">
                        <h5>Payment Details</h5>
                    </div>

                    <div id="amnt_pay">
                        <h3>Total Amount Payable: <span id="display_total_payable">৳ {{$passangeinfo->amount}}</span></h3>
                    </div>

                    <button style="font-size: 20px; font-weight: bold;" class="btn btn-primary btn-block btn-lg py-3" type="submit">Payment Now</button>

                </div>
                <!-- p_body ends here -->
                <!-- psngr ends here -->

                <div class="clearfix"></div>
            </section>
            <!-- payment_dtls ends -->
            {{--<input type="hidden" id="search_id" name="search_id" value="MA==">--}}

        </form>
    </section>


    <footer id="colophon" class="site-footer" style="background-color: black;" role="contentinfo">
        @include('layouts.frontend._footer')
    </footer>

    <!-- Go Top BTN -->
    <button class="goTop fas fa-arrow-up"></button>


    <style>
        #operator_sec ul {
            margin-left: 20px !important;
        }
        
        #operator_sec ul li {
            font-size: 12px;
            margin: 0 0 0 11px;
            color: #333333;
            font-family: "Bw Helder", Helvetica, sans-serif !important;
            letter-spacing: .25px !important;
            line-height: 1.428571429;
        }
        
        .colmd3 {
            width: 19% !important
        }
        
        @media (max-width: 767px) {
            .mobile_row {
                padding: 0 22px 0 28px;
            }
        }
    </style>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="{{asset('assets/frontend/js/bkj.js')}}"></script>
    <script src="{{asset('assets/frontend/js/goto-btn.js')}}"></script>
    <script src="{{asset('assets/frontend/js/bkh.js')}}"></script>
    <script src="{{asset('assets/frontend/js/window.js')}}"></script>

</body>
<!-- body ends -->

</html>