@extends('admin.layout.master')

@section('content')
    <!-- Main -->
    <div class="app-main__inner">
        <div class="app-page-title">
            <div class="page-title-wrapper">
                <div class="page-title-heading">
                    <div class="page-title-icon">
                        <i class="pe-7s-ticket icon-gradient bg-mean-fruit"></i>
                    </div>
                    <div>
                        Quản lý sản phẩm
                        <div class="page-title-subheading">
                        Xem, tạo, cập nhật, xóa và quản lý
                        </div>
                    </div> 
                </div>

                <div class="page-title-actions">
                    <a href="{{ route('product.create') }}" class="btn-shadow btn-hover-shine mr-3 btn btn-primary">
                        <span class="btn-icon-wrapper pr-2 opacity-7">
                            <i class="fa fa-plus fa-w-20"></i>
                        </span>
                        Thêm sản phẩm
                    </a>
                </div>
            </div>
        </div>

        @if (session('success'))
            <div class="alert alert-success">
                {{ session('success') }}
            </div>
        @endif
        <div class="row">
            <div class="col-md-12">
                <div class="main-card mb-3 card">

                    <div class="card-header">

                        <form method="post" action="{{route('product.search')}}">
                            @csrf
                            <div class="input-group">
                                <input type="search" name="search" id="search"
                                    placeholder="Tìm theo tên sản phẩm" class="form-control">
                                <span class="input-group-append">
                                    <button type="submit" class="btn btn-primary">
                                        <i class="fa fa-search"></i>&nbsp;
                                        Tìm kiếm
                                    </button>
                                </span>
                            </div>
                        </form>
                    </div>

                    <div class="table-responsive">
                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                            <thead>
                                <tr>
                                    <th class="text-center">ID</th>
                                    <th>Tên / Thương hiệu</th>
                                    <th class="text-center">Màu sắc</th>
                                    <th class="text-center">Giá cả</th>
                                    <th class="text-center">Số lượng</th>
                                    <th class="text-center">Trạng thái</th>
                                    <th class="text-center">Hành động</th>
                                </tr>
                            </thead>

                            <tbody>
                                @foreach ($products as $product )
                                    <tr>
                                        <td class="text-center text-muted">#{{$product->id}}</td>
                                        <td>
                                            <div class="widget-content p-0">
                                                <div class="widget-content-wrapper">
                                                    <div class="widget-content-left mr-3">
                                                        <div class="widget-content-left">
                                                            <img style="height: 60px;"
                                                                data-toggle="tooltip" title="Image"
                                                                data-placement="bottom"
                                                                src="{{$product->images->first()->image}}" alt="">
                                                        </div>
                                                    </div>
                                                    <div class="widget-content-left flex2">
                                                        <div class="widget-heading">{{$product->name}}</div>
                                                        <div class="widget-subheading opacity-7">
                                                            {{$product->brand->name}}
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="text-center">{{$product->color}}</td>
                                        <td class="text-center">{{number_format($product->price)}}đ</td>
                                        <td class="text-center">{{$product->productItems->sum('quantity')}}</td>
                                        <td class="text-center">
                                            @if ($product->featured === 1)
                                                <div class="badge badge-success mt-2">
                                                    Thành công
                                                </div>
                                            @else
                                                <div class="badge badge-danger mt-2">
                                                    Thất bại
                                                </div>
                                            @endif
                                        </td>
                                        <td class="text-center">
                                            <a href="{{route('product.show', $product)}}"
                                                class="btn btn-hover-shine btn-outline-primary border-0 btn-sm">
                                                Chi tiết
                                            </a>
                                            <a href="{{route('product.edit', $product)}}" data-toggle="tooltip" title="Edit"
                                                data-placement="bottom" class="btn btn-outline-warning border-0 btn-sm">
                                                <span class="btn-icon-wrapper opacity-8">
                                                    <i class="fa fa-edit fa-w-20"></i>
                                                </span>
                                            </a>
                                            <form class="d-inline" action="{{route('product.destroy', $product)}}" method="post">
                                                @method('DELETE')
                                                @csrf
                                                <button class="btn btn-hover-shine btn-outline-danger border-0 btn-sm"
                                                    type="submit" data-toggle="tooltip" title="Delete"
                                                    data-placement="bottom"
                                                    onclick="return confirm('Do you really want to delete this item?')">
                                                    <span class="btn-icon-wrapper opacity-8">
                                                        <i class="fa fa-trash fa-w-20"></i>
                                                    </span>
                                                </button>
                                            </form>
                                        </td>
                                    </tr>                       
                                @endforeach
                                
                            </tbody>
                        </table>
                    </div>

                    <div class="d-block card-footer">
                        <nav role="navigation" aria-label="Pagination Navigation"
                            class="flex items-center justify-between">
                            <div class="flex justify-between flex-1 sm:hidden">
                                <span
                                    class="relative inline-flex items-center px-4 py-2 text-sm font-medium text-gray-500 bg-white border border-gray-300 cursor-default leading-5 rounded-md">
                                    « Trước
                                </span>

                                <a href="#page=2"
                                    class="relative inline-flex items-center px-4 py-2 ml-3 text-sm font-medium text-gray-700 bg-white border border-gray-300 leading-5 rounded-md hover:text-gray-500 focus:outline-none focus:shadow-outline-blue focus:border-blue-300 active:bg-gray-100 active:text-gray-700 transition ease-in-out duration-150">
                                    Tiếp »
                                </a>
                            </div>

                            <div class="hidden sm:flex-1 sm:flex sm:items-center sm:justify-between">
                                <div>
                                    <p class="text-sm text-gray-700 leading-5">
                                        Hiển thị
                                        
                                        <span class="font-medium">{{ $products->count()}}</span>
                                        trên
                                        <span class="font-medium">{{$products->total()}}</span>
                                        kết quả
                                    </p>
                                </div>
                                <div>
                                    {{ $products->links() }}
                                </div>
                            </div>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>
    <!-- End Main -->
@endsection