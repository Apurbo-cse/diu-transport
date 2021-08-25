<?php

namespace App\Http\Controllers;


use Illuminate\Http\Request;
use App\Library\SslCommerz\SslCommerzNotification;
use Illuminate\Support\Facades\DB;

class paymentSuccessController extends Controller
{
    public function success(Request $request)
    {



        //echo "Transaction is Successful";
        //return $request;

        $tran_id = $request->input('tran_id');
        $amount = $request->input('amount');
        $currency = $request->input('currency');

        $sslc = new SslCommerzNotification();

        #Check order status in order tabel against the transaction id or order id.
        $order_detials = DB::table('orders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $validation = $sslc->orderValidate($tran_id, $amount, $currency, $request->all());

            //dd($validation);

            if ($validation == TRUE) {
                /*
                That means IPN did not work or IPN URL was not set in your merchant panel. Here you need to update order status
                in order table as Processing or Complete.
                Here you can also sent sms or email for successfull transaction to customer
                */
                $update_product = DB::table('orders')
                    ->where('transaction_id', $tran_id)
                    ->update(['status' => 'Processing']);

                $data['transaction_message'] = 'Transaction is successfully Completed';
                $data['type'] = 'success';
                $this->cardSessionUnset();

                //echo "<br >Transaction is successfully Completed";
            } else {
                /*
                That means IPN did not work or IPN URL was not set in your merchant panel and Transation validation failed.
                Here you need to update order status as Failed in order table.
                */
                $update_product = DB::table('orders')
                    ->where('transaction_id', $tran_id)
                    ->update(['status' => 'Failed']);

                 $data['transaction_message'] = 'validation Fail';
                 $data['type'] = 'fail';
                $this->cardSessionUnset();

                 //
                //echo "validation Fail";
            }
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            $data['transaction_message'] = 'Transaction is successfully Completed';
            $data['type'] = 'success';
            $this->cardSessionUnset();

        } else {
            $data['transaction_message'] = 'Invalid Transaction';
            $data['type'] = 'fail';
        }


       return view('frontend.transaction_message', $data);
    }

    public function fail(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_detials = DB::table('orders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $update_product = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->update(['status' => 'Failed']);

            /*$data['transaction_message'] = 'Transaction is Falied';
            $data['type'] = 'fail';
            return view('frontend.transaction_message.blade', $data);*/
            //echo "Transaction is Falied";

        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            //echo "Transaction is already Successful";
            $data['transaction_message'] = 'Transaction is already Successful';
            $data['type'] = 'success';
            $this->cardSessionUnset();

            return view('frontend.transaction_message.blade', $data);
        } else {
            $data['transaction_message'] = 'Transaction is Invalid';
            $data['type'] = 'fail';
            return view('frontend.transaction_message.blade', $data);
            //echo "Transaction is Invalid";
        }

    }

    public function cancel(Request $request)
    {
        $tran_id = $request->input('tran_id');

        $order_detials = DB::table('orders')
            ->where('transaction_id', $tran_id)
            ->select('transaction_id', 'status', 'currency', 'amount')->first();

        if ($order_detials->status == 'Pending') {
            $update_product = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->update(['status' => 'Canceled']);

            $data['transaction_message'] = 'Transaction is Cancel';
            $data['type'] = 'fail';
            return view('frontend.transaction_message.blade', $data);

            //echo "Transaction is Cancel";
        } else if ($order_detials->status == 'Processing' || $order_detials->status == 'Complete') {
            $data['transaction_message'] = 'Transaction is already Successful';
            $data['type'] = 'success';
            $this->cardSessionUnset();
            return view('frontend.transaction_message.blade', $data);
            //echo "Transaction is already Successful";
        } else {
            $data['transaction_message'] = 'Transaction is Invalid';
            $data['type'] = 'fail';
            return view('frontend.transaction_message.blade', $data);
            //echo "Transaction is Invalid";
        }


    }

    public function ipn(Request $request)
    {
        //return '1';
        #Received all the payement information from the gateway
        if ($request->input('tran_id')) #Check transation id is posted or not.
        {

            $tran_id = $request->input('tran_id');

            #Check order status in order tabel against the transaction id or order id.
            $order_details = DB::table('orders')
                ->where('transaction_id', $tran_id)
                ->select('transaction_id', 'status', 'currency', 'amount')->first();

            if ($order_details->status == 'Pending') {
                $sslc = new SslCommerzNotification();
                $validation = $sslc->orderValidate($tran_id, $order_details->amount, $order_details->currency, $request->all());
                if ($validation == TRUE) {
                    /*
                    That means IPN worked. Here you need to update order status
                    in order table as Processing or Complete.
                    Here you can also sent sms or email for successful transaction to customer
                    */
                    $update_product = DB::table('orders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Processing']);

                    echo "Transaction is successfully Completed";
                } else {
                    /*
                    That means IPN worked, but Transation validation failed.
                    Here you need to update order status as Failed in order table.
                    */
                    $update_product = DB::table('orders')
                        ->where('transaction_id', $tran_id)
                        ->update(['status' => 'Failed']);

                    echo "validation Fail";
                }

            } else if ($order_details->status == 'Processing' || $order_details->status == 'Complete') {

                #That means Order status already updated. No need to udate database.

                echo "Transaction is already successfully Completed";
            } else {
                #That means something wrong happened. You can redirect customer to your product page.

                echo "Invalid Transaction";
            }
        } else {
            echo "Invalid Data";
        }
    }

    public function cardSessionUnset()
    {
        $cart = session()->get('cart');
        if (isset($cart)){
            unset($cart);
        }
        return;
    }
}
