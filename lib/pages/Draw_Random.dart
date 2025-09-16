import 'package:flutter/material.dart';

class DrawRandom extends StatelessWidget {
  const DrawRandom({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. ส่วน AppBar ด้านบน
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () {
            // เพิ่มโค้ดสำหรับปุ่มย้อนกลับได้ที่นี่
          },
        ),
        title: const Text(
          'Draw',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFF44336), // สีแดงอมชมพู
        elevation: 0,
      ),

      // 2. ส่วนเนื้อหาหลัก
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ส่วนตั้งค่าการจับสลาก
            const Center(
              child: Text(
                'Draw Settings',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // Dropdown สำหรับประเภทการสุ่ม
            DropdownButtonFormField<String>(
              decoration: InputDecoration(
                hintText: 'ประเภทการสุ่ม',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10.0),
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: Colors.grey[200],
              ),
              items: ['สุ่ม 6 หลัก', 'สุ่ม 3 หลัก', 'สุ่ม 2 หลัก']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (_) {},
            ),
            const SizedBox(height: 16),
            
            // ปุ่ม Draw
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF44336), // สีแดงอมชมพู
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
                child: const Text(
                  'Draw',
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ),
            const SizedBox(height: 32),
            
            // ส่วนแสดงผลการจับสลาก
            const Center(
              child: Text(
                'ผลการจับฉลาก',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 16),
            
            // รางวัลที่ 1
            _buildPrizeRow('รางวัลที่ 1', 6),
            _buildPrizeRow('รางวัลที่ 2', 6),
            _buildPrizeRow('รางวัลที่ 3', 6),
            _buildPrizeRow('เลขท้าย 3 ตัว', 3),
            _buildPrizeRow('เลขท้าย 2 ตัว', 2),
            
            const SizedBox(height: 32),
            
            // ปุ่ม Submit
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF44336), // สีแดงอมชมพู
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: const Text(
                  'Submit',
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
        currentIndex: 0, // ตั้งค่าให้เมนู "Home" ถูกเลือกตามรูป
        type: BottomNavigationBarType.fixed,
        selectedItemColor: Colors.pink[400],
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

  // ฟังก์ชันช่วยสร้างแถวรางวัล
  Widget _buildPrizeRow(String title, int numberOfBoxes) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 120,
            child: Text(
              title,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: List.generate(
                numberOfBoxes,
                (index) => Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    color: Colors.grey[300],
                    borderRadius: BorderRadius.circular(5.0),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// โค้ดสำหรับรันแอปพลิเคชัน
void main() {
  runApp(const MaterialApp(
    home: DrawRandom(),
    debugShowCheckedModeBanner: false,
  ));
}