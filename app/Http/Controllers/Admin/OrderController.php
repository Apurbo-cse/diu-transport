<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Order;
use Illuminate\Http\Request;

class OrderController extends Controller
{
    public function index()
    {
        $data['orders'] = Order::orderBy('created_at', 'DESC')->paginate(20);
        return view('admin.order.index', $data);
    }

    public function payment()
    {
        return "1";
        /*$data['orders'] = Order::orderBy('created_at', 'DESC')->paginate(20);
        return view('admin.payment.index', $data);*/
    }
}
