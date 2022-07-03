// ignore_for_file: unused_import, use_key_in_widget_constructors, prefer_const_constructors, sized_box_for_whitespace, unused_field, non_constant_identifier_names, prefer_final_fields

import 'package:flutter/material.dart';
import 'package:program_flutter/wellcom.dart';

class LoginPage extends StatefulWidget {
  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String _email = "";
  String _Pass = "";
  String _errorMessage = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("AMMUA"),
      ),
      body: SingleChildScrollView(
        child: Column(children: [
          Center(
            child: Container(
                padding: EdgeInsets.only(top: 5),
                height: 300,
                width: 250,
                child: Image.network(
                    'https://i.postimg.cc/nhpc3CwB/Whats-App-Image-2022-06-30-at-15-39-16-removebg-preview.png')),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Email',
                  hintText: 'Masukkan Alamat email'),
              onChanged: (text) {
                _email = text;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Passsword',
                  hintText: 'Masukkan password'),
              onChanged: (text) {
                _Pass = text;
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10),
            child: Text(
              _errorMessage,
              style: TextStyle(color: Colors.red),
            ),
          ),
          Container(
            height: 50,
            width: 250,
            decoration: BoxDecoration(
                color: Colors.blue, borderRadius: BorderRadius.circular(30)),
            child: TextButton(
              onPressed: () {
                setState(() {
                  if (_email == "amalia@gmail.com" && _Pass == "12345") {
                    _errorMessage = "";
                    Navigator.pushReplacement(context,
                        MaterialPageRoute(builder: (context) => WellcomPage()));
                  } else {
                    _errorMessage = "Email atau Password salah";
                  }
                });
              },
              child: Text(
                "Login",
                style: TextStyle(color: Colors.white, fontSize: 20),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
