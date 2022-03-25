import 'package:facebook_clone/story_page_view.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: FacebookClone());
  }
}

class FacebookClone extends StatefulWidget {
  const FacebookClone({Key? key}) : super(key: key);

  @override
  _FacebookCloneState createState() => _FacebookCloneState();
}

int _tabIndex = 0;

bool isLiked = false;
int likeCount = 286;

class _FacebookCloneState extends State<FacebookClone> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          title: Text(
            'Facebook',
            style: TextStyle(color: Colors.blue),
          ),
          actions: [
            Container(
              padding: EdgeInsets.all(8),
              decoration: BoxDecoration(
                  shape: BoxShape.circle, color: Colors.grey[200]),
              child: Icon(
                Icons.search,
                color: Colors.black,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: Container(
                padding: EdgeInsets.all(8),
                decoration: BoxDecoration(
                    shape: BoxShape.circle, color: Colors.grey[200]),
                child: Icon(
                  Icons.maps_ugc,
                  color: Colors.black,
                ),
              ),
            ),
          ],
          bottom: TabBar(
              onTap: (int index) {
                setState(() => _tabIndex = index);
              },
              labelColor: Colors.blue,
              tabs: [
                Tab(
                  icon: (_tabIndex != 0)
                      ? Icon(
                          Icons.home_outlined,
                          color: Colors.black,
                        )
                      : Icon(Icons.home, color: Colors.blue),
                ),
                Tab(
                  icon: (_tabIndex != 1)
                      ? Icon(
                          Icons.people_outline,
                          color: Colors.black,
                        )
                      : Icon(Icons.people, color: Colors.blue),
                ),
                Tab(
                  icon: (_tabIndex != 2)
                      ? Icon(
                          Icons.notifications_outlined,
                          color: Colors.black,
                        )
                      : Icon(Icons.notifications, color: Colors.blue),
                ),
                Tab(
                  icon: (_tabIndex != 3)
                      ? Icon(
                          Icons.menu_outlined,
                          color: Colors.black,
                        )
                      : Icon(Icons.menu, color: Colors.blue),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            SingleChildScrollView(
              // padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        InkResponse(
                          radius: 25,
                          onTap: () {},
                          child: CircleAvatar(
                              radius: 25,
                              backgroundImage:
                                  AssetImage('assets/profile_picture.jpg')),
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        InkWell(
                          borderRadius: BorderRadius.circular(20),
                          onTap: () {},
                          child: Container(
                            padding: EdgeInsets.only(
                                top: 15, bottom: 15, left: 15, right: 180),
                            decoration: BoxDecoration(
                              // color: Colors.grey[350],
                              border: Border.all(color: Colors.grey),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Text(
                              "What's on your mind?",
                            ),
                          ),
                        )
                      ],
                    ),
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
                                  Icons.video_call,
                                  color: Colors.purple,
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Room'),
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
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      height: 200,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: [
                          Stack(
                            children: [
                              Container(
                                height: 200,
                                width: 110,
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text(
                                        'Create Story',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      SizedBox(
                                        height: 10,
                                      )
                                    ]),
                              ),
                              Container(
                                height: 130,
                                width: 110,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/profile_picture.jpg'),
                                        fit: BoxFit.fitWidth),
                                    borderRadius: BorderRadius.only(
                                        topLeft: const Radius.circular(15),
                                        topRight: const Radius.circular(15))),
                              ),
                              Positioned(
                                  top: 110,
                                  left: 35,
                                  child: CircleAvatar(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.add_circle,
                                      size: 40,
                                      color: Colors.blue,
                                    ),
                                  )),
                            ],
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoryPage(
                                            url:
                                                'https://images.unsplash.com/photo-1526512340740-9217d0159da9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmVydGljYWx8ZW58MHx8MHx8&w=1000&q=80',
                                          )));
                            },
                            child: Stack(
                              children: [
                                story('assets/story/story_1.jpg'),
                                avatarInsideStory('assets/people/people_1.jpg'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoryPage(
                                            url:
                                                'https://images.unsplash.com/photo-1544376798-89aa6b82c6cd?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmVydGljYWwlMjBsYW5kc2NhcGV8ZW58MHx8MHx8&w=1000&q=80',
                                          )));
                            },
                            child: Stack(
                              children: [
                                story('assets/story/story_2.jpg'),
                                avatarInsideStory('assets/people/people_2.jpg'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoryPage(
                                            url:
                                                'https://thumbs.dreamstime.com/b/vertical-shot-road-magnificent-mountains-under-blue-sky-captured-california-163571053.jpg',
                                          )));
                            },
                            child: Stack(
                              children: [
                                story('assets/story/story_3.jpg'),
                                avatarInsideStory('assets/people/people_3.jpg'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoryPage(
                                            url:
                                                'https://images.pexels.com/photos/433989/pexels-photo-433989.jpeg?auto=compress&cs=tinysrgb&dpr=1&w=500',
                                          )));
                            },
                            child: Stack(
                              children: [
                                story('assets/story/story_4.jpeg'),
                                avatarInsideStory('assets/people/people_4.jpg'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoryPage(
                                            url:
                                                'https://images.unsplash.com/photo-1526512340740-9217d0159da9?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MXx8dmVydGljYWx8ZW58MHx8MHx8&w=1000&q=80',
                                          )));
                            },
                            child: Stack(
                              children: [
                                story('assets/story/story_5.jpg'),
                                avatarInsideStory('assets/people/people_5.jpg'),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          InkWell(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => StoryPage(
                                            url:
                                                'https://images.unsplash.com/photo-1505521377774-103a8cc2f735?ixlib=rb-1.2.1&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=687&q=80',
                                          )));
                            },
                            child: Stack(
                              children: [
                                story('assets/story/story_1.jpg'),
                                avatarInsideStory('assets/people/people_6.jpg'),
                              ],
                            ),
                          )
                        ],
                      )),
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
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            CircleAvatar(
                                backgroundColor: Colors.blue,
                                radius: 22,
                                child: CircleAvatar(
                                    backgroundImage: AssetImage(
                                        'assets/people/people_8.jpg'))),
                            Positioned(
                              top: 30,
                              left: 35,
                              child: Container(
                                height: 10,
                                width: 10,
                                decoration: BoxDecoration(
                                    color: Colors.green,
                                    shape: BoxShape.circle),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Sophie Parker',
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  '1 h',
                                  style: TextStyle(color: Colors.grey),
                                ),
                                SizedBox(
                                  width: 5,
                                ),
                                Icon(
                                  Icons.public,
                                  color: Colors.grey[600],
                                  size: 14,
                                )
                              ],
                            )
                          ],
                        ),
                        Spacer(),
                        Icon(Icons.more_horiz),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(Icons.close_outlined)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text('What a great day!'),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 400,
                    decoration: BoxDecoration(
                        color: Colors.red,
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage('assets/post_image_1.jpg'))),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      children: [
                        Stack(
                          clipBehavior: Clip.none,
                          children: [
                            Positioned(
                              left: 16,
                              child: Container(
                                height: 18,
                                width: 18,
                                decoration: BoxDecoration(
                                    shape: BoxShape.circle, color: Colors.blue),
                                child: Center(
                                  child: Icon(
                                    Icons.thumb_up_sharp,
                                    color: Colors.white,
                                    size: 12,
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              height: 18,
                              width: 18,
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle, color: Colors.red),
                              child: Center(
                                child: Icon(
                                  Icons.favorite_outlined,
                                  color: Colors.white,
                                  size: 12,
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          width: 20,
                        ),
                        Text('Asa Graham and $likeCount others'),
                        Spacer(),
                        Text('46 comments'),
                      ],
                    ),
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      InkWell(
                        onTap: () {
                          setState(() {
                            isLiked = !isLiked;
                            (isLiked) ? likeCount++ : likeCount--;
                          });
                        },
                        child: Row(
                          children: [
                            Icon(
                              (isLiked)
                                  ? Icons.thumb_up_sharp
                                  : Icons.thumb_up_outlined,
                              color: (isLiked) ? Colors.blue : null,
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text('Like',
                                style: TextStyle(
                                    color: (isLiked)
                                        ? Colors.blue
                                        : Colors.black)),
                          ],
                        ),
                      ),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.comment),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Comment'),
                        ],
                      ),
                      Row(
                        children: [
                          FaIcon(FontAwesomeIcons.shareSquare),
                          SizedBox(
                            width: 5,
                          ),
                          Text('Share')
                        ],
                      )
                    ],
                  ),
                  Divider(
                    thickness: 1.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/people/people_7.jpg')),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: EdgeInsets.all(8),
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius: BorderRadius.circular(12)),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Sadie Barnes',
                                    style:
                                        TextStyle(fontWeight: FontWeight.bold),
                                  ),
                                  SizedBox(
                                    height: 5,
                                  ),
                                  Text(
                                    'Woww! what a great capture.',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Text(
                                  'Like',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[800]),
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  'Reply',
                                  style: TextStyle(
                                      fontWeight: FontWeight.w500,
                                      color: Colors.grey[800]),
                                ),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                            backgroundImage:
                                AssetImage('assets/profile_picture.jpg')),
                        SizedBox(
                          width: 5,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                                width: MediaQuery.of(context).size.width - 65,
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    color: Colors.grey[200],
                                    borderRadius: BorderRadius.circular(12)),
                                child: Row(
                                  children: [
                                    Text('Write a comment...'),
                                    Spacer(),
                                    Icon(Icons.camera_alt_outlined),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    FaIcon(
                                      FontAwesomeIcons.smile,
                                      size: 20,
                                    )
                                  ],
                                )),
                            SizedBox(
                              height: 5,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Container(
                    height: 10,
                    color: Colors.grey[300],
                  ),
                  SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
            SingleChildScrollView(
              padding: const EdgeInsets.fromLTRB(20, 10, 10, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Friends',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(5),
                        child: Icon(Icons.search),
                        decoration: BoxDecoration(
                            color: Colors.grey[350], shape: BoxShape.circle),
                      )
                    ],
                  ),
                  Row(
                    children: [
                      Chip(label: Text('Suggestions')),
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
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 18)),
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
                  for (var i = 0; i < 10; i++) ...[
                    Row(
                      children: [
                        CircleAvatar(
                            radius: 40,
                            backgroundImage:
                                AssetImage('assets/profile_picture.jpg')),
                        SizedBox(
                          width: 10,
                        ),
                        Expanded(
                          child: Column(
                            children: [
                              Row(
                                children: [
                                  Text('Noroshani Sandamali'),
                                  Spacer(),
                                  Text('23w'),
                                ],
                              ),
                              Row(
                                children: [
                                  Expanded(
                                    child: ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Confirm')),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Expanded(
                                    child: ElevatedButton(
                                        style: ElevatedButton.styleFrom(
                                            primary: Colors.grey[350]),
                                        onPressed: () {},
                                        child: Text('Delete')),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    )
                  ]
                ],
              ),
            ),
            Icon(Icons.ac_unit),
            Icon(Icons.ac_unit),
          ],
        ),
      ),
    );
  }
}

// story
Widget story(assetImage) {
  return Container(
    height: 200,
    width: 110,
    decoration: BoxDecoration(
        image: DecorationImage(image: AssetImage(assetImage), fit: BoxFit.fill),
        borderRadius: BorderRadius.circular(15)),
  );
}

// avatar inside a story
Widget avatarInsideStory(assetImage) {
  return Positioned(
    top: 12,
    left: 12,
    child: CircleAvatar(
      backgroundColor: Colors.blue,
      radius: 22,
      child: CircleAvatar(
        backgroundImage: AssetImage(assetImage),
      ),
    ),
  );
}
