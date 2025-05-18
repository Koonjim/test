<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>HotelEditer</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1>HotelEditer</h1>
        <br>
        <h3>Id {{ $List->id }}</h3>
        <img src="{{ $List->photo_url }}" alt="">
        <h3>โรงแรม {{ $List->name }}</h3>
        <h5>{{ $List->latitude }}, {{ $List->longitude }} (ไม่ค่อยตรง)</h5>
        <h5>{{ $List->location_string }}</h5>
        <h5>จำนวนรีวิว : {{ $List->num_reviews }}</h5>
        
        <br>
        <form action="{{ route('HotelUpdate', $List->id) }}" method="post" class="form">
            @csrf
            <h4>Rating</h4>
            <label for="Hotelname">rating</label>
            <input type="text" value="{{ $List->rating }}" name="rating" class="form-control" step="0.01">
            <label for="Hotelname">ดาว</label>
            <input type="text" value="{{ $List->star }}" name="star" class="form-control" step="0.1">
            <br>
            <h4>Price of bed</h4>
            <label for="Hotelname">price_Single_Bed</label>
            <input type="text" value="{{ $List->price_Single_Bed ?? "ยังไม่ใส่"}}" name="price_Single_Bed"
                class="form-control text-danger" required>
            <label for="Hotelname">price_Twin_Bed (อันนี้จำเป็น)</label>
            <input type="text" value="{{ $List->price_Twin_Bed ?? "ยังไม่ใส่"}}" name="price_Twin_Bed"
                class="form-control text-danger" required>
            <label for="Hotelname">price_King_Size (อันนี้จำเป็น)</label>
            <input type="text" value="{{ $List->price_King_Size ?? "ยังไม่ใส่"}}" name="price_King_Size"
                class="form-control text-danger" required>
            <br>
            <h4>Photo</h4>
            <label for="Hotelname">photo (อันนี้จำเป็น)</label>
            <input type="text" value="{{ $List->photo_url }}" name="photo_url" class="form-control text-danger"
                required>
            <label for="Hotelname">photo2 (อันนี้ยังไม่จำเป็น)</label>
            <input type="text" value="{{ $List->photo_url2 ?? "-" }}" name="" class="form-control">
            <label for="Hotelname">photo3 (อันนี้ยังไม่จำเป็น)</label>
            <input type="text" value="{{ $List->photo_url3 ?? "-" }}" name="" class="form-control">
            <label for="Hotelname">photo4 (อันนี้ยังไม่จำเป็น)</label>
            <input type="text" value="{{ $List->photo_url4 ?? "-" }}" name="" class="form-control">
            <label for="Hotelname">photo5 (อันนี้ยังไม่จำเป็น)</label>
            <input type="text" value="{{ $List->photo_url5 ?? "-" }}" name="" class="form-control">
            <label for="Hotelname">photo6 (อันนี้ยังไม่จำเป็น)</label>
            <input type="text" value="{{ $List->photo_url6 ?? "-" }}" name="" class="form-control">
            <br>
            <h4>Service</h4>
            <label for="Hotelname">Service1</label>
            <input type="text" value="{{ $List->Service1 ?? "-" }}" name="Service1" class="form-control">
            <label for="Hotelname">Service2</label>
            <input type="text" value="{{ $List->Service2 ?? "-" }}" name="Service2" class="form-control">
            <label for="Hotelname">Service3</label>
            <input type="text" value="{{ $List->Service3 ?? "-" }}" name="Service3" class="form-control">

            <input type="submit" class="btn btn-dark mt-3 mb-3" value="แก้ไข">
        </form>
    </div>
</body>

</html>