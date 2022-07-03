// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, unused_field, prefer_final_fields, prefer_typing_uninitialized_variables, empty_statements, dead_code

import 'package:flutter/material.dart';
import 'package:program_flutter/order.dart';

class BookingPage extends StatefulWidget {
  @override
  _BookingPageState createState() => _BookingPageState();
}

class _BookingPageState extends State<BookingPage> {
  String _nama = "";
  String _tanggal = "";
  String _jenisKelamin = "";

  var key;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Booking MUA"),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              decoration: InputDecoration(
                  labelText: 'Nama', hintText: 'Masukkan nama lengkap'),
              onChanged: (text) {
                _nama = text;
              },
            ),
          ),
          Row(
            children: <Widget>[
              Radio(
                value: "L",
                groupValue: _jenisKelamin,
                onChanged: (value) {
                  _jkChanged(value);
                },
              ),
              Text('Laki-laki'),
              SizedBox(
                width: 20,
              ),
              Radio(
                value: "P",
                groupValue: _jenisKelamin,
                onChanged: (value) {
                  _jkChanged(value);
                },
              ),
              Text('Perempuan'),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: TextField(
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                  labelText: 'Tanggal',
                  hintText: 'Masukkan tanggal ( cth. 2 Juli 2022'),
              onChanged: (text) {
                _tanggal = (text);
              },
            ),
          ),
          ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return OrderPage(
                    nama: _nama,
                    tanggal: _tanggal,
                    jenisKelamin: _jenisKelamin,
                    Key: null,
                  );
                  ;
                }));
              },
              child: Text("Pesan"))
        ],
      ),
    );
  }

  void _jkChanged(value) {
    setState(() {
      _jenisKelamin = value;
    });
  }
}
