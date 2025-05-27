@extends('frontend.layout.master')

@section('content')

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Chi tiết sản phẩm</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="{{route('home')}}">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Chi tiết sản phẩm</p>
        </div>
    </div>
</div>
<!-- Page Header End -->


<!-- Shop Detail Start -->
<div class="container-fluid py-5">
    <div class="row px-xl-5">
        <div class="col-lg-5 pb-5">
            <div id="product-carousel" class="carousel slide" data-ride="carousel">
                <div class="carousel-inner border">
                    <div class="carousel-item active">
                        <img class="w-100 h-100" src="{{$product->images->shift()->image}}" alt="Image">
                    </div>

                    @foreach ($product->images as $item )
                    <div class="carousel-item">
                        <img class="w-100 h-100" src="{{$item->image}}" alt="Image">
                    </div>
                    @endforeach

                </div>
                <a class="carousel-control-prev" href="#product-carousel" data-slide="prev">
                    <i class="fa fa-2x fa-angle-left text-dark"></i>
                </a>
                <a class="carousel-control-next" href="#product-carousel" data-slide="next">
                    <i class="fa fa-2x fa-angle-right text-dark"></i>
                </a>
            </div>
        </div>

        <div class="col-lg-7 pb-5">
            <form action="{{route('cart.add', $product)}}" method="post">
                @csrf
                <h3 class="font-weight-semi-bold">{{$product->name}} - {{$product->color}}</h3>
                <p class="font-weight-semi-bold">{{$product->category->name}}</p>
                <div class="d-flex mb-3">
                    <div class="text-primary mr-2">
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star"></small>
                        <small class="fas fa-star-half-alt"></small>
                        <small class="far fa-star"></small>
                    </div>
                    <small class="pt-1">(45 Đánh giá)</small>
                </div>
                <h3 class="font-weight-bold mb-4 text-danger">{{number_format($product->price)}}đ</h3>
                <p class="mb-3">Mã sản phẩm: {{($product->product_code)}}</p>
                <p class="mb-3">Sản phẩm trong kho: {{($product->productItems->sum('quantity'))}}</p>
                @if($product->productItems->sum('quantity') > 0)
                <div class="d-flex mb-4">
                    <p class="text-dark font-weight-medium mb-0 mr-3">Sizes:</p>

                    @foreach ($product->productItems->sortBy('size') as $item )
                    @if ($item->quantity > 0)
                    <div class="custom-control custom-radio custom-control-inline">
                        <input value="{{$item->size}}" onchange="getQuantity({{$item->size}},{{ $product->id}});"
                            type="radio" class="custom-control-input" id="size-{{$item->size}}" name="size">
                        <label class="custom-control-label" for="size-{{$item->size}}">{{$item->size}}</label>
                    </div>
                    @endif
                    @endforeach
                </div>
                @error('size')
                <p style="margin-top:-20px;" class="text-danger">{{ $message }}</p>
                @enderror
                <h5 id="showQuantity" class="mb-4 text-info font-weight-bold"></h5>

                <div class="d-flex align-items-center mb-4 pt-2">
                    <div class="input-group quantity mr-3" style="width: 130px;">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-primary btn-minus">
                                <i class="fa fa-minus"></i>
                            </button>
                        </div>
                        <input type="number" name="quantity" class="form-control bg-secondary text-center" value="1">
                        <div class="input-group-btn">
                            <button type="button" class="btn btn-primary btn-plus">
                                <i class="fa fa-plus"></i>
                            </button>
                        </div>
                    </div>
                    <button type="submit" class="btn btn-primary px-3"><i class="fa fa-shopping-cart mr-1"></i> Thêm vào giỏ</button>
                </div>
                @error('quantity')
                <p style="margin-top:-20px;" class="text-danger">{{ $message }}</p>
                @enderror
                @else
                <h1 class="text-danger ">Bán hết</h1>
                @endif
                <div class="d-flex pt-2">
                    <p class="text-dark font-weight-medium mb-0 mr-2">Chia sẻ trên:</p>
                    <div class="d-inline-flex">
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-facebook-f"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-twitter"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-linkedin-in"></i>
                        </a>
                        <a class="text-dark px-2" href="">
                            <i class="fab fa-pinterest"></i>
                        </a>
                    </div>
                </div>
            </form>
        </div>
    </div>
    <div class="row px-xl-5">
        <div class="col">
            <div class="nav nav-tabs justify-content-center border-secondary mb-4">
                <a class="nav-item nav-link active" data-toggle="tab" href="#tab-pane-1">Mô tả</a>
                <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-2">Hướng dẫn chọn size</a>
                <a class="nav-item nav-link" data-toggle="tab" href="#tab-pane-3">Đánh giá (0)</a>
            </div>
            <div class="tab-content">
                <div class="tab-pane fade show active" id="tab-pane-1">
                    <h4 class="mb-3">Mô tả sản phẩm</h4>
                    <p>{!!$product->description!!}</p>
                </div>
                <div class="tab-pane fade" id="tab-pane-2">
                    <h4 class="mb-3">Thông tin thêm</h4>
                    <p>1. Cách Đo Size Chân Chính Xác
🔹 Chuẩn bị: Giấy trắng, bút chì, thước đo.
🔹 Cách đo:

Đặt chân lên tờ giấy, giữ thẳng gót chạm tường.

Dùng bút chì kẻ một đường ở điểm dài nhất của ngón chân.

Dùng thước đo khoảng cách từ mép giấy đến điểm kẻ.

So sánh với bảng size dưới đây.

📌 Lưu ý: Nên đo vào buổi chiều vì chân có thể giãn nở sau một ngày hoạt động.</p>
                    <div class="row">
                        <div class="col-md-6">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item px-0">
                                    
                                </li>
                                <li class="list-group-item px-0">
                                    
                                </li>
                                <li class="list-group-item px-0">
                                    
                                </li>
                                <li class="list-group-item px-0">
                                    
                                </li>
                            </ul>
                        </div>
                        <div class="col-md-6">
                            <ul class="list-group list-group-flush">
                                <li class="list-group-item px-0">
                                    
                                </li>
                                <li class="list-group-item px-0">
                                    
                                </li>
                                <li class="list-group-item px-0">
                                    
                                </li>
                                <li class="list-group-item px-0">
                                    
                                </li>
                            </ul>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="tab-pane-3">
                    <div class="row">
                        <div class="col-md-6">
                            <h4 class="mb-4">1 đánh giá cho "Áo sơ mi thời trang đầy màu sắc"</h4>
                            <div class="media mb-4">
                                <img src="/assets/frontend/img/user.jpg" alt="Image" class="img-fluid mr-3 mt-1"
                                    style="width: 45px;">
                                <div class="media-body">
                                    <h6>Quang Đức<small> - <i>01/04/2025</i></small></h6>
                                    <div class="text-primary mb-2">
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star"></i>
                                        <i class="fas fa-star-half-alt"></i>
                                        <i class="far fa-star"></i>
                                    </div>
                                    <p>Sản phẩm tốt</p>
                                </div>
                            </div>
                        </div>
                        <div class="col-md-6">
                            <h4 class="mb-4">Để lại đánh giá
                            </h4>
                            <small>Mọi đánh giá đều công khai</small>
                            <div class="d-flex my-3">
                                <p class="mb-0 mr-2">Xếp hạng * :</p>
                                <div class="text-primary">
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                    <i class="far fa-star"></i>
                                </div>
                            </div>
                            <form>
                                <div class="form-group">
                                    <label for="message">Đánh giá của bạn *</label>
                                    <textarea id="message" cols="30" rows="5" class="form-control"></textarea>
                                </div>
                                <div class="form-group">
                                    <label for="name">Tên bạn *</label>
                                    <input type="text" class="form-control" id="name">
                                </div>
                                <div class="form-group">
                                    <label for="email">Email *</label>
                                    <input type="email" class="form-control" id="email">
                                </div>
                                <div class="form-group mb-0">
                                    <input type="submit" value="Để lại đánh giá" class="btn btn-primary px-3">
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- Shop Detail End -->


<!-- Products Start -->
<div class="container-fluid py-5">
    <div class="text-center mb-4">
        <h2 class="section-title px-5"><span class="px-2">Bạn có thể thích</span></h2>
    </div>
    <div class="row px-xl-5">
        <div class="col">
            <div class="owl-carousel related-carousel">
                @foreach ($relatedProducts as $product)
                    <div class="card product-item border-0">
                        <div class="card-header product-img position-relative overflow-hidden bg-transparent border p-0">
                            <img class="img-fluid w-100" src="{{ $product->images->shift()->image }}" alt="">
                        </div>
                        <div class="card-body border-left border-right text-center p-0 pt-4 pb-3">
                            <h6 class="text-truncate mb-3">{{$product->name}}</h6>
                            <div class="d-flex justify-content-center">
                                <h6>{{number_format($product->price)}}đ</h6>
                            </div>
                        </div>
                        <div class="card-footer d-flex justify-content-center bg-light border">
                            <a href="{{route('product', $product)}}" class="btn btn-sm text-dark p-0">
                                <i class="fas fa-eye text-primary mr-1"></i>
                                Xem chi tiết
                            </a>
                        </div>
                    </div>
                @endforeach
            </div>
        </div>
    </div>
</div>
<!-- Products End -->

@endsection