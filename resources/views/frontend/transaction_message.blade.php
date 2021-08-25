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
        <li><a {{--href="{{route('passanger_info')}}"--}} id="pull" class="toggle-mobile-menu"><i class="fa fa-bars" aria-hidden="true"></i></a></li>
    </ul>
</div>

<nav id="navigation" class="primary-navigation mobile-menu-wrapper" role="navigation">
    @include('layouts.frontend._topNav')
</nav>
<div style="width: 100%;height:50px ; background: rgb(6, 100, 121)">
</div>
<br><br>
<div class="row mx-0">
    @if(isset($type) && $type == 'success')
        <div class="jumbotron mx-auto">
            <h1 class="display-4 text-capitalize">{{$type}}</h1>
            <hr class="my-4">
            <div>
                <h4 class="card-title text-success">{{$transaction_message}}</h4>
                <a href="{{route('user.home')}}" class="btn btn-primary py-3">Go Home</a>
            </div>
        </div>
    @else
        <div class="jumbotron">
            <h1 class="display-4 mx-auto text-capitalize">{{$type ? $type:'Fail'}}</h1>
            <hr class="my-4">
            <div>
                <h5 class="card-title text-danger">{{$transaction_message ? $transaction_message:'Fail Transaction'}}</h5>
                <a href="{{route('online_ticket')}}" class="btn btn-primary py-3">Try Again</a>
            </div>
        </div>
    @endif
</div>

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
