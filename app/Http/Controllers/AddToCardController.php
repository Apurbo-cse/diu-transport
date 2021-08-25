<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

class AddToCardController extends Controller
{
    public function addToCart($id)
    {
        $cart =  session()->get('cart');

        if (!$cart){
            $cart = [$id => $this->sessionData($this->getSeat($id), $id)];
            return $this->setSessionAndReturnResponse($cart);
        }

        $cart[$id] = $this->sessionData($this->getSeat($id), $id);
        return $this->setSessionAndReturnResponse($cart);

    }

    public function removeFromCart($id)
    {
        $cart = session()->get('cart');

        if (isset($cart[$id])){
            unset($cart[$id]);
            session()->put('cart', $cart);
        }
        return redirect()->back()->with('success', "Successfully Removed from Cart");
    }

    protected function sessionData($data, $id){
        return [
            'seat_id' => $id,
            'seat_no' => $data,
            'quantity' => 1,
        ];
    }

    protected function setSessionAndReturnResponse($cart){
        session()->put('cart', $cart);
        return redirect()->back()->with('success', "Successfully Added to Cart");
    }

    public function getSeat($id)
    {
        $y=0;
        foreach(range('A', 'J') as $key=>$column)
        {
            for ($k=1; $k<=4; $k++)
            {
                $y=$y+1;
                if ($y == $id)
                {
                    $data = $column.$k;
                }
            }

        }
        return $data;
    }
}
