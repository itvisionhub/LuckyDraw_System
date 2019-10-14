@extends('layouts.app')

@section('content')
<div class="mx-auto h-full flex justify-center items-center bg-gray-300">
    <div class="w-96 bg-blue-900 rounded-lg shadow-xl p-6">

        <h1 class="text-white text-3xl pt-8">Welcome Back</h1>
        <h2 class="text-blue-300">Enter your credentials below</h2>
                    <form method="POST" action="{{ route('login') }}" class="pt-8">
                        @csrf

                        <div class="relative">
                            <label for="email" class="uppercase text-blue-500 text-xs font-bold absolute pl-3 pt-2">E-mail</label>

                            <div>
                                <input id="email" type="email" class="pt-8 w-full rounded p-3 bg-blue-800 text-gray-100 outline-none focus:bg-blue-700" name="email" value="{{ old('email') }}" autocomplete="email" placeholder="your@email.com" autofocus>

                                @if ($errors->has('email'))
                                    <span class="text-red-600 text-sm pt-1" role="alert">
                                        <strong>{{ $errors->first('email') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="relative pt-2">
                            <label for="password" class="uppercase text-blue-500 text-xs font-bold absolute pl-3 pt-2">Password</label>

                            <div class="col-md-6">
                                <input id="password" type="password" class="pt-8 w-full rounded p-3 bg-blue-800 text-gray-100 outline-none focus:bg-blue-700" name="password"  autocomplete="current-password" placeholder="Password" >

                                @if ($errors->has('password'))
                                    <span class="text-red-600 text-sm" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="pt-2">
                            <input class="form-check-input" type="checkbox" name="remember" id="remember" {{ old('remember') ? 'checked' : '' }}>

                            <label class="text-white" for="remember">Remember Me</label>
                        </div>

                        <div class="pt-8">
                            <button type="submit" class="w-full bg-gray-400 py-2 px-3 text-left text-blue-800 uppercase rounded text-gray-100 font-bold">
                                    Login
                            </button>
                        </div>

                        <div class="flex justify-between pt-8 text-white text-sm font-bold">
                            <div>
                                <a class="" href="{{ route('password.request') }}">
                                    Forgot Your Password?
                                </a>
                            </div>
                            <div>
                                <a class="" href="{{ route('register') }}">
                                    Register
                                </a>
                            </div>
                        </div>

                    </form>
                </div>
            </div>
@endsection
