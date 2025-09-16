import 'package:flutter/material.dart';

class Wallet extends StatefulWidget {
  const Wallet({super.key});

  @override
  State<Wallet> createState() => _WalletState();
}

class _WalletState extends State<Wallet> {
  int _selectedAmount = 50; // กำหนดค่าเริ่มต้นเป็น 50 บาท

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. ส่วน AppBar ด้านบน
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // เพิ่มโค้ดสำหรับปุ่มย้อนกลับได้ที่นี่
          },
        ),
        title: const Text('Wallet'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),

      // 2. ส่วนเนื้อหาหลัก
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            // Total Money
            const Text(
              'Total Money',
              style: TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '120,000.00 บาท',
              style: TextStyle(
                fontSize: 32,
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 32),

            // เลือกธนาคาร
            const Text(
              'เลือกธนาคาร',
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 10),
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
              decoration: BoxDecoration(
                color: Colors.grey[200],
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: Row(
                children: const [
                  Icon(Icons.account_balance_outlined, color: Colors.grey),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      'เลือกธนาคารของคุณ',
                      style: TextStyle(fontSize: 16, color: Colors.grey),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 16, color: Colors.grey),
                ],
              ),
            ),
            const SizedBox(height: 32),

            // ปุ่มเลือกจำนวนเงิน
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildAmountButton(20),
                _buildAmountButton(50),
                _buildAmountButton(100),
              ],
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                _buildAmountButton(200),
                _buildAmountButton(500),
                _buildAmountButton(1000),
              ],
            ),
            const SizedBox(height: 32),

            // จำนวนเงินที่เลือก
            const Center(
              child: Text(
                'จำนวนเงิน',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Center(
              child: Text(
                '$_selectedAmount บาท',
                style: const TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
            const Spacer(), // ใช้ Spacer เพื่อดันปุ่มไปด้านล่าง

            // ปุ่มยืนยัน
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // เพิ่มโค้ดสำหรับปุ่มยืนยันได้ที่นี่
                  print('ยืนยันจำนวนเงิน: $_selectedAmount บาท');
                },
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

  // ฟังก์ชันช่วยสร้างปุ่มเลือกจำนวนเงิน
  Widget _buildAmountButton(int amount) {
    bool isSelected = (_selectedAmount == amount);
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedAmount = amount;
        });
      },
      child: Container(
        width: 80,
        height: 40,
        decoration: BoxDecoration(
          color: isSelected ? const Color(0xFF5C6BC0) : Colors.grey[200], // สีม่วงเข้ม
          borderRadius: BorderRadius.circular(20.0),
          border: isSelected
              ? Border.all(color: Colors.blue.shade200, width: 2) // เพิ่มขอบเมื่อเลือก
              : null,
        ),
        child: Center(
          child: Text(
            '$amount',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              color: isSelected ? Colors.white : Colors.black87,
            ),
          ),
        ),
      ),
    );
  }
}

// โค้ดสำหรับรันแอปพลิเคชัน
void main() {
  runApp(const MaterialApp(
    home: Wallet(),
    debugShowCheckedModeBanner: false,
  ));
}