import 'package:flutter/material.dart';
import 'package:whatsapp/theme.dart';

class HelpPage extends StatelessWidget {
  // const HelpPage({super.key});
  final List<String> listText = ['Item 1', 'Item 2', 'Item 3'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: whatsAppGreen,
        actions: [
          Icon(Icons.more_vert),
        ],
        title: Text("Help article"),
      ),
      body: const Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Text(
                "About communities on\nWhatsapp",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Text(
              "Communities on Whatsapp brings members\ntogether in topic-based groups.",
              style: TextStyle(fontSize: 16),
            ),
            Padding(
              padding: EdgeInsets.symmetric(vertical: 12),
              child: Text(
                "How you can use communities",
                style: TextStyle(
                    color: Color.fromRGBO(18, 140, 126, 1.0),
                    fontSize: 20,
                    fontWeight: FontWeight.w700),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
