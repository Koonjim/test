<!-- resources/views/hotels.blade.php -->
<!DOCTYPE html>
<html lang="th">

<head>
    <meta charset="UTF-8">
    <title>โรงแรมในกรุงเทพฯ</title>
</head>

<body>
    <h1>โรงแรมในกรุงเทพฯ</h1>
    <label for="province">Select your province:</label>
    <input list="provinces" name="province" id="province" placeholder="Search province...">
    <datalist id="provinces">
        <option value="Bangkok">กรุงเทพมหานคร</option>
        <option value="Amnat Charoen">อำนาจเจริญ</option>
        <option value="Ang Thong">อ่างทอง</option>
        <option value="Bueng Kan">บึงกาฬ</option>
        <option value="Buriram">บุรีรัมย์</option>
        <option value="Chachoengsao">ฉะเชิงเทรา</option>
        <option value="Chai Nat">ชัยนาท</option>
        <option value="Chaiyaphum">ชัยภูมิ</option>
        <option value="Chanthaburi">จันทบุรี</option>
        <option value="Chiang Mai">เชียงใหม่</option>
        <option value="Chiang Rai">เชียงราย</option>
        <option value="Chonburi">ชลบุรี</option>
        <option value="Chumphon">ชุมพร</option>
        <option value="Kalasin">กาฬสินธุ์</option>
        <option value="Kamphaeng Phet">กำแพงเพชร</option>
        <option value="Kanchanaburi">กาญจนบุรี</option>
        <option value="Khon Kaen">ขอนแก่น</option>
        <option value="Krabi">กระบี่</option>
        <option value="Lampang">ลำปาง</option>
        <option value="Lamphun">ลำพูน</option>
        <option value="Loei">เลย</option>
        <option value="Lopburi">ลพบุรี</option>
        <option value="Mae Hong Son">แม่ฮ่องสอน</option>
        <option value="Maha Sarakham">มหาสารคาม</option>
        <option value="Mukdahan">มุกดาหาร</option>
        <option value="Nakhon Nayok">นครนายก</option>
        <option value="Nakhon Pathom">นครปฐม</option>
        <option value="Nakhon Phanom">นครพนม</option>
        <option value="Nakhon Ratchasima">นครราชสีมา</option>
        <option value="Nakhon Sawan">นครสวรรค์</option>
        <option value="Nakhon Si Thammarat">นครศรีธรรมราช</option>
        <option value="Nan">น่าน</option>
        <option value="Narathiwat">นราธิวาส</option>
        <option value="Nong Bua Lamphu">หนองบัวลำภู</option>
        <option value="Nong Khai">หนองคาย</option>
        <option value="Nonthaburi">นนทบุรี</option>
        <option value="Pathum Thani">ปทุมธานี</option>
        <option value="Pattani">ปัตตานี</option>
        <option value="Phang Nga">พังงา</option>
        <option value="Phatthalung">พัทลุง</option>
        <option value="Phayao">พะเยา</option>
        <option value="Phetchabun">เพชรบูรณ์</option>
        <option value="Phetchaburi">เพชรบุรี</option>
        <option value="Phichit">พิษณุโลก</option>
        <option value="Phitsanulok">พิษณุโลก</option>
        <option value="Phra Nakhon Si Ayutthaya">พระนครศรีอยุธยา</option>
        <option value="Phrae">แพร่</option>
        <option value="Phuket">ภูเก็ต</option>
        <option value="Prachinburi">ปราจีนบุรี</option>
        <option value="Prachuap Khiri Khan">ประจวบคีรีขันธ์</option>
        <option value="Ranong">ระนอง</option>
        <option value="Ratchaburi">ราชบุรี</option>
        <option value="Rayong">ระยอง</option>
        <option value="Roi Et">ร้อยเอ็ด</option>
        <option value="Sa Kaeo">สระแก้ว</option>
        <option value="Sakon Nakhon">สกลนคร</option>
        <option value="Samut Prakan">สมุทรปราการ</option>
        <option value="Samut Sakhon">สมุทรสาคร</option>
        <option value="Samut Songkhram">สมุทรสงคราม</option>
        <option value="Saraburi">สระบุรี</option>
        <option value="Satun">สตูล</option>
        <option value="Sing Buri">สิงห์บุรี</option>
        <option value="Si Sa Ket">ศรีสะเกษ</option>
        <option value="Songkhla">สงขลา</option>
        <option value="Sukhothai">สุโขทัย</option>
        <option value="Suphan Buri">สุพรรณบุรี</option>
        <option value="Surat Thani">สุราษฎร์ธานี</option>
        <option value="Surin">สุรินทร์</option>
        <option value="Tak">ตาก</option>
        <option value="Trang">ตรัง</option>
        <option value="Trat">ตราด</option>
        <option value="Ubon Ratchathani">อุบลราชธานี</option>
        <option value="Udon Thani">อุดรธานี</option>
        <option value="Uthai Thani">อุทัยธานี</option>
        <option value="Uttaradit">อุตรดิตถ์</option>
        <option value="Yala">ยะลา</option>
        <option value="Yasothon">ยโสธร</option>
    </datalist>

    @if($hotels->isEmpty())
        <p>ไม่พบข้อมูลโรงแรม</p>
    @else
        <ul>
            @foreach($hotels as $hotel)
                <li>
                    <strong>{{ $hotel['result_object']['name'] }}</strong><br>
                    ที่อยู่: {{ $hotel['result_object']['location_string'] ?? '-' }}<br>
                    คะแนน: {{ $hotel['result_object']['rating'] ?? '-' }}<br>
                    จำนวนรีวิว: {{ $hotel['result_object']['num_reviews'] ?? '0' }} รีวิว<br>
                    พิกัด: {{ $hotel['result_object']['latitude'] ?? '-' }},
                    {{ $hotel['result_object']['longitude'] ?? '-' }}<br>
                    ราคา: {{ $hotel['result_object']['price'] ?? '-' }}<br>
                    @if(isset($hotel['result_object']['photo']['images']['small']['url']))
                        <img src="{{ $hotel['result_object']['photo']['images']['small']['url'] }}" alt="รูปภาพโรงแรม">
                    @endif
                    <hr>
                </li>
            @endforeach

        </ul>
    @endif
</body>

</html>