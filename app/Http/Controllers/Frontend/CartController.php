<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Product;
use App\Models\ProductItem;

class CartController extends Controller
{
    public function cart(){
        return view('frontend.cart');
    }

    public function add(Product $product, Request $request){
        $validated = $request->validate([
            'size' => 'required',
            'quantity' => 'required|numeric|min:1',
        ]);
        $size = $validated['size'];
        $quantity = $validated['quantity'];
        $cart = session('cart', []);
        
        // Tính số lượng sản phẩm cùng product và size đã có trong giỏ hàng
        $existingQuantity = isset($cart[$product->id][$size]) 
            ? $cart[$product->id][$size]['quantity'] 
            : 0;

        // Lấy thông tin tồn kho của sản phẩm theo size từ bảng product_items
        $productItem = ProductItem::where('product_id', $product->id)
                                  ->where('size', $size)
                                  ->first();

        if (!$productItem) {
            return redirect()->back()->with('error', 'Sản phẩm không tồn tại với kích thước này.');
        }

        // Kiểm tra tồn kho
        if (($existingQuantity + $quantity) > $productItem->quantity) {
            return redirect()->back()->with('error', 'Số lượng sản phẩm vượt quá tồn kho.');
        }

        // Thêm hoặc cập nhật số lượng trong giỏ hàng
        if(array_key_exists($product->id, $cart) 
        && array_key_exists($size, $cart[$product->id])){
            $cart[$product->id][$size]['quantity'] += $quantity;
        } else {
            $cart[$product->id][$size] = [
                'product_id' => $product->id,
                'image' => $product->images->first()->image,
                'name' => $product->name,
                'color' => $product->color,
                'quantity' => $quantity,
                'size' => $size,
                'price'=> $product->price,
            ];
        }

        session()->put('cart', $cart);
        $this->totalPrice();
        return redirect()->back()->with('success','Sản phẩm đã thêm vào giỏ hàng.');
    }

    public function increase($product_id, $size){ 
        $cart = session('cart', []);
        $productItem = ProductItem::where('product_id', $product_id)
                                  ->where('size', $size)
                                  ->first();

        if (!$productItem) {
            return redirect()->back()->with('error', 'Sản phẩm không tồn tại với kích thước này.');
        }

        if(isset($cart[$product_id][$size])){
            $currentQty = $cart[$product_id][$size]['quantity'];

            // Kiểm tra tồn kho khi tăng số lượng
            if (($currentQty + 1) > $productItem->quantity) {
                return redirect()->back()->with('error', 'Không thể tăng thêm. Đã vượt quá tồn kho.');
            }

            $cart[$product_id][$size]['quantity'] += 1;
        }

        session()->put('cart', $cart);
        $this->totalPrice();

        return redirect()->back()->with('success', 'Cập nhật giỏ hàng thành công.');
    }

    public function decrease($product_id, $size){ 
        $cart = session('cart', []);
        if(isset($cart[$product_id][$size])){
            if($cart[$product_id][$size]['quantity'] > 1){
                $cart[$product_id][$size]['quantity'] -= 1;
            } else {
                // Nếu giảm còn 0 thì xóa sản phẩm khỏi giỏ hàng
                unset($cart[$product_id][$size]);
                if(empty($cart[$product_id])){
                    unset($cart[$product_id]);
                }
            }
        };
        session()->put('cart', $cart);
        $this->totalPrice();

        return redirect()->back()->with('success', 'Đã cập nhật lại giỏ hàng.');
    }

    public function delete($product_id, $size){
        $cart = session('cart');
        unset($cart[$product_id][$size]);
        if(empty($cart[$product_id])){
            unset($cart[$product_id]);
        }
        session()->put('cart', $cart);

        $this->totalPrice();
        return back()->with('success', 'Sản phẩm đã xóa khỏi giỏ hàng.');
    }

    protected function totalPrice(){
        $total_price = 0;
        $total_quantity = 0;
        
        foreach(session('cart', []) as $carts){
            foreach($carts as $item){
                $total_price += $item['quantity'] * $item['price'];
                $total_quantity += $item['quantity'];
            }
        }
    
        // Áp dụng giảm giá 10% nếu mua từ 2 sản phẩm trở lên
        $discount = 0;
        if ($total_quantity >= 2) {
            $discount = $total_price * 0.1;
        }
    
        session()->put('total_price', $total_price - $discount);
        session()->put('discount', $discount);
    }
}
