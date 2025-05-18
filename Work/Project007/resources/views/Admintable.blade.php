<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admintable</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.6/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-4Q6Gf2aSP4eDXB8Miphtr37CMZZQ5oXLH2yaXMJ2w8e2ZtHTl7GptT4jmndRuHDT" crossorigin="anonymous">
</head>

<body>
    <div class="container">
        <h1>Admin</h1>
        <table class="table table-striped table-hover">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>IMG</th>
                    <th>Name</th>
                    <th>Map</th>
                    <th>Single Bed</th>
                    <th>Twin Bed</th>
                    <th>King Size Bed</th>
                    <th>ดาว</th>
                </tr>
            </thead>
            <tbody>
                @foreach ($List as $Item)
                    <tr onclick="window.location='{{ route('adminEdit', $Item->id) }}';" style="cursor: pointer;">
                        <td>{{ $Item->id }}</td>
                        <td><img src="{{ $Item->photo_url }}" alt="" width="150px" height="150px"></td>
                        <td>{{ $Item->name }}</td>
                        <td>
                            <a href="https://www.google.com/maps?q={{ $Item->latitude }},{{ $Item->longitude }}"
                                target="_blank" style="text-decoration: none;" onclick="event.stopPropagation();">
                                {{ $Item->latitude }}, {{ $Item->longitude }}
                            </a>
                        </td>
                        <td class="text-danger">{{ $Item->price_Single_Bed ?? "ยังไม่ใส่" }}</td>
                        <td class="text-danger">{{ $Item->price_Twin_Bed ?? "ยังไม่ใส่" }}</td>
                        <td class="text-danger">{{ $Item->price_King_Size ?? "ยังไม่ใส่" }}</td>
                        <td class="text-danger">{{ $Item->star ?? "ยังไม่ใส่" }}</td>
                    </tr>
                @endforeach
            </tbody>
        </table>
    </div>
</body>

</html>