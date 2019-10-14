@extends('layouts.app')

@section('content')
<div class="mx-auto h-full flex justify-center items-center bg-gray-300">
    <div class="w-96 bg-blue-900 rounded-lg shadow-xl p-6">

        <h1 class="text-white text-3xl pt-8">Welcome Back</h1>
        <h2 class="text-blue-300">Enter your credentials below</h2>
                    <form method="POST" action="{{ route('register') }}" class="pt-8">
                        @csrf

                        <div class="relative">
                            <label for="name" class="uppercase text-blue-500 text-xs font-bold absolute pl-3 pt-2">Full Name</label>

                            <div class="col-md-6">
                                <input id="name" type="text" class="pt-8 w-full rounded p-3 bg-blue-800 text-gray-100 outline-none focus:bg-blue-700" name="name" value="{{ old('name') }}" placeholder="Your Name" autofocus>

                                @if ($errors->has('name'))
                                    <span class="text-red-600 text-sm pt-1" role="alert">
                                        <strong>{{ $errors->first('name') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="relative pt-2">
                            <label for="email" class="uppercase text-blue-500 text-xs font-bold absolute pl-3 pt-2">E-Mail Address</label>

                            <div class="col-md-6">
                                <input id="email" type="email" class="pt-8 w-full rounded p-3 bg-blue-800 text-gray-100 outline-none focus:bg-blue-700" name="email" value="{{ old('email') }}" placeholder="your@email.com">

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
                                <input id="password" type="password" class="pt-8 w-full rounded p-3 bg-blue-800 text-gray-100 outline-none focus:bg-blue-700" placeholder="Password" name="password">

                                @if ($errors->has('password'))
                                    <span class="text-red-600 text-sm pt-1" role="alert">
                                        <strong>{{ $errors->first('password') }}</strong>
                                    </span>
                                @endif
                            </div>
                        </div>

                        <div class="relative pt-2">
                            <label for="password-confirm" class="uppercase text-blue-500 text-xs font-bold absolute pl-3 pt-2">Confirm Password</label>

                            <div class="col-md-6">
                                <input id="password-confirm" type="password" class="pt-8 w-full rounded p-3 bg-blue-800 text-gray-100 outline-none focus:bg-blue-700" name="password_confirmation" placeholder="Confirm Password">
                            </div>
                        </div>

                        <div class="pt-8">
                            <button type="submit" class="w-full bg-gray-400 py-2 px-3 text-left text-blue-800 uppercase rounded text-gray-100 font-bold">
                                    Register
                            </button>
                        </div>

                        <div class="flex justify-between pt-8 text-white text-sm font-bold">
                            <div>
                                <a class="" href="{{ route('password.request') }}">
                                    Forgot Your Password?
                                </a>
                            </div>
                            <div>
                                <a class="" href="{{ route('login') }}">
                                    Login
                                </a>
                            </div>
                        </div>
                    </form>
                </div>
            </div>
@endsection
