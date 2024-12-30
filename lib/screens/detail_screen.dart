import 'package:flutter/material.dart';
import 'package:flutter_openui/screens/home_screen.dart';
import 'package:flutter_svg/svg.dart';

class DetailScreen extends StatelessWidget {
  final CardItem item;

  const DetailScreen({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(automaticallyImplyLeading: true, backgroundColor: Colors.white),
        backgroundColor: Colors.white,
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 38.0),
              child: Center(
                child: SvgPicture.asset(
                  width: 180,
                  height: 180,
                  "assets/images/${item.title.split(' ').join("").toLowerCase()}.svg",
                ),
              ),
            ),
            SizedBox(height: 24),
            Text(
              item.title,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 24),
            ),
            SizedBox(height: 10),
            Text(
              item.subtitle,
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 18, color: Colors.grey),
            ),
            SizedBox(height: 6),
            Text(
              "(${item.date})",
              style: TextStyle(fontWeight: FontWeight.w700, fontSize: 12, color: Colors.grey),
            ),
          ],
        ),
      ),
    );
  }
}
