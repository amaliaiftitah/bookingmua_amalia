// ignore_for_file: use_key_in_widget_constructors, unused_field, prefer_const_constructors, prefer_collection_literals, unnecessary_new

import 'package:flutter/material.dart';

class MenuPage extends StatefulWidget {
  @override
  _MenuPageState createState() => _MenuPageState();
}

class _MenuPageState extends State<MenuPage> {
  int _paket = 0;
  String _kostum = "";
  String _makeup = "";
  String _dekorasi = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pilih Sekarang"),
        actions: [
          IconButton(
              icon: Icon(Icons.check),
              onPressed: () {
                Map<String, dynamic> myData = new Map();
                myData['paket'] = _paket;
                myData['kostum'] = _kostum;
                myData['makeup'] = _makeup;
                myData['dekorasi'] = _dekorasi;
                Navigator.pop(context, myData);
              }),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Paket",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  suffixText: 'Paket',
                  hintText: 'Masukkan paket',
                ),
                onChanged: (value) {
                  _paket = int.parse(value);
                },
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Pakaian",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Radio(
                    value: "Adat Jawa",
                    groupValue: _kostum,
                    onChanged: (value) {
                      setState(() {
                        _kostum = value.toString();
                      });
                    },
                  ),
                  Text('Adat Jawa'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Adat Sunda",
                    groupValue: _kostum,
                    onChanged: (value) {
                      setState(() {
                        _kostum = value.toString();
                      });
                    },
                  ),
                  Text('Adat Sunda'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Adat minang",
                    groupValue: _kostum,
                    onChanged: (value) {
                      setState(() {
                        _kostum = value.toString();
                      });
                    },
                  ),
                  Text('Adat minang'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Make UP",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Radio(
                    value: "Klasik",
                    groupValue: _makeup,
                    onChanged: (value) {
                      setState(() {
                        _makeup = value.toString();
                      });
                    },
                  ),
                  Text('Klasik'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Modern",
                    groupValue: _makeup,
                    onChanged: (value) {
                      setState(() {
                        _makeup = value.toString();
                      });
                    },
                  ),
                  Text('Modern'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Bold",
                    groupValue: _makeup,
                    onChanged: (value) {
                      setState(() {
                        _makeup = value.toString();
                      });
                    },
                  ),
                  Text('Bold'),
                ],
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Dekorasi",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Radio(
                    value: "Full ruangan",
                    groupValue: _dekorasi,
                    onChanged: (value) {
                      setState(() {
                        _dekorasi = value.toString();
                      });
                    },
                  ),
                  Text('Full ruangan'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Panggung",
                    groupValue: _dekorasi,
                    onChanged: (value) {
                      setState(() {
                        _dekorasi = value.toString();
                      });
                    },
                  ),
                  Text('Panggung'),
                ],
              ),
              Row(
                children: [
                  Radio(
                    value: "Custom dinding",
                    groupValue: _dekorasi,
                    onChanged: (value) {
                      setState(() {
                        _dekorasi = value.toString();
                      });
                    },
                  ),
                  Text('Custom dinding'),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
