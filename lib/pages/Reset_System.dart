import 'package:flutter/material.dart';

class ResetSystem extends StatelessWidget {
  const ResetSystem({super.key});

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
          'Systems',
          style: TextStyle(color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFFF44336), // สีแดงอมชมพู
        elevation: 0,
      ),

      // 2. ส่วนเนื้อหาหลัก
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // ปุ่ม "Reset Draw"
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
                    'Reset Draw',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              
              // ปุ่ม "Reset the WORLD!!!!"
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
                    'Reset the WORLD!!!!',
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
      ),

      // 3. ส่วน BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0, // ตั้งค่าให้เมนู "Home" ถูกเลือกเป็นค่าเริ่มต้น
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
}

// โค้ดสำหรับรันแอปพลิเคชัน
void main() {
  runApp(const MaterialApp(
    home: ResetSystem(),
    debugShowCheckedModeBanner: false,
  ));
}