import 'package:flutter/material.dart';

class NotificationsPage extends StatefulWidget {
  const NotificationsPage({Key? key}) : super(key: key);

  @override
  State<NotificationsPage> createState() => _NotificationsPageState();
}

class _NotificationsPageState extends State<NotificationsPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Row(
              children: [
                Text('Notifications',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.search),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      shape: BoxShape.circle),
                )
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 20, 20, 0),
            child: Text(
              'New',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
              onTap: () {},
              horizontalTitleGap: 15.0,
              leading: Stack(clipBehavior: Clip.none, children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/people/people_1.jpg')),
                Positioned(
                  top: 28.0,
                  left: 38.0,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.greenAccent[400],
                    child: Icon(
                      Icons.chat_bubble,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
              title: RichText(
                text: TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text: 'Maddison Lutz ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Commented on your post')
                    ]),
              ),
              subtitle: Text('2 hours ago'),
              trailing: Icon(
                Icons.more_horiz,
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
              onTap: () {},
              horizontalTitleGap: 15.0,
              leading: Stack(clipBehavior: Clip.none, children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/people/people_2.jpg')),
                Positioned(
                  top: 28.0,
                  left: 38.0,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.flag,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
              title: RichText(
                text: TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text: 'Rihanna Selena ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'invited you to like '),
                      TextSpan(
                          text: 'Decos.lk.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
              ),
              subtitle: Text('4 hours ago'),
              trailing: Icon(
                Icons.more_horiz,
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
              onTap: () {},
              horizontalTitleGap: 15.0,
              leading: Stack(clipBehavior: Clip.none, children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/people/people_3.jpg')),
                Positioned(
                  top: 28.0,
                  left: 38.0,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.groups,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
              title: RichText(
                text: TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text: 'Josph Gordan ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'added a photo in '),
                      TextSpan(
                          text: 'Flowers.lk',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
              ),
              subtitle: Text('5 hours ago'),
              trailing: Icon(
                Icons.more_horiz,
              )),
          SizedBox(
            height: 10.0,
          ),
          ListTile(
              onTap: () {},
              horizontalTitleGap: 15.0,
              leading: Stack(clipBehavior: Clip.none, children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/people/people_4.jpg')),
                Positioned(
                  top: 28.0,
                  left: 38.0,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.greenAccent[400],
                    child: Icon(
                      Icons.chat_bubble,
                      size: 15,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
              title: RichText(
                text: TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text: 'Maddison Lutz ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'Commented on your post')
                    ]),
              ),
              subtitle: Text('2 hours ago'),
              trailing: Icon(
                Icons.more_horiz,
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
              onTap: () {},
              horizontalTitleGap: 15.0,
              leading: Stack(clipBehavior: Clip.none, children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/people/people_5.jpg')),
                Positioned(
                  top: 28.0,
                  left: 38.0,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.orange,
                    child: Icon(
                      Icons.flag,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
              title: RichText(
                text: TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text: 'Rihanna Selena ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'invited you to like '),
                      TextSpan(
                          text: 'Decos.lk.',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
              ),
              subtitle: Text('4 hours ago'),
              trailing: Icon(
                Icons.more_horiz,
              )),
          SizedBox(
            height: 10,
          ),
          ListTile(
              onTap: () {},
              horizontalTitleGap: 15.0,
              leading: Stack(clipBehavior: Clip.none, children: [
                CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage('assets/people/people_6.jpg')),
                Positioned(
                  top: 28.0,
                  left: 38.0,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Colors.blue,
                    child: Icon(
                      Icons.groups,
                      size: 18,
                      color: Colors.white,
                    ),
                  ),
                )
              ]),
              title: RichText(
                text: TextSpan(
                    style: new TextStyle(
                      fontSize: 14.0,
                      color: Colors.white,
                    ),
                    children: [
                      TextSpan(
                          text: 'Josph Gordan ',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                      TextSpan(text: 'added a photo in '),
                      TextSpan(
                          text: 'Flowers.lk',
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ]),
              ),
              subtitle: Text('5 hours ago'),
              trailing: Icon(
                Icons.more_horiz,
              )),
        ],
      ),
    );
  }
}
