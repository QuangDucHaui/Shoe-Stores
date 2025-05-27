@extends('frontend.layout.master')

@section('content')

<!-- Page Header Start -->
<div class="container-fluid bg-secondary mb-5">
    <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 300px">
        <h1 class="font-weight-semi-bold text-uppercase mb-3">Bài viết</h1>
        <div class="d-inline-flex">
            <p class="m-0"><a href="{{route('home')}}">Trang chủ</a></p>
            <p class="m-0 px-2">-</p>
            <p class="m-0">Xem chi tiết</p>
        </div>
    </div>
</div>
<!-- Page Header End -->

<section class="blog-details spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="blog-details-inner">
                    <div class="blog-detail-title">
                        <h2>{{$post->title}}</h2>
                        <p>{{$post->postType->name}} <span>- {{date_format($post->created_at, 'M d, y')}}</span></p>
                    </div>
                    <div class="blog-large-pic">
                        <img src="{{$post->thumbnail}}" alt="thumbnail">
                    </div>
                    <div class="blog-detail-desc">
                        {!!$post->content!!}
                    </div>
                    <div class="tag-share">
                        <div class="details-tag">
                            <ul>
                                <li><i class="fa fa-tags"></i></li>
                                <li>Bóng đá</li>
                                <li>Thể thao</li>
                                <li>Thời trang</li>
                            </ul>
                        </div>
                        <div class="blog-share">
                            <span>Chia sẻ:</span>
                            <div class="social-links">
                                <a href="https://www.facebook.com/quangduc2104/"><i class="fab fa-facebook-f"></i></a>
                                <a href="https://shopee.vn/kamito_official?categoryId=100637&entryPoint=ShopByPDP&itemId=29164829326"><i class="fab fa-twitter"></i></a>
                                <a href="#"><i class="fab fa-google-plus-g"></i></a>
                                <a href="#"><i class="fab fa-instagram"></i></a>
                                <a href="#"><i class="fab fa-youtube"></i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

@endsection