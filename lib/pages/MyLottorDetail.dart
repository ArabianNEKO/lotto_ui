import 'package:flutter/material.dart';

// สร้างคลาสหลักสำหรับหน้า Lotto details
class Mylottordetail extends StatelessWidget {
  const Mylottordetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. ส่วน AppBar ด้านบน
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // สามารถเพิ่มโค้ดสำหรับปุ่มย้อนกลับได้ที่นี่
          },
        ),
        title: const Text('Lotto details'),
        centerTitle: true,
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      
      // 2. ส่วนเนื้อหาหลัก
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            // Container สำหรับบัตรลอตเตอรี่
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.2),
                    spreadRadius: 2,
                    blurRadius: 5,
                    offset: const Offset(0, 3),
                  ),
                ],
              ),
              child: Row(
                children: [
                  // ส่วนบัตรสีเขียวด้านซ้าย
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: const BoxDecoration(
                        color: Color(0xFFE8F5E9), // สีเขียวอ่อน
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          bottomLeft: Radius.circular(15.0),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // ไอคอนตัวการ์ตูน
                          const Icon(
                            Icons.emoji_emotions_outlined, // ใช้ไอคอนแทนรูปภาพ
                            size: 60,
                            color: Colors.red,
                          ),
                          const SizedBox(height: 8),
                          // ข้อความ LOTTO
                          const Text(
                            'LOTTO',
                            style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold,
                              color: Colors.red,
                            ),
                          ),
                          const SizedBox(height: 24),
                          // ราคา
                          Text(
                            '80 บาท',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.pink[400],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  
                  // ส่วนบัตรสีเทาด้านขวา
                  Expanded(
                    child: Container(
                      padding: const EdgeInsets.all(16.0),
                      decoration: const BoxDecoration(
                        color: Color(0xFFE0E0E0), // สีเทาอ่อน
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(15.0),
                          bottomRight: Radius.circular(15.0),
                        ),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          // เลขลอตเตอรี่
                          Text(
                            '123456',
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold,
                              color: Colors.black87,
                            ),
                          ),
                          SizedBox(height: 8),
                          // วันที่
                          Text(
                            '1 พฤศจิกายน 2568',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                          Text(
                            '1 November 2025',
                            style: TextStyle(
                              fontSize: 12,
                              color: Colors.black54,
                            ),
                          ),
                          SizedBox(height: 8),
                          // งวดและชุด
                          Text(
                            'งวดที่ 1 ชุดที่ 1',
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.black54,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            
            const SizedBox(height: 32),
            
            // ปุ่ม "Buy a ticket"
            SizedBox(
              width: double.infinity,
              height: 50,
              child: ElevatedButton(
                onPressed: () {
                  // สามารถเพิ่มโค้ดสำหรับปุ่มซื้อได้ที่นี่
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFF06292), // สีชมพู
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25.0),
                  ),
                ),
                child: const Text(
                  'Buy a ticket',
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
      
      // 4. ส่วน BottomNavigationBar
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed, // เพื่อให้แสดง icon ครบทั้งหมด
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
    home: Mylottordetail(),
    debugShowCheckedModeBanner: false,
  ));
}