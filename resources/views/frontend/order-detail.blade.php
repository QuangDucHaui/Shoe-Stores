@extends('frontend.layout.master')

@section('content')

    <!-- Page Header Start -->
    <div class="container-fluid bg-secondary mb-5">
        <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
            <h1 class="font-weight-semi-bold text-uppercase mb-3">Chi tiết đơn hàng</h1>
            <div class="d-inline-flex">
                <p class="m-0"><a href="{{route('home')}}">Trang chủ</a></p>
                <p class="m-0 px-2">-</p>
                <p class="m-0">Chi tiết đơn hàng</p>
            </div>
        </div>
    </div>
    <!-- Page Header End -->

    <!-- Checkout Start -->
    <div class="container-fluid pt-5">
        @if (session('error'))
            <div class="alert alert-danger">
                {{ session('error') }}
            </div>
        @endif
        <form method="POST" action="{{ route('checkoutPost')}}">
            @csrf
            <div class="row px-xl-5">
                <div class="col-lg-7 pl-5">
                    <div class="mb-4">
                        <h4 class="font-weight-semi-bold mb-4">Thông tin người nhận</h4>
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <label>Tên</label>
                                <input class="form-control" value="{{$order->name}}" disabled readonly>
                            </div>
                            <div class="col-md-12 form-group">
                                <label>E-mail</label>
                                <input class="form-control" value="{{$order->email}}" disabled readonly>
                            </div>
                            <div class="col-md-12 form-group">
                                <label>Số điện thoại</label>
                                <input class="form-control" type="number" value="{{ $order->phone }}" disabled readonly>
                            </div>
                            <div class="col-md-12 form-group">
                                <label>Địa chỉ</label>
                                <input class="form-control" type="text" value="{{$order->address}}" disabled readonly>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-5 pr-5">
                    <div class="card border-secondary mb-5">
                        <div class="card-header bg-secondary border-0">
                            <h4 class="font-weight-semi-bold m-0">Tổng thanh toán</h4>
                        </div>
                        <div class="card-body">
                            <h5 class="font-weight-medium mb-3">Sản phẩm</h5>
                                @foreach ($order->products as $product)
                                    <div class="d-flex justify-content-between">
                                        <span>{{$product->pivot->name}} - {{$product->pivot->color}} x {{$product->pivot->quantity}}
                                            <p style="font-size: 13px">Size: {{$product->pivot->size}}</p>
                                        </span>
                                        <p>{{number_format($product->pivot->price * $product->pivot->quantity)}}đ</p>
                                    </div>
                                @endforeach
                            <hr class="mt-0">
                            <div class="d-flex justify-content-between mb-3 pt-1">
                                <h6 class="font-weight-medium">Tổng cộng</h6>
                                <h6 class="font-weight-medium">{{number_format($order->total_price)}}đ</h6>
                            </div>
                            <div class="d-flex justify-content-between">
                                <h6 class="font-weight-medium">Phí vận chuyển</h6>
                                <h6 class="font-weight-medium">Miễn phí</h6>
                            </div>
                        </div>
                        <div class="card-footer border-secondary bg-transparent">
                            <div class="d-flex justify-content-between mt-2">
                                <h5 class="font-weight-bold">Tổng cộng phải thanh toán</h5>
                                <h5 class="font-weight-bold">{{number_format($order->total_price)}}đ</h5>
                            </div>
                        </div>
                    </div>
                    <div class="card border-secondary mb-5">
                        <div class="card-header bg-secondary border-0">
                            <h4 class="font-weight-semi-bold m-0">Phương thức thanh toán</h4>
                        </div>
                        <div class="card-body">
                            <div class="form-group">
                                <label>{{ $order->payment == 1 ? 'VNPay' : 'Thanh toán khi nhận hàng (COD)' }}</label>
                            </div>
                        </div>
                    </div>
                    
                </div>
            </div>
        </form>
        
    </div>
    <!-- Checkout End -->
@endsection