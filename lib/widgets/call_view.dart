import 'package:flutter/material.dart';
import 'package:whatsapp/model/status.dart';
import 'package:whatsapp/theme.dart';

class CallView extends StatelessWidget {
  const CallView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: statusList.length,
      itemBuilder: (context, index) {
        final status = statusList[index];
        return ListTile(
          leading: const Icon(
            Icons.account_circle,
            size: 50,
            color: Colors.black,
          ),
          title: Text(
            status.name,
            style: customTextStyle,
          ),
          subtitle: Text(
            status.statusDate,
            style: const TextStyle(color: Colors.black45),
          ),
          trailing: Icon(
            Icons.call,
            color: whatsAppLightGreen,
          ),
        );
      },
    );
  }
}
