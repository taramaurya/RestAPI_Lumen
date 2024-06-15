<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Cart;
class CartController extends Controller
{
    
    public function index()
    {
        $cart = Cart::with(['product'])->get();
        return response()->json($cart);
    }

 
    public function store(Request $request)
    {
        $cart = new Cart();
        $cart->product_id   = $request->product_id;
        $cart->user_id      = $request->user_id;
        $cart->quantity     = $request->quantity;
        $cart->save();
  
        return response()->json($cart);
    }

    public function cartwithuser(Request $request)
    {

        $cart = Cart::with(['product'])->where('user_id', $request->user_id)->get();
        return response()->json($cart);
    }
}
