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
                    Loại bài viết
                    <div class="page-title-subheading">
                    Xem, tạo, cập nhật, xóa và quản lý
                    </div>
                </div>
                </div>

                <div class="page-title-actions">
                    <a href="{{route('post_type.create')}}" class="btn-shadow btn-hover-shine mr-3 btn btn-primary">
                        <span class="btn-icon-wrapper pr-2 opacity-7">
                            <i class="fa fa-plus fa-w-20"></i>
                        </span>
                        Thêm mới
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

                    <div class="card-header"></div>

                    <div class="table-responsive">
                        <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                            <thead>
                                <tr>
                                    <th class="text-center">ID</th>
                                    <th>Tên bài viết</th>
                                    <th class="text-center">Hành động</th>
                                </tr>
                            </thead>
                            <tbody>
                                @foreach ($post_types as $post_type )
                                    <tr>
                                        <td class="text-center text-muted">#{{$post_type->id}}</td>
                                        <td>
                                            <div class="widget-content p-0">
                                                <div class="widget-content-wrapper">
                                                    <div class="widget-content-left flex2">
                                                        <div class="widget-heading">{{$post_type->name}}</div>
                                                    </div>
                                                </div>
                                            </div>
                                        </td>
                                        
                                        <td class="text-center">
                                            <a href="{{route('post_type.edit', $post_type)}}" data-toggle="tooltip" title="Edit"
                                                data-placement="bottom" class="btn btn-outline-warning border-0 btn-sm">
                                                <span class="btn-icon-wrapper opacity-8">
                                                    <i class="fa fa-edit fa-w-20"></i>
                                                </span>
                                            </a>
                                            <form class="d-inline" action="{{route('post_type.destroy', $post_type)}}" method="post" >
                                                @method('DELETE')
                                                @csrf
                                                <button class="btn btn-hover-shine btn-outline-danger border-0 btn-sm"
                                                    type="submit" data-toggle="tooltip" title="Delete"
                                                    data-placement="bottom"
                                                    onclick="return confirm('Do you really want to delete this items?')">
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
                                        
                                        <span class="font-medium">{{ $post_types->count()}}</span>
                                        trên
                                        <span class="font-medium">{{$post_types->total()}}</span>
                                        kết quả
                                    </p>
                                </div>
                                <div>
                                    {{ $post_types->links() }}
                                </div>
                            </div>
                        </nav>
                    </div>

                </div>
            </div>
        </div>
    </div>

@endsection