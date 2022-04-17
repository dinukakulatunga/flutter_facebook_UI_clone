import 'package:flutter/material.dart';

class FriendsRequestPage extends StatefulWidget {
  const FriendsRequestPage({Key? key}) : super(key: key);

  @override
  State<FriendsRequestPage> createState() => _FriendsRequestPageState();
}

class _FriendsRequestPageState extends State<FriendsRequestPage> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Text(
                'Friends',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
              ),
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
          Row(
            children: [
              Container(
                child: Chip(
                    label: Text(
                  'Suggestions',
                )),
              ),
              SizedBox(
                width: 10,
              ),
              Chip(label: Text('Your Friends'))
            ],
          ),
          Divider(
            thickness: 1.0,
          ),
          Row(
            children: [
              Text('Friend Requests',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
              SizedBox(
                width: 10,
              ),
              Text(
                '70',
                style: TextStyle(color: Colors.red, fontSize: 18),
              ),
              Spacer(),
              Text(
                'See All',
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_1.jpg', 'Lucia Abbott'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_2.jpg', 'Sanai Trujillo'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_3.jpg', 'Fiona Maynard'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_4.jpg', 'Luca Mclean'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_5.jpg', 'Mira Matthews'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_6.jpg', 'Jennifer Nicholson'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_7.jpg', 'Landin Charles'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_8.jpg', 'Lexi Collins'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_1.jpg', 'Peyton Harrington'),
          SizedBox(
            height: 10,
          ),
          friendRequest('assets/people/people_2.jpg', 'Emerson Pope'),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}

Widget friendRequest(imageUrl, name) {
  return Row(
    children: [
      CircleAvatar(radius: 40, backgroundImage: AssetImage(imageUrl)),
      SizedBox(
        width: 10,
      ),
      Expanded(
        child: Column(
          children: [
            Row(
              children: [
                Text(name),
                Spacer(),
                Text(
                  '23w',
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                  child:
                      ElevatedButton(onPressed: () {}, child: Text('Confirm')),
                ),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey.withOpacity(0.3)),
                      onPressed: () {},
                      child: Text('Delete')),
                )
              ],
            )
          ],
        ),
      )
    ],
  );
}
