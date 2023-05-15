import 'package:flutter/material.dart';

void main() {
  runApp(RentalApp());
}

class RentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Rental Jual Minuman',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: RentalScreen(),
    );
  }
}

class RentalScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rental Jual Minuman'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 16.0),
                child: Text(
                  'Menu Minuman',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              MenuItem(title: 'Minuman A'),
              MenuItem(title: 'Minuman B'),
              MenuItem(title: 'Minuman C'),
              MenuItem(title: 'Minuman D'),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Pemesanan',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Nama'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'No. Meja'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Pilihan Minuman'),
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Jumlah'),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'Total',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Subtotal:'),
                  Text('Rp 100.000'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Pajak:'),
                  Text('Rp 10.000'),
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Total:'),
                  Text('Rp 110.000'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final String title;

  MenuItem({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 8.0),
      child: Text(title),
    );
  }
}
