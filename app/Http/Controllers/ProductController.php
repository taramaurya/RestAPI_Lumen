<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Product;
use App\ProductImage;
use DB;

class ProductController extends Controller
{
  
    public function index()
    {
    
        $products = Product::with('images')->get();

        return response()->json($products);
    }

    public function store(Request $request)
    {
        $this->validate($request, [
            'p_name' => 'required',
            'p_price'=>'required',
        ]);

        $product = new Product();
        $product->p_name = $request->p_name;
        $product->p_price  = $request->p_price;
        $product->save();
        $lastInsertId =  $product->id;


        if($request->hasFile('p_images'))
        {
          
            $uploadPath = 'uploads/';
                $i=1;
                $files = $request->file('p_images');

            foreach ($files as $image)
            {
                $extention = $image->getClientOriginalExtension();
                $filename =  date('dmY').''.time().$i++.'.'.$extention;
                $image->move($uploadPath,$filename);
                $finalImagePath =  url('/').'/'.$uploadPath.$filename;

                $newimage = new ProductImage();
                $newimage->image_path = $finalImagePath;
                $newimage->product_id = $lastInsertId;
                $newimage->save();
            }
    
        }

        return response()->json([
            'message' => 'Product Added successfully',
        ], 200);

    }   
}
