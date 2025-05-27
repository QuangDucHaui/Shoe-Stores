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
                    Quản lý người dùng
                    <div class="page-title-subheading">
                    Xem, tạo, cập nhật, xóa và quản lý.
                    </div>
                </div>
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

                <div class="table-responsive">
                    <table class="align-middle mb-0 table table-borderless table-striped table-hover">
                        <thead>
                            <tr>
                                <th class="text-center">ID</th>
                                <th>Tên đăng nhập</th>
                                <th class="text-center">Tên</th>
                                <th class="text-center">Email</th>
                                <th class="text-center">Số điện thoại</th>
                                <th class="text-center">Địa chỉ</th>
                                <th class="text-center">Trạng thái</th>
                            </tr>
                        </thead>
                        <tbody>
                            @foreach($users as $user)
                            <tr>
                                <td class="text-center text-muted">#{{$user->id}}</td>
                                <td class="text-left" >{{$user->username}}</td>
                                <td class="text-center">{{$user->name ?? 'Not yet'}}</td>
                                <td class="text-center">{{$user->email}}</td>
                                <td class="text-center">{{$user->phone ?? 'Not yet'}}</td>
                                <td class="text-center">{{$user->address ?? 'Not yet'}}</td>
                                <td class="text-center">
                                    <form class="d-inline" action="{{route('user.status', $user)}}" method="post">
                                        @csrf
                                        <input type="hidden" name="status" value="{{$user->status}}">
                                        @if ($user->status === 1)
                                            <button class="btn btn-hover-shine btn-outline-success border-0 btn-sm"
                                                type="submit" data-toggle="tooltip" title="Khóa"
                                                data-placement="bottom"
                                                onclick="return confirm('Bạn có muốn khóa người dùng này?')">
                                                <span class="btn-icon-wrapper opacity-8">
                                                    Hoạt động
                                                </span>
                                            </button>
                                        @else
                                            <button class="btn btn-hover-shine btn-outline-danger border-0 btn-sm"
                                                type="submit" data-toggle="tooltip" title="Mở khóa"
                                                data-placement="bottom"
                                                onclick="return confirm('Bạn có muốn mở khóa cho người dùng này?')">
                                                <span class="btn-icon-wrapper opacity-8">
                                                    Khóa
                                                </span>
                                            </button>
                                        @endif
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
                                    
                                    <span class="font-medium">{{ $users->count()}}</span>
                                    trên
                                    <span class="font-medium">{{$users->total()}}</span>
                                    kết quả
                                </p>
                            </div>
                            <div>
                                {{ $users->links() }}
                            </div>
                        </div>
                    </nav>
                </div>

            </div>
        </div>
    </div>
</div>

@endsection