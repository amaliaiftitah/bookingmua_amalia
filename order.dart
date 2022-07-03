// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, unused_field, annotate_overrides, non_constant_identifier_names, avoid_types_as_parameter_names, unused_local_variable, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:program_flutter/menu.dart';

class OrderPage extends StatefulWidget {
  String nama;
  String tanggal;
  String jenisKelamin;
  OrderPage(
      {required Key,
      required this.nama,
      required this.tanggal,
      required this.jenisKelamin})
      : super();
  @override
  _OrderPageState createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> {
  String _panggilan = "";
  String _pemesan = "";

  int _paket = 0;
  String _kostum = "";
  String _makeup = "";
  String _dekorasi = "";
  void initState() {
    super.initState();
    _pemesan = widget.nama;
    if (widget.jenisKelamin == "P") {
      _panggilan = "Ms ";
    } else {
      _panggilan = "Mrs ";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Order"),
      ),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Column(
                  children: [
                    Text(
                      "Pemesan",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      _panggilan + _pemesan,
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
                Column(children: [
                  Text(
                    "Tanggal ",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(widget.tanggal.toString(),
                      style: TextStyle(fontSize: 20))
                ]),
              ],
            ),
            Divider(),
            Row(),
            Text(
              "Paket",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text("$_paket paket"),
            SizedBox(
              height: 15,
            ),
            Text(
              "Kostum",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(_kostum),
            SizedBox(
              height: 15,
            ),
            Text(
              "Make Up",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(_makeup),
            SizedBox(
              height: 15,
            ),
            Text(
              "Dekorasi",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            Text(_dekorasi),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          _openMenu(context);
        },
        tooltip: 'Change Favorite',
        child: Icon(Icons.shopping_bag_outlined),
      ),
    );
  }

  Future<void> _openMenu(BuildContext context) async {
    Map<String, dynamic> _menuResponse = await Navigator.push(
        context,
        MaterialPageRoute(
            fullscreenDialog: true, builder: (context) => MenuPage()));
    setState(() {
      _paket = _menuResponse['paket'];
      _kostum = _menuResponse['kostum'];
      _makeup = _menuResponse['makeup'];
      _dekorasi = _menuResponse['dekorasi'];
    });
  }
}
