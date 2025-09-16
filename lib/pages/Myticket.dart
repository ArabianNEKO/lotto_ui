import 'package:flutter/material.dart';

class Myticket extends StatelessWidget {
  const Myticket({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Tickets"),
        centerTitle: true,
        elevation: 0,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
      ),
      body: Column(
        children: [
          // Search bar
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search",
                prefixIcon: const Icon(Icons.search),
                filled: true,
                fillColor: Colors.grey.shade200,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(25),
                  borderSide: BorderSide.none,
                ),
              ),
            ),
          ),

          // ListView ของตั๋ว
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: const [
                TicketCard(number: "123456"),
                TicketCard(number: "365742"),
                TicketCard(number: "546015"),
                TicketCard(number: "251309"),
                TicketCard(number: "132548"),
                TicketCard(number: "451248"),
              ],
            ),
          ),
        ],
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
        selectedItemColor: Colors.pink,
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home_outlined), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.confirmation_number), label: "My Tickets"),
          BottomNavigationBarItem(
              icon: Icon(Icons.card_giftcard), label: "Redeem"),
          BottomNavigationBarItem(
              icon: Icon(Icons.person_outline), label: "Account"),
        ],
      ),
    );
  }
}

// Widget การ์ดตั๋ว
class TicketCard extends StatelessWidget {
  final String number;

  const TicketCard({super.key, required this.number});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      child: Row(
        children: [
          // ด้านซ้าย (โลโก้ + ราคา)
          Container(
            width: 120,
            padding: const EdgeInsets.all(12),
            color: const Color(0xFFEFF6D9), // สีเขียวอ่อนเหมือนในภาพ
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Icon(Icons.local_activity, size: 60, color: Colors.red),
                SizedBox(height: 8),
                Text("80 บาท",
                    style: TextStyle(color: Colors.pink, fontSize: 16)),
              ],
            ),
          ),

          // ด้านขวา (เลขตั๋ว + วันเวลา + ชุดที่)
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(12.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    number,
                    style: const TextStyle(
                        fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 4),
                  const Text("1 พฤศจิกายน 2568"),
                  const Text("1 November 2025",
                      style: TextStyle(fontWeight: FontWeight.bold)),
                  const SizedBox(height: 4),
                  const Text("งวดที่ 1 ชุดที่ 1"),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
