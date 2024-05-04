import 'package:flutter/material.dart';

class ChatPage extends StatelessWidget {
  const ChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(65),
          child: AppBar(
            elevation: 0,
            leading: Padding(
              padding: const EdgeInsets.only(top: 10, left: 5),
              child: InkWell(
                onTap: () {},
                child: const Icon(
                  Icons.arrow_back,
                  size: 25,
                ),
              ),
            ),
            title: Padding(
              padding: const EdgeInsets.only(top: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(40),
                    child: Image.asset(
                      'assets/images/profile1.jpg',
                      height: 45,
                      width: 45,
                      fit: BoxFit.cover,
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Andrew",
                          style: TextStyle(fontSize: 19, color: Colors.white),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text(
                          'online',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 14,
                              fontWeight: FontWeight.w500),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            actions: const [
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Icon(
                  Icons.video_call,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 10),
                child: Icon(Icons.call),
              ),
              Padding(
                padding: EdgeInsets.only(top: 10, right: 5),
                child: Icon(Icons.more_vert),
              ),
            ],
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 300,
                height: 300,
                decoration: BoxDecoration(
                  color: const Color(0xfffff3c2),
                  borderRadius: BorderRadius.circular(5),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.5), blurRadius: 8),
                  ],
                ),
                child: const Center(
                  child: Text(
                      'Messages and calls are end to end encrypted ,No one outside of this chat can read orlisten,tap to learn more'),
                ),
              ),
            ],
          ),
        ));
  }
}
