import 'package:flutter/material.dart';

class OrdersScreen extends StatelessWidget {
  const OrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // بيانات وهمية للطلبات
    final List<Map<String, String>> orders = [
      {'id': '1', 'status': 'قيد التوصيل', 'destination': 'الرياض'},
      {'id': '2', 'status': 'تم التسليم', 'destination': 'جدة'},
      {'id': '3', 'status': 'في المستودع', 'destination': 'الدمام'},
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text('الطلبات'),
      ),
      body: ListView.builder(
        itemCount: orders.length,
        itemBuilder: (context, index) {
          final order = orders[index];
          return Card(
            margin: const EdgeInsets.all(8.0),
            child: ListTile(
              title: Text('طلب رقم ${order['id']}'),
              subtitle: Text('الحالة: ${order['status']} - الوجهة: ${order['destination']}'),
              trailing: const Icon(Icons.chevron_right),
            ),
          );
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // TODO: إضافة طلب جديد
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}