import 'package:flutter/material.dart';
import 'package:whatsapp/help.dart';
import 'package:whatsapp/theme.dart';
import 'package:whatsapp/widgets/call_view.dart';
import 'package:whatsapp/widgets/chat_view.dart';
import 'package:whatsapp/widgets/status_view.dart';

class WhatsappPage extends StatefulWidget {
  const WhatsappPage({super.key});

  @override
  State<WhatsappPage> createState() => _WhatsappPageState();
}

class _WhatsappPageState extends State<WhatsappPage>
    with SingleTickerProviderStateMixin {
  List<Widget> tabs = const [
    Tab(
      icon: Icon(Icons.group),
    ),
    Tab(
      text: "Chats",
    ),
    Tab(
      text: "Updates",
    ),
    Tab(
      text: "Calls",
    )
  ];

  TabController? tabController;
  var fabIcon = Icons.message;
  @override
  void initState() {
    super.initState();
    tabController = TabController(length: tabs.length, vsync: this);
    tabController?.index = 1;
    tabController?.addListener(() {
      setState(() {
        switch (tabController?.index) {
          case 0:
            fabIcon = Icons.camera_alt;
            break;
          case 1:
            fabIcon = Icons.message;
            break;
          case 2:
            fabIcon = Icons.camera_alt;
            break;
          case 3:
            fabIcon = Icons.call;
            break;
          default:
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("UIII Whatsapp"),
        backgroundColor: whatsAppGreen,
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.camera_alt_outlined),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.search),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 5),
            child: Icon(Icons.more_vert),
          ),
        ],
        bottom: TabBar(
          controller: tabController,
          tabs: tabs,
          indicatorColor: Colors.white,
        ),
      ),
      body: TabBarView(
        controller: tabController,
        children: [
          Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset("images/Whatsapp-Communities-Logo-Vector-01.jpg"),
                Text(
                  "Stay connected with a community",
                  style: TextStyle(
                    fontWeight: FontWeight.w700,
                    fontSize: 20,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(
                    "Comunities bring members together in\ntopic-based groups, and make it easy to get admin\nannouncement. Any community you're added to will\nappear here.",
                    textAlign: TextAlign.center,
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => HelpPage())),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "See example communities >",
                        style: TextStyle(color: whatsAppGreen),
                      ),
                    ],
                  ),
                ),

              ],
            ),
          ),
          ChatView(),
          StatusView(),
          CallView(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: whatsAppLightGreen,
        child: Icon(fabIcon),
      ),
    );
  }
}
