import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Message> messages = [
    Message('netflix.jpeg', 'Netflix', 'A new device is using your account',
        'Dear Abaho, Please review who is dhhdbdhdb', '15:45'),
    Message(
        'aws.png',
        'AWS Marketplace',
        'Account Information Update',
        'Greetings, We wanted to bring to your attention an important update regarding your AWS ',
        '09:32'),
    Message('facebook.png', 'Facebook', 'A new device is using your account',
        'Dear Abaho, Please review who is dhhdbdhdb', 'Jan 24'),
    Message('4.jpg', 'Evelyne', 'A new device is using your account',
        'Dear Abaho, Please review who is dhhdbdhdb', 'Jan 24'),
    Message('instagram.avif', 'Instagram', 'A new device is using your account',
        'Dear Abaho, Please review who is dhhdbdhdb', 'Jan 24'),
    Message('linkedin.webp', 'Linked In', 'A new device is using your account',
        'Dear Abaho, Please review who is dhhdbdhdb', 'Jan 24'),
    Message('7.jpg', 'Amber', 'A new device is using your account',
        'Dear Abaho, Please review who is dhhdbdhdb', 'Jan 24'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              label: '',
              icon: Container(
                decoration: BoxDecoration(
                    color: Color(0XFF004a77),
                    borderRadius: BorderRadius.circular(100)),
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20),
                  child: Icon(
                    Icons.mail,
                    color: Colors.white70,
                  ),
                ),
              )),
          BottomNavigationBarItem(
              label: '',
              icon: Icon(
                Icons.videocam_outlined,
                color: Colors.white70,
                size: 35,
              )),
        ],
        backgroundColor: Color(0XFF1e1f21),
      ),
      floatingActionButton: ElevatedButton.icon(
        onPressed: () {},
        icon: Icon(
          Icons.edit_outlined,
          color: Colors.white70,
        ),
        label: Text(
          'Compose',
          style: TextStyle(fontSize: 18, color: Colors.white70),
        ),
        style: ButtonStyle(
            fixedSize: MaterialStateProperty.all(Size(140, 55)),
            backgroundColor: MaterialStatePropertyAll(Color(0XFF004a77)),
            shape: MaterialStatePropertyAll(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15)))),
      ),
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                  left: 5.0, right: 5, top: 40, bottom: 20),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color: const Color(0XFF292a2c),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                            vertical: 2.0, horizontal: 10),
                        child: Row(
                          children: [
                            IconButton(
                              iconSize: 40,
                              onPressed: () {},
                              icon: const Icon(
                                Icons.menu,
                                color: Colors.white70,
                                size: 30,
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                style: const TextStyle(
                                    color: Colors.white70, fontSize: 20),
                                decoration: const InputDecoration(
                                  hintText: 'Search in mail',
                                  hintStyle: TextStyle(
                                      color: Colors.white70, fontSize: 20),
                                  focusedBorder: InputBorder.none,
                                ),
                              ),
                            ),
                            GestureDetector(
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: Image.asset(
                                  'assets/1.jpg',
                                  height: 40,
                                  width: 40,
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 10.0),
              child: Row(
                children: const [
                  Text(
                    'Inbox',
                    style: TextStyle(
                      color: Colors.white70,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
            ),
            ...messages.map((message) => Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(100),
                        child: Image.asset(
                          "assets/${message.image}",
                          width: 40,
                          height: 40,
                          fit: BoxFit.cover,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 20.0),
                        child: Container(
                          width: MediaQuery.of(context).size.width * 0.68,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/arrow.png',
                                  ),
                                  Text(
                                    message.sender,
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white70),
                                  ),
                                ],
                              ),
                              SizedBox(height: 3),
                              Text(
                                message.subject,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white70),
                              ),
                              SizedBox(height: 3),
                              Text(
                                message.body,
                                overflow: TextOverflow.ellipsis,
                                style: TextStyle(
                                    fontSize: 17, color: Colors.white70),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            message.date,
                            style: TextStyle(
                              color: Colors.white70,
                            ),
                          ),
                          SizedBox(height: 25),
                          GestureDetector(
                            child: Icon(
                              Icons.star_border_outlined,
                              color: Colors.white70,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ))
          ],
        ),
      ),
    );
  }
}

class Message {
  final String image;
  final String sender;
  final String subject;
  final String body;
  final String date;

  Message(this.image, this.sender, this.subject, this.body, this.date);
}
