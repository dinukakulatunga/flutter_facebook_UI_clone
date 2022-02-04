import 'package:flutter/material.dart';
import 'package:story_view/controller/story_controller.dart';
import 'package:story_view/story_view.dart';
import 'package:story_view/widgets/story_view.dart';

class StoryPage extends StatefulWidget {
  final url;

  const StoryPage({Key? key, @required this.url}) : super(key: key);

  @override
  _StoryPageState createState() => _StoryPageState(this.url);
}

class _StoryPageState extends State<StoryPage> {
  final url;

  final _controller = StoryController();

  _StoryPageState(this.url);

  @override
  Widget build(BuildContext context) {
    final List<StoryItem> storyItems = [
      StoryItem.pageImage(url: url, controller: _controller),
    ];
    return Material(
      child: StoryView(
        storyItems: storyItems,
        controller: _controller,
        onVerticalSwipeComplete: (direction) {
          if (direction == Direction.down) {
            Navigator.pop(context);
          }
        },
        onComplete: () => Navigator.pop(context),
        inline: false,
        repeat: false,
      ),
    );
  }
}
