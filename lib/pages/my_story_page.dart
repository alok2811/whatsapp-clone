
import 'package:flutter/material.dart';
import 'package:story_view/story_view.dart';
class MyStoryView extends StatelessWidget {
   MyStoryView({Key? key}) : super(key: key);
  final storyController = StoryController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: StoryView(
        storyItems: [
          //The StoryItem.text accepts a text, you can add any text you want
          StoryItem.text(title: '"WOW !!! i built my first status story",', backgroundColor: Colors.red,),
          StoryItem.pageImage(url: "https://i.pinimg.com/originals/f6/eb/53/f6eb535411056b553dfdec1665387c0c.jpg", controller: storyController, caption: "Simply beautiful😘😘😘"),
          StoryItem.pageImage(url: "https://i0.pickpik.com/photos/836/957/310/adventure-jump-hipster-ext-preview.jpg", controller: storyController, caption: "Jumping beside cliff during daytime"),
          StoryItem.pageImage(url: "http://s3.weddbook.com/t4/2/5/0/2501568/vanila-wedding-boutique-dubai-on-instagram-have-a-lovely-weekend-everyone-let-it-be-sunny-throughout-the-upcoming-days-to-enjoy-the-beach-and-the-sea-our-lovely-vanila-bride.jpg", controller: storyController, caption: "Vanila Wedding Boutique Dubai"),
        ],
        controller: storyController,
        onStoryShow: (s) {
          print("Showing a story");
        },
        onComplete: () {
          print("Completed a cycle");
          Navigator.pop(context);
        },
        progressPosition: ProgressPosition.top,
        repeat: false,

      )
    );
  }
}
