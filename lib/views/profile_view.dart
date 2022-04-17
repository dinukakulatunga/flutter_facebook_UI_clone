import 'package:flutter/material.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        padding: EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                    constraints:
                        BoxConstraints(maxHeight: 40.0, maxWidth: 40.0),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    icon: Icon(Icons.arrow_back)),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(5.0),
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Row(
                      children: [Icon(Icons.search), Text('Search')],
                    ),
                  ),
                ),
              ],
            ),
            Divider(
              thickness: 1.0,
            ),
            Container(
              height: 200.0,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      fit: BoxFit.fitWidth,
                      image: AssetImage('assets/profile_picture.jpg')),
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10))),
              child: LayoutBuilder(builder: (context, constraint) {
                return Stack(
                  clipBehavior: Clip.none,
                  children: [
                    Positioned(
                      top: constraint.maxHeight - 55.0,
                      left: constraint.maxWidth - 55.0,
                      child: Align(
                        alignment: Alignment.bottomRight,
                        child: Container(
                          padding: EdgeInsets.all(10.0),
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            shape: BoxShape.circle,
                          ),
                          child: Icon(Icons.camera_alt),
                        ),
                      ),
                    ),
                    Positioned(
                        top: constraint.maxHeight / 2,
                        left: (constraint.maxWidth / 2) - 105,
                        child: CircleAvatar(
                          radius: 105,
                          backgroundColor: Colors.grey[50],
                          child: CircleAvatar(
                            radius: 100,
                            backgroundImage:
                                AssetImage('assets/profile_picture.jpg'),
                            child: Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Positioned(
                                  top: 150.0,
                                  left: 150.0,
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      padding: EdgeInsets.all(10.0),
                                      decoration: BoxDecoration(
                                        color: Colors.grey[200],
                                        shape: BoxShape.circle,
                                      ),
                                      child: Icon(
                                        Icons.camera_alt,
                                        color: Colors.black,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )),
                  ],
                );
              }),
            ),
            SizedBox(
              height: 125,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Pamela Guerrero',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 25.0),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Align(
              alignment: Alignment.center,
              child: Text(
                'Hii Everyone',
                style: TextStyle(color: Colors.grey),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                Expanded(
                    child: ElevatedButton(
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.add_circle),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('Add to Story')
                          ],
                        ))),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(primary: Colors.grey),
                        onPressed: () {},
                        child: Row(
                          children: [
                            Icon(Icons.edit),
                            SizedBox(
                              width: 10.0,
                            ),
                            Text('Edit Profile')
                          ],
                        ))),
                SizedBox(
                  width: 10.0,
                ),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(primary: Colors.grey),
                    onPressed: () {},
                    child: Icon(Icons.more_horiz)),
              ],
            ),
            Divider(
              thickness: 1.0,
            ),
            Wrap(
              direction: Axis.vertical,
              spacing: 10.0,
              children: [
                Text('Works at Maya Creations'),
                Text('Lives in Colombo'),
                Text('From Nugegoda'),
                Text('Single'),
                Text('dinukakulatunga'),
                Text('kule_aiya'),
                Text('Dinuka Kulathunga'),
                Row(
                  children: [
                    Icon(Icons.more_horiz),
                    SizedBox(
                      width: 10.0,
                    ),
                    Text('See your About info'),
                  ],
                )
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: Text('Edit Public Details')),
            ),
            Divider(
              thickness: 1.0,
            ),
            Row(
              children: [
                Text(
                  'Friends',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Text(
                  'Find Friends',
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ),
            Text(
              '1,063 friends',
              style: TextStyle(color: Colors.grey),
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      height: screenWidth / 3.0 - 12.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/people/people_1.jpg')),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      child: Text(
                        'Dinuka Kulathunga',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      height: screenWidth / 3.0 - 12.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/people/people_2.jpg')),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      child: Text(
                        'Dinuka Kulathunga',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      height: screenWidth / 3.0 - 12.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/people/people_3.jpg')),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      child: Text(
                        'Dinuka Kulathunga asd sad ',
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      height: screenWidth / 3.0 - 12.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/people/people_4.jpg')),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      child: Text(
                        'Dinuka Kulathunga',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      height: screenWidth / 3.0 - 12.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/people/people_5.jpg')),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      child: Text(
                        'Dinuka Kulathunga',
                      ),
                    )
                  ],
                ),
                Column(
                  children: [
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      height: screenWidth / 3.0 - 12.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/people/people_6.jpg')),
                        borderRadius: BorderRadius.circular(5.0),
                        color: Colors.red,
                      ),
                    ),
                    SizedBox(
                      height: 5.0,
                    ),
                    Container(
                      width: screenWidth / 3.0 - 12.0,
                      child: Text(
                        'Dinuka Kulathunga',
                      ),
                    )
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {}, child: Text('See All Friends')),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 10,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              children: [
                Text(
                  'Post',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Spacer(),
                Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5.0)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                      child: Icon(Icons.tune),
                    ),
                    SizedBox(
                      width: 10.0,
                    ),
                    Container(
                      decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(5.0)),
                      padding:
                          EdgeInsets.symmetric(horizontal: 15.0, vertical: 8.0),
                      child: Icon(Icons.settings),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: 10.0,
            ),
            Row(
              children: [
                CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/profile_picture.jpg')),
                SizedBox(
                  width: 10.0,
                ),
                Text("What's on your mind?",
                    style: TextStyle(color: Colors.grey)),
              ],
            ),
            Divider(
              thickness: 1.0,
            ),
            IntrinsicHeight(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.videocam,
                            color: Colors.red,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Live'),
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.collections,
                            color: Colors.green,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Photo'),
                        ],
                      ),
                    ),
                  ),
                  VerticalDivider(
                    thickness: 1.0,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.flag,
                            color: Colors.blue,
                          ),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Life Event'),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 5,
            ),
            Container(
              height: 10,
              color: Colors.grey[300],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 50.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Chip(avatar: Icon(Icons.photo_sharp), label: Text('Photos')),
                  SizedBox(
                    width: 10.0,
                  ),
                  Chip(
                      avatar: Icon(Icons.emoji_emotions),
                      label: Text('Avatars')),
                  SizedBox(
                    width: 10.0,
                  ),
                  Chip(
                      avatar: Icon(Icons.emoji_events_rounded),
                      label: Text('Life events')),
                  SizedBox(
                    width: 10.0,
                  ),
                  Chip(
                      avatar: Icon(Icons.cloud_outlined),
                      label: Text('Did you know')),
                  SizedBox(
                    width: 10.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
