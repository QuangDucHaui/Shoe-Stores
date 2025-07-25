@extends('admin.layout.master')

@section('content')
<div class="app-main__inner">

    <div class="app-page-title">
        <div class="page-title-wrapper">
            <div class="page-title-heading">
                <div class="page-title-icon">
                    <i class="pe-7s-ticket icon-gradient bg-mean-fruit"></i>
                </div>
                <div>
                        Quản lý bài viết
                        <div class="page-title-subheading">
                        Xem, tạo, cập nhật, xóa và quản lý
                        </div>
                    </div> 
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-md-12">
            <div class="main-card mb-3 card">
                <div class="card-body display_data">
                    <div class="position-relative row form-group">
                        <label for="" class="col-md-3 text-md-right col-form-label">Hình thu nhỏ</label>
                        <div class="col-md-9 col-xl-8">
                            <ul class="text-nowrap overflow-auto">
                                <li class="d-inline-block mr-1" style="position: relative;">
                                    <img style="height: 120px;" src="{{$post->thumbnail}}"
                                        alt="Image">
                                </li>
                            </ul>
                        </div>
                    </div>

                    <div class="position-relative row form-group">
                        <label
                            class="col-md-3 text-md-right col-form-label">Tiêu đề</label>
                        <div class="col-md-9 col-xl-8">
                            <p>{{$post->title}}</p>
                        </div>
                    </div>

                    <div class="position-relative row form-group">
                        <label class="col-md-3 text-md-right col-form-label">Loại bài viết</label>
                        <div class="col-md-9 col-xl-8">
                            <p>{{$post->postType->name}}</p>
                        </div>
                    </div>

                    <div class="position-relative row form-group">
                        <label for="content"
                            class="col-md-3 text-md-right col-form-label">Nội dung</label>
                        <div class="col-md-9 col-xl-8">
                            <p>{!!$post->content!!}</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection