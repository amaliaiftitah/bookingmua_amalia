// ignore_for_file: unused_import, prefer_const_constructors, prefer_const_constructors, prefer_const_constructors, duplicate_ignore, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:program_flutter/booking.dart';

class WellcomPage extends StatefulWidget {
  const WellcomPage({Key? key}) : super(key: key);

  @override
  State<WellcomPage> createState() => _WellcomPageState();
}

class _WellcomPageState extends State<WellcomPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Selamat Datang"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: ListView(children: [
          buildCard(
              "https://i.postimg.cc/FrrLpf4v/Whats-App-Image-2022-06-29-at-16-57-58.jpg",
              " ",
              "AMMUA",
              "MUA berkualitas, profesional, dan cepat.",
              "AMMUA merupakan MUA yang dimiliki oleh jasa perias yang bernama Amalia Iftitah. Jasa MUA ini memiliki berbagai jenis event mulai dari pertunangan, pernikahan, graduation, atau bahkan event lain yang membtuhkan jasa perias. Jasa perias ini dikenal sangat cepat dalam respon, berkualitas dalam segi make up dandekoration, serta profesional dalam bekerja."),
        ]),
      ),
    );
  }

  Card buildCard(
      String img, String spasi, String caption, String desc, String des) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.network(img),
            Text(
              spasi,
              style: TextStyle(
                fontSize: 30,
                fontStyle: FontStyle.italic,
              ),
            ),
            Text(
              caption,
              style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
            ),
            Text(
              desc,
              style: TextStyle(fontSize: 28),
              maxLines: 30,
              overflow: TextOverflow.fade,
            ),
            Text(
              des,
              style: TextStyle(fontSize: 25),
              maxLines: 30,
              overflow: TextOverflow.fade,
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(40),
                child: ElevatedButton(
                  child: Text("Booking Now !"),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => BookingPage()));
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
