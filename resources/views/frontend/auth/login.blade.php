@extends('frontend.layout.master')

@section('content')

<style>

#login .container #login-row #login-column #login-box {
  max-width: 600px;
  border: 1px solid #d7d7d7;
}
#login .container #login-row #login-column #login-box #login-form {
  padding: 20px;
}
#login .container #login-row #login-column #login-box #login-form #register-link {
  margin-top: -45px;
}
</style>

<div id="login">
    <div class="container">
        <div id="login-row" class="row justify-content-center align-items-center">
            <div id="login-column" class="col-md-6">
                <div id="login-box" class="col-md-12 shadow-none p-3 mb-5 bg-light rounded">
                    <form id="login-form" class="form" action="{{route('loginPost')}}" method="post">
                        @csrf
                        <h3 class="text-center text-primary">Đăng nhập</h3>
                        @if (session('success'))
                            <div class="alert alert-success">
                                {{ session('success') }}
                            </div>
                        @endif

                        @error('status')
                            <p class="text-danger">{{$message}}</p>
                        @enderror
                        <div class="form-group">
                            <label for="email" class="text-dark">Email:</label><br>
                            <input type="text" name="email" id="email" class="form-control">
                            @error('email')
                                <p class="text-danger">{{$message}}</p>
                            @enderror
                        </div>
                        <div class="form-group">
                            <label for="password" class="text-dark">Mật khẩu:</label><br>
                            <input type="password" name="password" id="password" class="form-control">
                            @error('password')
                                <p class="text-danger">{{$message}}</p>
                            @enderror
                        </div>
                        <div class="form-group" >
                            <a href="{{route('password.request')}}" class="text-primary">Quên mật khẩu?</a>
                        </div>
                        <div class="form-group">
                            <button type="submit"class="btn btn-primary btn-md" >
                                Đăng nhập
                            </button>
                        </div>
                        <div id="register-link" class="text-right">
                            <a href="{{route('register')}}" class="text-primary">Đăng ký ngay</a>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection