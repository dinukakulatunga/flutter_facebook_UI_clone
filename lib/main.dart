import 'package:facebook_clone/views/friends_request_view.dart';
import 'package:facebook_clone/views/news_feed_view.dart';
import 'package:facebook_clone/views/notifications_view.dart';
import 'package:facebook_clone/views/settings_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

void main(List<String> args) {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData.dark(),
        home: FacebookClone());
  }
}

class FacebookClone extends StatefulWidget {
  const FacebookClone({Key? key}) : super(key: key);

  @override
  _FacebookCloneState createState() => _FacebookCloneState();
}

class _FacebookCloneState extends State<FacebookClone> {
  int _tabIndex = 0;
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          title: Text(
            'Facebook',
          ),
          actions: [
            CircleAvatar(
              backgroundColor: Colors.grey.withOpacity(0.3),
              radius: 18,
              child: Icon(
                Icons.search,
                color: Colors.white,
              ),
            ),
            SizedBox(
              width: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: CircleAvatar(
                backgroundColor: Colors.grey.withOpacity(0.3),
                radius: 18,
                child: Icon(
                  Icons.message,
                  color: Colors.white,
                ),
              ),
            ),
          ],
          bottom: TabBar(
              onTap: (index) {
                setState(() {
                  _tabIndex = index;
                });
              },
              indicatorColor: Colors.blue,
              tabs: [
                Tab(
                  icon: Icon(
                    _tabIndex == 0 ? Icons.home_filled : Icons.home_outlined,
                    color: _tabIndex == 0 ? Colors.blue : Colors.grey,
                  ),
                ),
                Tab(
                    icon: Icon(
                  _tabIndex == 1 ? Icons.people : Icons.people_outline,
                  color: _tabIndex == 1 ? Colors.blue : Colors.grey,
                )),
                Tab(
                    icon: Icon(
                  _tabIndex == 2
                      ? Icons.notifications
                      : Icons.notifications_outlined,
                  color: _tabIndex == 2 ? Colors.blue : Colors.grey,
                )),
                Tab(
                    icon: Icon(
                  Icons.menu_outlined,
                  color: _tabIndex == 3 ? Colors.blue : Colors.grey,
                )),
              ]),
        ),
        body: TabBarView(
          children: [
            NewsFeedPage(),
            FriendsRequestPage(),
            NotificationsPage(),
            SettingsPage(),
          ],
        ),
      ),
    );
  }
}
