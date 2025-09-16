import 'package:flutter/material.dart';

// สร้างคลาสหลักสำหรับหน้า Check & Redeem
class CheckRedreem extends StatelessWidget {
  const CheckRedreem({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. ส่วน AppBar ด้านบน
      appBar: AppBar(
        title: const Text(''), // ไม่มี title ตามรูป
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      // 2. ส่วนเนื้อหาหลัก
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // แถบค้นหา
            TextField(
              decoration: InputDecoration(
                hintText: 'โปรดป้อนหมายเลขของคุณ',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
              ),
            ),
            const SizedBox(height: 24),

            // ตารางผลรางวัล
            Table(
              columnWidths: const {
                0: FlexColumnWidth(1.5), // หมวดหมู่
                1: FlexColumnWidth(1.5), // เลขที่ออก
                2: FlexColumnWidth(2.0), // รางวัล
              },
              children: [
                // หัวข้อตาราง
                TableRow(
                  children: [
                    _buildTableCell(
                        'หมวดหมู่', isHeader: true, alignment: TextAlign.start),
                    _buildTableCell(
                        'เลขที่ออก', isHeader: true, alignment: TextAlign.center),
                    _buildTableCell(
                        'รางวัล', isHeader: true, alignment: TextAlign.end),
                  ],
                ),
                // แถวข้อมูล
                _buildTableRow('รางวัลที่ 1', '251309', '6,000,000 บาท'),
                _buildTableRow('รางวัลที่ 2', '546015', '500,000 บาท'),
                _buildTableRow('รางวัลที่ 3', '365742', '80,000 บาท'),
                _buildTableRow('เลขท้าย 3 ตัว', '965 631', '4,000 บาท'),
                _buildTableRow('เลขท้าย 2 ตัว', '87', '2,000 บาท'),
              ],
            ),
            const SizedBox(height: 32),

            // ส่วนขึ้นเงินรางวัล
            const Text(
              'ขึ้นเงินรางวัล',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 16),

            // ช่องป้อนหมายเลขเพื่อขึ้นเงิน
            TextField(
              decoration: InputDecoration(
                hintText: 'โปรดป้อนหมายเลขของท่าน',
                prefixIcon: const Icon(
                    Icons.confirmation_num_outlined, color: Colors.pink),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(30.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: 20.0),
              ),
            ),
            const SizedBox(height: 24),

            // ปุ่มยืนยัน
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF06292), // สีชมพู
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: const Text(
                  'ยืนยัน',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),

      // 3. ส่วน BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 3, // ตั้งค่าให้เมนู "Redeem" ถูกเลือก (ตำแหน่งที่ 3)
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFFF06292), // สีชมพู
        unselectedItemColor: Colors.grey,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Catalog',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.confirmation_num_outlined),
            label: 'My Tickets',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Redeem',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outline),
            label: 'Account',
          ),
        ],
      ),
    );
  }

  // ฟังก์ชันช่วยสร้าง TableRow สำหรับตาราง
  TableRow _buildTableRow(String category, String number, String prize) {
    return TableRow(
      children: [
        _buildTableCell(category, alignment: TextAlign.start),
        _buildTableCell(number, alignment: TextAlign.center),
        _buildTableCell(prize, alignment: TextAlign.end),
      ],
    );
  }

  // ฟังก์ชันช่วยสร้าง Cell สำหรับตาราง
  Widget _buildTableCell(String text, {bool isHeader = false, TextAlign alignment = TextAlign.start}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Text(
        text,
        textAlign: alignment,
        style: TextStyle(
          fontWeight: isHeader ? FontWeight.bold : FontWeight.normal,
          fontSize: 16,
          color: isHeader ? Colors.black : Colors.black87,
        ),
      ),
    );
  }
}

// โค้ดสำหรับรันแอปพลิเคชัน
void main() {
  runApp(const MaterialApp(
    home: CheckRedreem(),
    debugShowCheckedModeBanner: false,
  ));
}