<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1>Login</h1>
        <form action="{{ route('CheckLogin') }}" method="post">
    @csrf

    <label for="Username">Username</label>
    <input type="text" class="form-control" name="Username" value="{{ old('Username') }}">
    @error('Username')
        <div class="text-danger">{{ $message }}</div>
    @enderror

    <label for="Password">Password</label>
    <input type="password" class="form-control" name="Password">
    @error('Password')
        <div class="text-danger">{{ $message }}</div>
    @enderror

    @if ($errors->has('login'))
        <div class="text-danger mt-2">{{ $errors->first('login') }}</div>
    @endif

    <input type="submit" value="Login" class="btn btn-dark mt-2">
    <a href="/Register" class="btn btn-danger mt-2">Register</a>
</form>

    </div>
</body>

</html>