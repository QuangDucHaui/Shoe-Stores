@extends('frontend.layout.master')

@section('content')
    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Giỏ hàng</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="">Trang chủ</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Giỏ hàng</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->


    <!-- Cart Start -->
    
    <div class="container-fluid pt-5">
        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif

        @if(!empty(session('cart')))
        <div class="row px-xl-5">
            <div class="col-lg-8 table-responsive mb-5">
                <table class="table table-bordered text-center mb-0">
                    <thead class="bg-secondary text-dark">
                        <tr>
                            <th>Tên sản phẩm</th>
                            <th>Giá</th>
                            <th>Kích cỡ</th>
                            <th>số lượng</th>
                            <th>Tổng cộng</th>
                            <th>Xóa</th>
                        </tr>
                    </thead>
                    <tbody class="align-middle">
                        
                        @foreach (session('cart') as $carts )
                               @foreach ($carts as $cart)
                               <tr>
                                    <td class="align-middle"><img src="{{$cart['image']}}" style="width: 55px; padding-right:5px">
                                        <a href="{{route('product', $cart['product_id'])}}">{{$cart['name']}} - {{$cart['color']}}</a>
                                    </td>
                                    <td class="align-middle">{{number_format($cart['price'])}}đ</td>
                                    <td class="align-middle">{{$cart['size']}}</td>
                                    <td class="align-middle">
                                        <div class="input-group quantity mx-auto" style="width: 100px;">
                                            <div class="input-group-btn">
                                                <form action="{{route('cart.decrease', [$cart['product_id'], $cart['size']])}}" method="GET">
                                                    <button type="submit" class="btn btn-sm btn-primary btn-minus" >
                                                        <i class="fa fa-minus"></i>
                                                    </button>
                                                </form>
                                            </div>
                                            <input disabled readonly type="number" class="form-control form-control-sm bg-secondary text-center" value="{{$cart['quantity']}}">
                                            <div class="input-group-btn">
                                                <form method="GET" action="{{route('cart.increase',[ $cart['product_id'], $cart['size'] ])}}">
                                                    <button type="submit" class="btn btn-sm btn-primary btn-plus">
                                                        <i class="fa fa-plus"></i>
                                                    </button>
                                                </form>    
                                            </div>
                                        </div>
                                    </td>
                                    <td class="align-middle">{{number_format($cart['quantity'] * $cart['price'])}}đ</td>
                                    
                                    <td class="align-middle">
                                        <form method="POST" action="{{route('cart.delete', [$cart['product_id'], $cart['size']])}}">
                                            @method('DELETE')
                                            @csrf
                                            <button type="submit" class="btn btn-sm btn-primary">
                                                <i class="fa fa-times"></i>
                                            </button>
                                        </form>
                                    </td>
                                </tr> 
                               @endforeach
                        @endforeach
                                             
                    </tbody>
                </table>
                
            </div>
            <div class="col-lg-4">
                <div class="card border-secondary mb-5">
                    <div class="card-header bg-secondary border-0">
                        <h4 class="font-weight-semi-bold m-0">Tóm tắt giỏ hàng</h4>
                    </div>
                    <div class="card-body">
                        <div class="d-flex justify-content-between mb-3 pt-1">
                            <h6 class="font-weight-medium">Tạm tính</h6>
                            <h6 class="font-weight-medium">{{number_format(session('total_price'))}}đ</h6>
                        </div>
                        <div class="d-flex justify-content-between">
                            <h6 class="font-weight-medium">Phí vận chuyển</h6>
                            <h6 class="font-weight-medium">Miễn phí</h6>
                        </div>
                    </div>
                    <div class="card-footer border-secondary bg-transparent">
    <div class="d-flex justify-content-between mt-2">
        <h6 class="font-weight-medium">Tạm tính</h6>
        <h6 class="font-weight-medium">
            {{ number_format(session('total_price') + session('discount')) }}đ
        </h6>
    </div>
    
    <!-- Hiển thị giảm giá nếu có -->
    @if(session('discount') > 0)
    <div class="d-flex justify-content-between mt-2 text-success">
        <h6 class="font-weight-medium">Giảm giá (10% khi mua từ 2 sản phẩm)</h6>
        <h6 class="font-weight-medium">
            -{{ number_format(session('discount')) }}đ
        </h6>
    </div>
    @endif

    <div class="d-flex justify-content-between mt-2">
        <h5 class="font-weight-bold">Tổng cộng</h5>
        <h5 class="font-weight-bold">
            {{ number_format(session('total_price')) }}đ
        </h5>
    </div>
    
    <a href="{{route('checkout')}}" class="btn btn-block btn-primary my-3 py-3">Tiến hành thanh toán</a>
</div>

                </div>
            </div>
        </div>
        @else
            <h5 class="text-center">Không có sản phẩm nào!</h5>
            <div class="row justify-content-center">
                <a href="{{route('shop')}}" class="btn btn-primary my-4">Tiếp tục mua sắm</a>
            </div>
        @endif 
    </div>
    <!-- Cart End -->

@endsection
