import 'package:flutter/material.dart';
import 'package:master_application_kelompok_3/riwayat.dart';

class OrderHistoryScreen extends StatefulWidget {
  @override
  _OrderHistoryScreenState createState() => _OrderHistoryScreenState();
}

class _OrderHistoryScreenState extends State<OrderHistoryScreen> {
  final List<Order> _orders = [
    Order(
      orderNumber: 'Ban mobil',
      orderDate: '2023-05-10',
      totalAmount: 200.0,
      orderStatus: 'Ban bocor',
    ),
    Order(
      orderNumber: 'Servis AC',
      orderDate: '2023-05-11',
      totalAmount: 100.0,
      orderStatus: 'AC tidak fungsi',
    ),
    Order(
      orderNumber: 'Ganti AKI',
      orderDate: '2023-05-12',
      totalAmount: 300.0,
      orderStatus: 'AKI Habis',
    ),
    Order(
      orderNumber: 'Servis Kaki-Kaki',
      orderDate: '2023-05-12',
      totalAmount: 300.0,
      orderStatus: 'Kaki-Kaki Keras',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Riwayat Pemesanan'),
      ),
      body: ListView.builder(
        itemCount: _orders.length,
        itemBuilder: (BuildContext context, int index) {
          final order = _orders[index];
          return ListTile(
            title: Text('Order #${order.orderNumber}'),
            subtitle: Text('${order.orderDate} - ${order.orderStatus}'),
            trailing: Text('\$${order.totalAmount.toStringAsFixed(2)}'),
            onTap: () {
              // TODO: Navigate to order details screen
            },
          );
        },
      ),
    );
  }
}