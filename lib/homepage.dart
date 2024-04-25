import 'package:flutter/material.dart';
import 'package:whattsapp_ui/widgets/callswidget.dart';
import 'package:whattsapp_ui/widgets/chatwidget.dart';

import 'package:whattsapp_ui/widgets/statuswidget.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 1,
      length: 5,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(75),
          child: Padding(
            padding: const EdgeInsets.only(top: 15),
            child: AppBar(
              title: const Text(
                'WhatsApp',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              actions: [
                const Padding(
                  padding: EdgeInsets.only(top: 10, right: 15),
                  child: Icon(Icons.search),
                ),
                PopupMenuButton(
                  onSelected: (value) {
                    if (value == 5) {
                      Navigator.pushNamed(context, "settings");
                    }
                  },
                  color: Colors.white,
                  iconSize: 24,
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  itemBuilder: (context) => [
                    const PopupMenuItem(
                      value: 1,
                      child: Text(
                        'New group',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 2,
                      child: Text(
                        'New broadcast',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 3,
                      child: Text(
                        'Linked devices',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 4,
                      child: Text(
                        'Starred messages',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                    const PopupMenuItem(
                      value: 5,
                      child: Text(
                        'Settings',
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            Container(
              color: const Color(0xff075e55),
              child: TabBar(
                isScrollable: true,
                indicatorColor: Colors.white,
                labelStyle:
                    const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                tabs: [
                  //tab1
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 24,
                    child: const Tab(
                      icon: Icon(
                        Icons.camera_alt,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  //tab2
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 90,
                    child: Tab(
                      child: Row(
                        children: [
                          const Text('CHATS'),
                          const SizedBox(width: 8),
                          Container(
                            alignment: Alignment.center,
                            height: 22,
                            width: 22,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              '12',
                              style: TextStyle(
                                  color: Color(0xff075e55), fontSize: 13),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 85,
                    child: const Text(
                      'STATUS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 85,
                    child: const Text(
                      'CALLS',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              flex: 1,
              child: TabBarView(
                children: [
                  //tab1
                  Container(
                    color: Colors.black,
                  ),
                  //tab2
                  const ChatWidget(),

                  //tab3
                  const StatusWidget(),
                  //tab4
                  const CallsWidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
