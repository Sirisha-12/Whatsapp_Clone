import 'package:flutter/material.dart';

class ChatWidget extends StatelessWidget {
  const ChatWidget({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> names = [
      'p1',
      'Andrew ',
      'Cameron',
      'Singh',
      "Fazia",
      'Kay',
      'John',
      'Sophia',
      'Shifra',
      'Mercy',
      'Maria'
    ];
    List<String> messages = [
      "hii!",
      "Hii!",
      "sent a message",
      'sent you some photos',
      'how are you',
      '12345 joined using the link',
      'Hello',
      'how r u',
      'Andrew:This message was deleted',
      'Photo',
      'hii! How are you'
    ];
    return SingleChildScrollView(
      child: Column(
        children: [
          for (int i = 1; i < 11; i++)
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, "chatpage");
              },
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.only(top: 10),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset(
                          'assets/images/profile$i.jpg',
                          height: 55,
                          width: 55,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10, top: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            names[i].toString(),
                            style: const TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            messages[i].toString(),
                            style: const TextStyle(
                                fontSize: 14, fontWeight: FontWeight.w500),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Column(
                      children: [
                        const Text(
                          '10:10',
                          style: TextStyle(
                              fontSize: 12,
                              color: Color(0xff0fce5e),
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 6,
                        ),
                        Container(
                          alignment: Alignment.center,
                          height: 27,
                          width: 27,
                          decoration: BoxDecoration(
                            color: const Color(0xff0fce5e),
                            borderRadius: BorderRadius.circular(18),
                          ),
                          child: const Text(
                            '2',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.white),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
        ],
      ),
    );
  }
}
