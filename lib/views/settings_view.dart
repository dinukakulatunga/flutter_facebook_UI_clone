import 'package:facebook_clone/views/profile_view.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({Key? key}) : super(key: key);

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
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
                Text(
                  'Menu',
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
                Spacer(),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.settings),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      shape: BoxShape.circle),
                ),
                SizedBox(
                  width: 20,
                ),
                Container(
                  padding: EdgeInsets.all(5),
                  child: Icon(Icons.search),
                  decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.3),
                      shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          ListTile(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => ProfilePage()));
            },
            horizontalTitleGap: 8,
            leading: CircleAvatar(
                radius: 30,
                backgroundImage: AssetImage('assets/profile_picture.jpg')),
            title: Text('Pamela Guerrero',
                style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('see your profile'),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Divider(
                  thickness: 1.0,
                ),
                Text('Your Shortcuts',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 98,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [
                      shortcutListItem('assets/pages/9GAG.png', '9GAG'),
                      SizedBox(
                        width: 20,
                      ),
                      shortcutListItem(
                          'assets/pages/Ariana Grande.jpg', 'Ariana Grande'),
                      SizedBox(
                        width: 20,
                      ),
                      shortcutListItem('assets/pages/LADbible.jpg', 'LADbible'),
                      SizedBox(
                        width: 20,
                      ),
                      shortcutListItem('assets/pages/Netflix.png', 'Netflix'),
                      SizedBox(
                        width: 20,
                      ),
                      shortcutListItem(
                          'assets/pages/burgerKing.png', 'The Burger king'),
                      SizedBox(
                        width: 20,
                      ),
                      shortcutListItem('assets/pages/meta.png', 'Meta'),
                    ],
                  ),
                ),
                Text('All Shortcuts',
                    style: TextStyle(fontWeight: FontWeight.bold)),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    allShortcutCard(Icons.flag, 'Pages'),
                    allShortcutCard(Icons.bookmark, 'Saved'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    allShortcutCard(Icons.people_alt_rounded, 'Friends'),
                    allShortcutCard(Icons.groups, 'Groups'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    allShortcutCard(Icons.shopping_cart, 'Marketplace'),
                    allShortcutCard(Icons.live_tv_rounded, 'Videos on watch'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    allShortcutCard(Icons.access_time, 'Memories'),
                    allShortcutCard(Icons.event, 'Events'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    allShortcutCard(Icons.gamepad, 'Gaming'),
                    allShortcutCard(Icons.person_add_alt, 'Near by Friends'),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  width: double.infinity,
                  child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Colors.grey.withOpacity(0.3)),
                      onPressed: () {},
                      child: Text(
                        'See more',
                      )),
                ),
              ],
            ),
          ),
          Divider(
            thickness: 1.0,
          ),
          ListTile(
              contentPadding: EdgeInsets.only(right: 16, left: 20),
              leading: Icon(FontAwesomeIcons.handshake,
                  size: 25, color: Colors.grey),
              title: Text(
                'Community resources',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.expand_more)),
          ListTile(
              contentPadding: EdgeInsets.only(right: 16, left: 20),
              leading: Icon(
                Icons.help_outline,
                color: Colors.grey,
                size: 30,
              ),
              title: Text(
                'Help & support',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.expand_more)),
          ListTile(
              contentPadding: EdgeInsets.only(right: 16, left: 20),
              leading: Icon(Icons.settings, color: Colors.grey, size: 30),
              title: Text(
                'Settings and privacy',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              trailing: Icon(Icons.expand_more)),
          SizedBox(
            height: 10,
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            width: double.infinity,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    primary: Colors.grey.withOpacity(0.3)),
                onPressed: () {},
                child: Text(
                  'Log Out',
                )),
          ),
          SizedBox(
            height: 10,
          )
        ],
      ),
    );
  }
}

// settings page all shortcut card
Widget allShortcutCard(icon, title) {
  return Expanded(
    child: Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: InkWell(
        borderRadius: BorderRadius.circular(10),
        splashColor: Colors.blue.withAlpha(30),
        onTap: () {},
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Icon(
                icon,
                color: Colors.blue,
              ),
              SizedBox(
                height: 5,
              ),
              Text(title, style: TextStyle(fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    ),
  );
}

Widget shortcutListItem(image, text) {
  return Column(
    children: [
      Stack(
        clipBehavior: Clip.none,
        children: [
          Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
              color: Colors.red,
              borderRadius: BorderRadius.circular(5),
            ),
            child: Stack(
              clipBehavior: Clip.none,
              children: [
                Positioned(
                  top: 40.0,
                  left: 40.0,
                  child: CircleAvatar(
                    radius: 13,
                    backgroundColor: Color(0xFF4F5052),
                    child: Icon(
                      Icons.flag,
                      size: 18,
                      color: Colors.orange,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      SizedBox(
        height: 5,
      ),
      Container(
        width: 70,
        child: Text(
          text,
          style: TextStyle(fontSize: 12),
          textAlign: TextAlign.center,
        ),
      ),
    ],
  );
}
